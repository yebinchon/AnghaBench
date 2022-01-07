
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_int8_t ;
struct universe {int * hash; } ;
struct option_data {char* data; unsigned int len; } ;
struct option {char* format; size_t code; } ;
struct iaddr {unsigned int len; char* iabuf; } ;
typedef int hunkbuf ;
typedef int FILE ;


 int COMMA ;
 int DOT ;
 int NUMBER ;
 int SEMI ;
 int STRING ;
 int convert_num (char*,char*,int ,int) ;
 struct universe dhcp_universe ;
 int error (char*) ;
 int free (char*) ;
 scalar_t__ hash_lookup (int *,unsigned char*,int ) ;
 int is_identifier (int) ;
 char* malloc (unsigned int) ;
 int memcpy (char*,char*,unsigned int) ;
 int next_token (char**,int *) ;
 unsigned int parse_X (int *,char*,int) ;
 int parse_ip_addr (int *,struct iaddr*) ;
 int parse_warn (char*,...) ;
 int peek_token (char**,int *) ;
 int skip_to_semi (int *) ;
 int strcasecmp (char*,char*) ;
 char* strdup (char*) ;
 unsigned int strlen (char*) ;
 int universe_hash ;
 int warning (char*,char const) ;

struct option *
parse_option_decl(FILE *cfile, struct option_data *options)
{
 char *val;
 int token;
 u_int8_t buf[4];
 u_int8_t hunkbuf[1024];
 unsigned hunkix = 0;
 char *vendor;
 const char *fmt;
 struct universe *universe;
 struct option *option;
 struct iaddr ip_addr;
 u_int8_t *dp;
 unsigned len;
 int nul_term = 0;

 token = next_token(&val, cfile);
 if (!is_identifier(token)) {
  parse_warn("expecting identifier after option keyword.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (((void*)0));
 }
 if ((vendor = strdup(val)) == ((void*)0))
  error("no memory for vendor information.");

 token = peek_token(&val, cfile);
 if (token == DOT) {

  token = next_token(&val, cfile);


  token = next_token(&val, cfile);
  if (!is_identifier(token)) {
   parse_warn("expecting identifier after '.'");
   if (token != SEMI)
    skip_to_semi(cfile);
   free(vendor);
   return (((void*)0));
  }



  universe = ((struct universe *)hash_lookup(&universe_hash,
      (unsigned char *)vendor, 0));


  if (!universe) {
   parse_warn("no vendor named %s.", vendor);
   skip_to_semi(cfile);
   free(vendor);
   return (((void*)0));
  }
 } else {


  val = vendor;
  universe = &dhcp_universe;
 }


 option = (struct option *)hash_lookup(universe->hash,
     (unsigned char *)val, 0);


 if (!option) {
  if (val == vendor)
   parse_warn("no option named %s", val);
  else
   parse_warn("no option named %s for vendor %s",
        val, vendor);
  skip_to_semi(cfile);
  free(vendor);
  return (((void*)0));
 }


 free(vendor);


 do {
  for (fmt = option->format; *fmt; fmt++) {
   if (*fmt == 'A')
    break;
   switch (*fmt) {
   case 'X':
    len = parse_X(cfile, &hunkbuf[hunkix],
        sizeof(hunkbuf) - hunkix);
    hunkix += len;
    break;
   case 't':
    token = next_token(&val, cfile);
    if (token != STRING) {
     parse_warn("expecting string.");
     skip_to_semi(cfile);
     return (((void*)0));
    }
    len = strlen(val);
    if (hunkix + len + 1 > sizeof(hunkbuf)) {
     parse_warn("option data buffer %s",
         "overflow");
     skip_to_semi(cfile);
     return (((void*)0));
    }
    memcpy(&hunkbuf[hunkix], val, len + 1);
    nul_term = 1;
    hunkix += len;
    break;
   case 'I':
    if (!parse_ip_addr(cfile, &ip_addr))
     return (((void*)0));
    len = ip_addr.len;
    dp = ip_addr.iabuf;
alloc:
    if (hunkix + len > sizeof(hunkbuf)) {
     parse_warn("option data buffer "
         "overflow");
     skip_to_semi(cfile);
     return (((void*)0));
    }
    memcpy(&hunkbuf[hunkix], dp, len);
    hunkix += len;
    break;
   case 'L':
   case 'l':
    token = next_token(&val, cfile);
    if (token != NUMBER) {
need_number:
     parse_warn("expecting number.");
     if (token != SEMI)
      skip_to_semi(cfile);
     return (((void*)0));
    }
    convert_num(buf, val, 0, 32);
    len = 4;
    dp = buf;
    goto alloc;
   case 's':
   case 'S':
    token = next_token(&val, cfile);
    if (token != NUMBER)
     goto need_number;
    convert_num(buf, val, 0, 16);
    len = 2;
    dp = buf;
    goto alloc;
   case 'b':
   case 'B':
    token = next_token(&val, cfile);
    if (token != NUMBER)
     goto need_number;
    convert_num(buf, val, 0, 8);
    len = 1;
    dp = buf;
    goto alloc;
   case 'f':
    token = next_token(&val, cfile);
    if (!is_identifier(token)) {
     parse_warn("expecting identifier.");
bad_flag:
     if (token != SEMI)
      skip_to_semi(cfile);
     return (((void*)0));
    }
    if (!strcasecmp(val, "true") ||
        !strcasecmp(val, "on"))
     buf[0] = 1;
    else if (!strcasecmp(val, "false") ||
        !strcasecmp(val, "off"))
     buf[0] = 0;
    else {
     parse_warn("expecting boolean.");
     goto bad_flag;
    }
    len = 1;
    dp = buf;
    goto alloc;
   default:
    warning("Bad format %c in parse_option_param.",
        *fmt);
    skip_to_semi(cfile);
    return (((void*)0));
   }
  }
  token = next_token(&val, cfile);
 } while (*fmt == 'A' && token == COMMA);

 if (token != SEMI) {
  parse_warn("semicolon expected.");
  skip_to_semi(cfile);
  return (((void*)0));
 }

 options[option->code].data = malloc(hunkix + nul_term);
 if (!options[option->code].data)
  error("out of memory allocating option data.");
 memcpy(options[option->code].data, hunkbuf, hunkix + nul_term);
 options[option->code].len = hunkix;
 return (option);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int errmsg; } ;
typedef int FILE ;


 int ERRSIZE ;
 int MAXCONFLINE ;
 char* PATH_TACPLUS_CONF ;
 int TAC_SRVR_SINGLE_CONNECT ;
 unsigned long TIMEOUT ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int generr (struct tac_handle*,char*,char const*,int,...) ;
 int memset (char*,int ,int) ;
 int split (char*,char**,int,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,int ) ;
 int strerror (int ) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 void* strtoul (char*,char**,int) ;
 int tac_add_server (struct tac_handle*,char*,int,char*,unsigned long,int) ;

int
tac_config(struct tac_handle *h, const char *path)
{
 FILE *fp;
 char buf[MAXCONFLINE];
 int linenum;
 int retval;

 if (path == ((void*)0))
  path = PATH_TACPLUS_CONF;
 if ((fp = fopen(path, "r")) == ((void*)0)) {
  generr(h, "Cannot open \"%s\": %s", path, strerror(errno));
  return -1;
 }
 retval = 0;
 linenum = 0;
 while (fgets(buf, sizeof buf, fp) != ((void*)0)) {
  int len;
  char *fields[4];
  int nfields;
  char msg[ERRSIZE];
  char *host, *res;
  char *port_str;
  char *secret;
  char *timeout_str;
  char *options_str;
  char *end;
  unsigned long timeout;
  int port;
  int options;

  linenum++;
  len = strlen(buf);

  if (buf[len - 1] != '\n') {
   if (len >= sizeof buf - 1)
    generr(h, "%s:%d: line too long", path,
        linenum);
   else
    generr(h, "%s:%d: missing newline", path,
        linenum);
   retval = -1;
   break;
  }
  buf[len - 1] = '\0';


  nfields = split(buf, fields, 4, msg, sizeof msg);
  if (nfields == -1) {
   generr(h, "%s:%d: %s", path, linenum, msg);
   retval = -1;
   break;
  }
  if (nfields == 0)
   continue;
  if (nfields < 2) {
   generr(h, "%s:%d: missing shared secret", path,
       linenum);
   retval = -1;
   break;
  }
  host = fields[0];
  secret = fields[1];
  timeout_str = fields[2];
  options_str = fields[3];


  res = host;
  host = strsep(&res, ":");
  port_str = strsep(&res, ":");
  if (port_str != ((void*)0)) {
   port = strtoul(port_str, &end, 10);
   if (port_str[0] == '\0' || *end != '\0') {
    generr(h, "%s:%d: invalid port", path,
        linenum);
    retval = -1;
    break;
   }
  } else
   port = 0;
  if (timeout_str != ((void*)0)) {
   timeout = strtoul(timeout_str, &end, 10);
   if (timeout_str[0] == '\0' || *end != '\0') {
    generr(h, "%s:%d: invalid timeout", path,
        linenum);
    retval = -1;
    break;
   }
  } else
   timeout = TIMEOUT;
  options = 0;
  if (options_str != ((void*)0)) {
   if (strcmp(options_str, "single-connection") == 0)
    options |= TAC_SRVR_SINGLE_CONNECT;
   else {
    generr(h, "%s:%d: invalid option \"%s\"",
        path, linenum, options_str);
    retval = -1;
    break;
   }
  };

  if (tac_add_server(h, host, port, secret, timeout,
      options) == -1) {
   char msg[ERRSIZE];

   strcpy(msg, h->errmsg);
   generr(h, "%s:%d: %s", path, linenum, msg);
   retval = -1;
   break;
  }
 }

 memset(buf, 0, sizeof buf);
 fclose(fp);
 return retval;
}

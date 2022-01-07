
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface_info {int dummy; } ;
struct client_lease {int is_bootp; int options; void* expiry; void* rebind; void* renewal; void* server_name; int nextserver; void* filename; int medium; int address; } ;
typedef int FILE ;
 int SEMI ;

 int STRING ;
 struct interface_info* interface_or_dummy (char*) ;
 int next_token (char**,int *) ;
 void* parse_date (int *) ;
 int parse_ip_addr (int *,int *) ;
 int parse_option_decl (int *,int ) ;
 void* parse_string (int *) ;
 int parse_string_list (int *,int *,int ) ;
 int parse_warn (char*) ;
 int skip_to_semi (int *) ;

void
parse_client_lease_declaration(FILE *cfile, struct client_lease *lease,
    struct interface_info **ipp)
{
 int token;
 char *val;
 struct interface_info *ip;

 switch (next_token(&val, cfile)) {
 case 138:
  lease->is_bootp = 1;
  break;
 case 134:
  token = next_token(&val, cfile);
  if (token != STRING) {
   parse_warn("expecting interface name (in quotes).");
   skip_to_semi(cfile);
   break;
  }
  ip = interface_or_dummy(val);
  *ipp = ip;
  break;
 case 135:
  if (!parse_ip_addr(cfile, &lease->address))
   return;
  break;
 case 133:
  parse_string_list(cfile, &lease->medium, 0);
  return;
 case 136:
  lease->filename = parse_string(cfile);
  return;
 case 132:
  if (!parse_ip_addr(cfile, &lease->nextserver))
   return;
  break;
 case 128:
  lease->server_name = parse_string(cfile);
  return;
 case 129:
  lease->renewal = parse_date(cfile);
  return;
 case 130:
  lease->rebind = parse_date(cfile);
  return;
 case 137:
  lease->expiry = parse_date(cfile);
  return;
 case 131:
  parse_option_decl(cfile, lease->options);
  return;
 default:
  parse_warn("expecting lease declaration.");
  skip_to_semi(cfile);
  break;
 }
 token = next_token(&val, cfile);
 if (token != SEMI) {
  parse_warn("expecting semicolon.");
  skip_to_semi(cfile);
 }
}

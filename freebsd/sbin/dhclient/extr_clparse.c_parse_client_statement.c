
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {size_t code; } ;
struct interface_info {int hw_address; } ;
struct client_config {int script_name; int initial_interval; int backoff_cutoff; int reboot_timeout; int select_interval; int retry_interval; int timeout; int required_options; int requested_options; int requested_option_count; int media; int * default_actions; int * defaults; int * send_options; } ;
typedef int FILE ;


 int ACTION_APPEND ;
 int ACTION_DEFAULT ;
 int ACTION_PREPEND ;
 int ACTION_SUPERSEDE ;
 int SEMI ;



 int memset (int ,int ,int) ;
 int next_token (char**,int *) ;
 int parse_client_lease_statement (int *,int) ;
 int parse_hardware_param (int *,int *) ;
 int parse_interface_declaration (int *,struct client_config*) ;
 int parse_lease_time (int *,int *) ;
 struct option* parse_option_decl (int *,int *) ;
 int parse_option_list (int *,int ) ;
 int parse_reject_statement (int *,struct client_config*) ;
 int parse_string (int *) ;
 int parse_string_list (int *,int *,int) ;
 int parse_warn (char*,...) ;
 int skip_to_semi (int *) ;

void
parse_client_statement(FILE *cfile, struct interface_info *ip,
    struct client_config *config)
{
 int token;
 char *val;
 struct option *option;

 switch (next_token(&val, cfile)) {
 case 130:
  parse_option_decl(cfile, &config->send_options[0]);
  return;
 case 144:
  option = parse_option_decl(cfile, &config->defaults[0]);
  if (option)
   config->default_actions[option->code] = ACTION_DEFAULT;
  return;
 case 129:
  option = parse_option_decl(cfile, &config->defaults[0]);
  if (option)
   config->default_actions[option->code] =
       ACTION_SUPERSEDE;
  return;
 case 146:
  option = parse_option_decl(cfile, &config->defaults[0]);
  if (option)
   config->default_actions[option->code] = ACTION_APPEND;
  return;
 case 138:
  option = parse_option_decl(cfile, &config->defaults[0]);
  if (option)
   config->default_actions[option->code] = ACTION_PREPEND;
  return;
 case 139:
  parse_string_list(cfile, &config->media, 1);
  return;
 case 143:
  if (ip)
   parse_hardware_param(cfile, &ip->hw_address);
  else {
   parse_warn("hardware address parameter %s",
        "not allowed here.");
   skip_to_semi(cfile);
  }
  return;
 case 135:
  config->requested_option_count =
   parse_option_list(cfile, config->requested_options);
  return;
 case 134:
  memset(config->required_options, 0,
      sizeof(config->required_options));
  parse_option_list(cfile, config->required_options);
  return;
 case 128:
  parse_lease_time(cfile, &config->timeout);
  return;
 case 133:
  parse_lease_time(cfile, &config->retry_interval);
  return;
 case 131:
  parse_lease_time(cfile, &config->select_interval);
  return;
 case 137:
  parse_lease_time(cfile, &config->reboot_timeout);
  return;
 case 145:
  parse_lease_time(cfile, &config->backoff_cutoff);
  return;
 case 142:
  parse_lease_time(cfile, &config->initial_interval);
  return;
 case 132:
  config->script_name = parse_string(cfile);
  return;
 case 141:
  if (ip)
   parse_warn("nested interface declaration.");
  parse_interface_declaration(cfile, config);
  return;
 case 140:
  parse_client_lease_statement(cfile, 1);
  return;
 case 147:
  parse_client_lease_statement(cfile, 2);
  return;
 case 136:
  parse_reject_statement(cfile, config);
  return;
 default:
  parse_warn("expecting a statement.");
  skip_to_semi(cfile);
  break;
 }
 token = next_token(&val, cfile);
 if (token != SEMI) {
  parse_warn("semicolon expected.");
  skip_to_semi(cfile);
 }
}

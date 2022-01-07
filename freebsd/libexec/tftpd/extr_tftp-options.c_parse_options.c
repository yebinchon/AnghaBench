
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {char* o_request; int * o_type; scalar_t__ (* o_handler ) (int) ;int rfc; } ;


 int DEBUG_OPTIONS ;
 int LOG_DEBUG ;
 int LOG_INFO ;
 int LOG_WARNING ;
 int acting_as_client ;
 int debug ;
 int get_field (int,char*,int ) ;
 scalar_t__ isupper (char) ;
 TYPE_1__* options ;
 int options_extra_enabled ;
 int options_rfc_enabled ;
 scalar_t__ strcmp (char*,int *) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ stub1 (int) ;
 int tftp_log (int ,char*,char*,...) ;
 char tolower (char) ;

int
parse_options(int peer, char *buffer, uint16_t size)
{
 int i, options_failed;
 char *c, *cp, *option, *value;

 if (!options_rfc_enabled) return (0);


 cp = buffer;
 options_failed = 0;
 while (size > 0) {
  option = cp;
  i = get_field(peer, cp, size);
  cp += i;

  value = cp;
  i = get_field(peer, cp, size);
  cp += i;


  if (*option == '\0') break;

  if (debug&DEBUG_OPTIONS)
   tftp_log(LOG_DEBUG,
       "option: '%s' value: '%s'", option, value);

  for (c = option; *c; c++)
   if (isupper(*c))
    *c = tolower(*c);
  for (i = 0; options[i].o_type != ((void*)0); i++) {
   if (strcmp(option, options[i].o_type) == 0) {
    if (!acting_as_client)
     options[i].o_request = value;
    if (!options_extra_enabled && !options[i].rfc) {
     tftp_log(LOG_INFO,
         "Option '%s' with value '%s' found "
         "but it is not an RFC option",
         option, value);
     continue;
    }
    if (options[i].o_handler)
     options_failed +=
         (options[i].o_handler)(peer);
    break;
   }
  }
  if (options[i].o_type == ((void*)0))
   tftp_log(LOG_WARNING,
       "Unknown option: '%s'", option);

  size -= strlen(option) + strlen(value) + 2;
 }

 return (options_failed);
}

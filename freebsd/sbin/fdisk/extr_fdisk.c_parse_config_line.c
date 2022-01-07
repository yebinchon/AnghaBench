
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t n_args; TYPE_1__* args; int cmd; } ;
struct TYPE_5__ {int * arg_str; int arg_val; int argtype; } ;
typedef TYPE_2__ CMD ;


 scalar_t__ isalpha (char) ;
 scalar_t__ isspace (char) ;
 int memset (TYPE_2__*,int ,int) ;
 int * strdup (char*) ;
 int strtoul (char*,char**,int ) ;

__attribute__((used)) static void
parse_config_line(char *line, CMD *command)
{
    char *cp, *end;

    cp = line;
    while (1) {
 memset(command, 0, sizeof(*command));

 while (isspace(*cp)) ++cp;
 if (*cp == '\0' || *cp == '#')
     break;
 command->cmd = *cp++;




     while (1) {
     while (isspace(*cp)) ++cp;
     if (*cp == '\0')
  break;
     if (*cp == '#')
  break;
     if (isalpha(*cp))
  command->args[command->n_args].argtype = *cp++;
     end = ((void*)0);
     command->args[command->n_args].arg_val = strtoul(cp, &end, 0);
      if (cp == end || (!isspace(*end) && *end != '\0')) {
   char ch;
   end = cp;
   while (!isspace(*end) && *end != '\0') ++end;
   ch = *end; *end = '\0';
   command->args[command->n_args].arg_str = strdup(cp);
   *end = ch;
      } else
   command->args[command->n_args].arg_str = ((void*)0);
     cp = end;
     command->n_args++;
 }
 break;
    }
}

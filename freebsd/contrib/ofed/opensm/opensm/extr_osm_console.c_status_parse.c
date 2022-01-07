
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int osm_opensm_t ;
struct TYPE_2__ {int on; int (* loop_function ) (int *,int *) ;int previous; } ;
typedef int FILE ;


 int fflush (int *) ;
 int fprintf (int *,char*) ;
 int help_status (int *,int) ;
 TYPE_1__ loop_command ;
 char* next_token (char**) ;
 int print_status (int *,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int time (int *) ;

__attribute__((used)) static void status_parse(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
 char *p_cmd;

 p_cmd = next_token(p_last);
 if (p_cmd) {
  if (strcmp(p_cmd, "loop") == 0) {
   fprintf(out, "Looping on status command...\n");
   fflush(out);
   loop_command.on = 1;
   loop_command.previous = time(((void*)0));
   loop_command.loop_function = print_status;
  } else {
   help_status(out, 1);
   return;
  }
 }
 print_status(p_osm, out);
}

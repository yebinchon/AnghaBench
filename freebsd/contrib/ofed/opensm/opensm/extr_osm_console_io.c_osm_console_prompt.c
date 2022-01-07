
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* OSM_COMMAND_PROMPT ;
 int fflush (int *) ;
 int fprintf (int *,char*,char*) ;

void osm_console_prompt(FILE * out)
{
 if (out) {
  fprintf(out, "OpenSM %s", OSM_COMMAND_PROMPT);
  fflush(out);
 }
}

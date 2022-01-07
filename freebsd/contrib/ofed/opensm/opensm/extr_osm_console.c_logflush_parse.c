
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flush; int out_port; } ;
struct TYPE_5__ {TYPE_1__ log; } ;
typedef TYPE_2__ osm_opensm_t ;
typedef int FILE ;


 int FALSE ;
 int TRUE ;
 int fflush (int ) ;
 int fprintf (int *,char*) ;
 int help_sweep (int *,int) ;
 char* next_token (char**) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void logflush_parse(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
 char *p_cmd;

 p_cmd = next_token(p_last);
 if (!p_cmd ||
     (strcmp(p_cmd, "on") != 0 && strcmp(p_cmd, "off") != 0)) {
  fprintf(out, "Invalid logflush command\n");
  help_sweep(out, 1);
 } else {
  if (strcmp(p_cmd, "on") == 0) {
   p_osm->log.flush = TRUE;
                 fflush(p_osm->log.out_port);
  } else
   p_osm->log.flush = FALSE;
 }
}

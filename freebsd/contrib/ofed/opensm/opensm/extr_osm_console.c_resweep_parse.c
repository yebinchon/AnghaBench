
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int force_heavy_sweep; } ;
struct TYPE_6__ {TYPE_1__ subn; } ;
typedef TYPE_2__ osm_opensm_t ;
typedef int FILE ;


 int TRUE ;
 int fprintf (int *,char*) ;
 int help_resweep (int *,int) ;
 char* next_token (char**) ;
 int osm_opensm_sweep (TYPE_2__*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void resweep_parse(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
 char *p_cmd;

 p_cmd = next_token(p_last);
 if (!p_cmd ||
     (strcmp(p_cmd, "heavy") != 0 && strcmp(p_cmd, "light") != 0)) {
  fprintf(out, "Invalid resweep command\n");
  help_resweep(out, 1);
 } else {
  if (strcmp(p_cmd, "heavy") == 0)
   p_osm->subn.force_heavy_sweep = TRUE;
  osm_opensm_sweep(p_osm);
 }
}

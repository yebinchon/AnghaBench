
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int sm_priority; } ;
struct TYPE_5__ {TYPE_2__ opt; } ;
struct TYPE_7__ {int sm; TYPE_1__ subn; } ;
typedef TYPE_3__ osm_opensm_t ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;
 char* next_token (char**) ;
 int osm_set_sm_priority (int *,int ) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static void priority_parse(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
 char *p_cmd;
 int priority;

 p_cmd = next_token(p_last);
 if (!p_cmd)
  fprintf(out, "Current sm-priority is %d\n",
   p_osm->subn.opt.sm_priority);
 else {
  priority = strtol(p_cmd, ((void*)0), 0);
  if (0 > priority || 15 < priority)
   fprintf(out,
    "Invalid sm-priority %d; must be between 0 and 15\n",
    priority);
  else {
   fprintf(out, "Setting sm-priority to %d\n", priority);
   osm_set_sm_priority(&p_osm->sm, (uint8_t)priority);
  }
 }
}

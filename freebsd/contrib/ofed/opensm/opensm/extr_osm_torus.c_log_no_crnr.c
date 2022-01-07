
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct torus {TYPE_1__* osm; scalar_t__ debug; } ;
struct TYPE_2__ {int log; } ;


 int OSM_LOG (int *,int ,char*,unsigned int,int,int,int,int,int,int) ;
 int OSM_LOG_INFO ;

__attribute__((used)) static
void log_no_crnr(struct torus *t, unsigned n,
   int case_i, int case_j, int case_k,
   int crnr_i, int crnr_j, int crnr_k)
{
 if (t->debug)
  OSM_LOG(&t->osm->log, OSM_LOG_INFO, "Case 0x%03x "
   "@ %d %d %d: no corner @ %d %d %d\n",
   n, case_i, case_j, case_k, crnr_i, crnr_j, crnr_k);
}

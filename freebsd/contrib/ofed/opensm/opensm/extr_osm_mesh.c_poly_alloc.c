
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int osm_log_t ;
struct TYPE_5__ {TYPE_1__* p_osm; } ;
typedef TYPE_2__ lash_t ;
struct TYPE_4__ {int log; } ;


 int OSM_LOG (int *,int ,char*) ;
 int OSM_LOG_ERROR ;
 int* calloc (int,int) ;

__attribute__((used)) static int *poly_alloc(lash_t *p_lash, int n)
{
 osm_log_t *p_log = &p_lash->p_osm->log;
 int *p;

 if (!(p = calloc(n+1, sizeof(int))))
  OSM_LOG(p_log, OSM_LOG_ERROR,
   "Failed allocating poly - out of memory\n");

 return p;
}

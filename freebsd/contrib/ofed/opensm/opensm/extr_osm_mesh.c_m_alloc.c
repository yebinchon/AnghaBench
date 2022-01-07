
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
 void* calloc (int,int) ;
 int m_free (int**,int) ;

__attribute__((used)) static int **m_alloc(lash_t *p_lash, int l)
{
 osm_log_t *p_log = &p_lash->p_osm->log;
 int i;
 int **m = ((void*)0);

 do {
  if (!(m = calloc(l, sizeof(int *))))
   break;

  for (i = 0; i < l; i++) {
   if (!(m[i] = calloc(l, sizeof(int))))
    break;
  }
  if (i != l)
   break;

  return m;
 } while (0);

 OSM_LOG(p_log, OSM_LOG_ERROR,
  "Failed allocating matrix - out of memory\n");

 m_free(m, l);
 return ((void*)0);
}

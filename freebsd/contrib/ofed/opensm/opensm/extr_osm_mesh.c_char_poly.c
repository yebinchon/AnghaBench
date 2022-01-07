
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int osm_log_t ;
struct TYPE_8__ {TYPE_1__* p_osm; } ;
typedef TYPE_2__ lash_t ;
struct TYPE_7__ {int log; } ;


 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_EXIT (int *) ;
 scalar_t__ determinant (TYPE_2__*,int,int,int***,int*) ;
 int free (int*) ;
 int*** pm_alloc (TYPE_2__*,int,int) ;
 int pm_free (int***,int) ;
 int* poly_alloc (TYPE_2__*,int) ;

__attribute__((used)) static int char_poly(lash_t *p_lash, int rank, int **matrix, int **poly)
{
 osm_log_t *p_log = &p_lash->p_osm->log;
 int ret = -1;
 int i, j;
 int ***m = ((void*)0);
 int *p = ((void*)0);
 int deg = rank;

 OSM_LOG_ENTER(p_log);

 do {
  if (!matrix)
   break;

  if (!(p = poly_alloc(p_lash, deg)))
   break;

  if (!(m = pm_alloc(p_lash, rank, deg))) {
   free(p);
   p = ((void*)0);
   break;
  }

  for (i = 0; i < rank; i++) {
   for (j = 0; j < rank; j++) {
    m[i][j][0] = matrix[i][j];
   }
   m[i][i][1] = -1;
  }

  if (determinant(p_lash, deg, rank, m, p)) {
   free(p);
   p = ((void*)0);
   break;
  }

  ret = 0;
 } while (0);

 pm_free(m, rank);
 *poly = p;

 OSM_LOG_EXIT(p_log);
 return ret;
}

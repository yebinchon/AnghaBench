
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int osm_opensm_t ;
struct TYPE_4__ {int * p_osm; } ;
typedef TYPE_1__ lash_t ;


 TYPE_1__* calloc (int,int) ;

__attribute__((used)) static lash_t *lash_create(osm_opensm_t * p_osm)
{
 lash_t *p_lash;

 p_lash = calloc(1, sizeof(lash_t));
 if (!p_lash)
  return ((void*)0);

 p_lash->p_osm = p_osm;

 return p_lash;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int spa_event_create (int *,int *,int *,char const*) ;
 int spa_event_post (int ) ;

void
spa_event_notify(spa_t *spa, vdev_t *vd, nvlist_t *hist_nvl, const char *name)
{
 spa_event_post(spa_event_create(spa, vd, hist_nvl, name));
}

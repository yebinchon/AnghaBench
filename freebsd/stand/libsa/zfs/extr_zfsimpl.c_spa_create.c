
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int spa_guid; int spa_vdevs; int * spa_name; } ;
typedef TYPE_1__ spa_t ;


 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int spa_link ;
 int * strdup (char const*) ;
 int zfs_pools ;

__attribute__((used)) static spa_t *
spa_create(uint64_t guid, const char *name)
{
 spa_t *spa;

 if ((spa = calloc(1, sizeof(spa_t))) == ((void*)0))
  return (((void*)0));
 if ((spa->spa_name = strdup(name)) == ((void*)0)) {
  free(spa);
  return (((void*)0));
 }
 STAILQ_INIT(&spa->spa_vdevs);
 spa->spa_guid = guid;
 STAILQ_INSERT_TAIL(&zfs_pools, spa, spa_link);

 return (spa);
}

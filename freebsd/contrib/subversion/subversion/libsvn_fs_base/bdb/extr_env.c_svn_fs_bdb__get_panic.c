
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_5__ {scalar_t__ env; TYPE_1__* bdb; } ;
typedef TYPE_2__ bdb_env_baton_t ;
struct TYPE_4__ {scalar_t__ env; int panic; } ;


 int TRUE ;
 int assert (int) ;
 int svn_atomic_read (int *) ;

svn_boolean_t
svn_fs_bdb__get_panic(bdb_env_baton_t *bdb_baton)
{


  if (!bdb_baton->bdb)
    return TRUE;

  assert(bdb_baton->env == bdb_baton->bdb->env);
  return !!svn_atomic_read(&bdb_baton->bdb->panic);
}

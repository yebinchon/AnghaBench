
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ with_lock_baton_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int with_some_lock_file (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
with_lock(void *baton,
          apr_pool_t *scratch_pool)
{
  with_lock_baton_t *lock_baton = baton;
  SVN_MUTEX__WITH_LOCK(lock_baton->mutex, with_some_lock_file(lock_baton));

  return SVN_NO_ERROR;
}

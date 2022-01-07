
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * next; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int ,int *,int ,int ) ;
 TYPE_1__ base_defn ;
 int common_pool ;
 int common_pool_lock ;
 int svn_mutex__init (int *,int ,int ) ;
 int svn_pool_create (int *) ;
 int uninit ;

__attribute__((used)) static svn_error_t *
synchronized_initialize(void *baton, apr_pool_t *pool)
{
  common_pool = svn_pool_create(pool);
  base_defn.next = ((void*)0);
  SVN_ERR(svn_mutex__init(&common_pool_lock, TRUE, common_pool));







  apr_pool_cleanup_register(common_pool, ((void*)0), uninit, apr_pool_cleanup_null);
  return SVN_NO_ERROR;
}

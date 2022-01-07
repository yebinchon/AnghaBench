
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int revision; } ;
typedef TYPE_1__ svn_log_entry_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_CEASE_INVOCATION ;
 int * svn_error_create (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
operative_rev_receiver(void *baton,
                       svn_log_entry_t *log_entry,
                       apr_pool_t *pool)
{
  svn_revnum_t *operative_rev = baton;

  *operative_rev = log_entry->revision;
  return svn_error_create(SVN_ERR_CEASE_INVOCATION, ((void*)0), ((void*)0));
}

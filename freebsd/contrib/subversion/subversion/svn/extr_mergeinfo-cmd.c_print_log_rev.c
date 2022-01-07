
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int revision; scalar_t__ non_inheritable; } ;
typedef TYPE_1__ svn_log_entry_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_cmdline_printf (int *,char*,int ) ;

__attribute__((used)) static svn_error_t *
print_log_rev(void *baton,
              svn_log_entry_t *log_entry,
              apr_pool_t *pool)
{
  if (log_entry->non_inheritable)
    SVN_ERR(svn_cmdline_printf(pool, "r%ld*\n", log_entry->revision));
  else
    SVN_ERR(svn_cmdline_printf(pool, "r%ld\n", log_entry->revision));

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int revision; int changed_paths2; int revprops; } ;
typedef TYPE_1__ svn_log_entry_t ;
typedef int svn_error_t ;
struct log_wrapper_baton {int baton; int * (* receiver ) (int ,int ,int ,char const*,char const*,char const*,int *) ;} ;
typedef int apr_pool_t ;


 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int * stub1 (int ,int ,int ,char const*,char const*,char const*,int *) ;
 int svn_compat_log_revprops_out (char const**,char const**,char const**,int ) ;

__attribute__((used)) static svn_error_t *
log_wrapper_callback(void *baton,
                     svn_log_entry_t *log_entry,
                     apr_pool_t *pool)
{
  struct log_wrapper_baton *lwb = baton;

  if (lwb->receiver && SVN_IS_VALID_REVNUM(log_entry->revision))
    {
      const char *author, *date, *message;
      svn_compat_log_revprops_out(&author, &date, &message,
                                  log_entry->revprops);
      return lwb->receiver(lwb->baton,
                           log_entry->changed_paths2,
                           log_entry->revision,
                           author, date, message,
                           pool);
    }

  return SVN_NO_ERROR;
}

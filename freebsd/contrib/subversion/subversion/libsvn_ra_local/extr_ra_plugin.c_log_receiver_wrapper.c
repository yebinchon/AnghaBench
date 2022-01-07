
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int callback_baton; TYPE_1__* callbacks; } ;
typedef TYPE_2__ svn_ra_local__session_baton_t ;
struct TYPE_8__ {int * changed_paths2; int * changed_paths; } ;
typedef TYPE_3__ svn_log_entry_t ;
typedef int svn_error_t ;
struct log_baton {int real_baton; int * (* real_cb ) (int ,TYPE_3__*,int *) ;TYPE_2__* sess; } ;
typedef int apr_pool_t ;
struct TYPE_6__ {int (* cancel_func ) (int ) ;} ;


 int SVN_ERR (int ) ;
 scalar_t__ apr_hash_count (int *) ;
 int stub1 (int ) ;
 int * stub2 (int ,TYPE_3__*,int *) ;

__attribute__((used)) static svn_error_t *
log_receiver_wrapper(void *baton,
                     svn_log_entry_t *log_entry,
                     apr_pool_t *pool)
{
  struct log_baton *b = baton;
  svn_ra_local__session_baton_t *sess = b->sess;

  if (sess->callbacks->cancel_func)
    SVN_ERR((sess->callbacks->cancel_func)(sess->callback_baton));





  if ((log_entry->changed_paths2)
      && (apr_hash_count(log_entry->changed_paths2) == 0))
    {
      log_entry->changed_paths = ((void*)0);
      log_entry->changed_paths2 = ((void*)0);
    }

  return b->real_cb(b->real_baton, log_entry, pool);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int revision; int changed_paths2; } ;
typedef TYPE_1__ svn_log_entry_t ;
typedef int svn_error_t ;
struct gls_log_receiver_baton {char* last_path; int range_end; int pool; int receiver_baton; int receiver; int start_rev; scalar_t__ done; int kind; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 char* apr_pstrdup (int ,char const*) ;
 int * maybe_crop_and_send_segment (char const*,int ,int,int,int ,int ,int *) ;
 int * prev_log_path (char const**,int *,int*,int ,char const*,int ,int,int *) ;

__attribute__((used)) static svn_error_t *
gls_log_receiver(void *baton,
                 svn_log_entry_t *log_entry,
                 apr_pool_t *pool)
{
  struct gls_log_receiver_baton *lrb = baton;
  const char *current_path = lrb->last_path;
  const char *prev_path;
  svn_revnum_t copyfrom_rev;


  if (lrb->done)
    return SVN_NO_ERROR;




  SVN_ERR(prev_log_path(&prev_path, ((void*)0), &copyfrom_rev,
                        log_entry->changed_paths2, current_path,
                        lrb->kind, log_entry->revision, pool));



  if (! prev_path)
    {
      lrb->done = TRUE;
      return maybe_crop_and_send_segment(current_path, lrb->start_rev,
                                         log_entry->revision, lrb->range_end,
                                         lrb->receiver, lrb->receiver_baton,
                                         pool);
    }


  if (SVN_IS_VALID_REVNUM(copyfrom_rev))
    {


      SVN_ERR(maybe_crop_and_send_segment(current_path, lrb->start_rev,
                                          log_entry->revision, lrb->range_end,
                                          lrb->receiver, lrb->receiver_baton,
                                          pool));
      lrb->range_end = log_entry->revision - 1;


      if (log_entry->revision - copyfrom_rev > 1)
        {
          SVN_ERR(maybe_crop_and_send_segment(((void*)0), lrb->start_rev,
                                              copyfrom_rev + 1, lrb->range_end,
                                              lrb->receiver,
                                              lrb->receiver_baton, pool));
          lrb->range_end = copyfrom_rev;
        }


      lrb->last_path = apr_pstrdup(lrb->pool, prev_path);
    }

  return SVN_NO_ERROR;
}

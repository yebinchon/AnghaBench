
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ revision; scalar_t__ has_children; scalar_t__ changed_paths2; int revprops; } ;
typedef TYPE_2__ svn_log_entry_t ;
typedef int svn_error_t ;
struct log_receiver_baton {int message_lines; int merged_message_lines; unsigned int changes; unsigned int merged_changes; int merges; scalar_t__ merge_depth; int merged_revs; int revisions; scalar_t__ quiet; TYPE_1__* ctx; } ;
typedef int apr_pool_t ;
struct TYPE_4__ {int cancel_baton; int (* cancel_func ) (int ) ;} ;


 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 unsigned int apr_hash_count (scalar_t__) ;
 int stub1 (int ) ;
 int svn_compat_log_revprops_out (char const**,char const**,char const**,int ) ;
 int svn_cstring_count_newlines (char const*) ;

__attribute__((used)) static svn_error_t *
log_entry_receiver(void *baton,
                   svn_log_entry_t *log_entry,
                   apr_pool_t *pool)
{
  struct log_receiver_baton *lb = baton;
  const char *author;
  const char *date;
  const char *message;

  if (lb->ctx->cancel_func)
    SVN_ERR(lb->ctx->cancel_func(lb->ctx->cancel_baton));

  if (! SVN_IS_VALID_REVNUM(log_entry->revision))
    {
      lb->merge_depth--;
      return SVN_NO_ERROR;
    }


  if (lb->quiet)
    return SVN_NO_ERROR;


  svn_compat_log_revprops_out(&author, &date, &message, log_entry->revprops);
  if (log_entry->revision == 0 && message == ((void*)0))
    return SVN_NO_ERROR;

  lb->revisions++;
  if (lb->merge_depth)
    lb->merged_revs++;

  if (message != ((void*)0))
    {
      int count = svn_cstring_count_newlines(message) + 1;
      lb->message_lines += count;
      if (lb->merge_depth)
        lb->merged_message_lines += count;
    }

  if (log_entry->changed_paths2)
    {
      unsigned count = apr_hash_count(log_entry->changed_paths2);
      lb->changes += count;
      if (lb->merge_depth)
        lb->merged_changes += count;
    }

  if (log_entry->has_children)
    {
      lb->merge_depth++;
      lb->merges++;
    }

  return SVN_NO_ERROR;
}

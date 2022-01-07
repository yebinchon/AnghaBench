
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct file_rev_baton {int * currpool; int * lastpool; int last_filename; int * filepool; int last_original_filename; int * prevfilepool; TYPE_1__* ctx; int diff_options; struct blame_chain* chain; scalar_t__ include_merged_revisions; struct blame_chain* merged_chain; } ;
struct delta_baton {int filename; int rev; int is_merged_revision; scalar_t__ source_stream; struct file_rev_baton* file_rev_baton; } ;
struct blame_chain {int dummy; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int cancel_baton; int cancel_func; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int add_file_blame (int ,int ,struct blame_chain*,int ,int ,int ,int ,int *) ;
 int apr_pstrdup (int *,int ) ;
 int svn_pool_clear (int *) ;
 int svn_stream_close (scalar_t__) ;

__attribute__((used)) static svn_error_t *
update_blame(void *baton)
{
  struct delta_baton *dbaton = baton;
  struct file_rev_baton *frb = dbaton->file_rev_baton;
  struct blame_chain *chain;





  if (dbaton->source_stream)
    SVN_ERR(svn_stream_close(dbaton->source_stream));



  if (frb->include_merged_revisions)
    chain = frb->merged_chain;
  else
    chain = frb->chain;


  SVN_ERR(add_file_blame(frb->last_filename,
                         dbaton->filename, chain, dbaton->rev,
                         frb->diff_options,
                         frb->ctx->cancel_func, frb->ctx->cancel_baton,
                         frb->currpool));




  if (frb->include_merged_revisions && ! dbaton->is_merged_revision)
    {
      apr_pool_t *tmppool;

      SVN_ERR(add_file_blame(frb->last_original_filename,
                             dbaton->filename, frb->chain, dbaton->rev,
                             frb->diff_options,
                             frb->ctx->cancel_func, frb->ctx->cancel_baton,
                             frb->currpool));



      svn_pool_clear(frb->prevfilepool);
      tmppool = frb->filepool;
      frb->filepool = frb->prevfilepool;
      frb->prevfilepool = tmppool;

      frb->last_original_filename = apr_pstrdup(frb->filepool,
                                                dbaton->filename);
    }




  frb->last_filename = dbaton->filename;


  {
    apr_pool_t *tmp_pool = frb->lastpool;
    frb->lastpool = frb->currpool;
    frb->currpool = tmp_pool;
  }

  return SVN_NO_ERROR;
}

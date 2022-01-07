
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int parents; } ;
typedef TYPE_2__ svn_branch__history_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int *,char*) ;
 int sscanf (int ,char*,int*,...) ;
 TYPE_2__* svn_branch__history_create_empty (int *) ;
 int svn_branch__rev_bid_create (int ,char*,int *) ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_stream_readline (int *,TYPE_1__**,char*,int *,int *) ;

__attribute__((used)) static svn_error_t *
history_parse(svn_branch__history_t **history_p,
              svn_stream_t *stream,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  svn_branch__history_t *history
    = svn_branch__history_create_empty(result_pool);
  svn_stringbuf_t *line;
  svn_boolean_t eof;
  int n;
  int num_parents;
  int i;


  SVN_ERR(svn_stream_readline(stream, &line, "\n", &eof, scratch_pool));
  SVN_ERR_ASSERT(!eof);

  n = sscanf(line->data, "history: parents %d",
             &num_parents);
  SVN_ERR_ASSERT(n == 1);

  for (i = 0; i < num_parents; i++)
    {
      svn_revnum_t rev;
      char bid[100];

      SVN_ERR(svn_stream_readline(stream, &line, "\n", &eof, scratch_pool));
      SVN_ERR_ASSERT(!eof);

      n = sscanf(line->data, "parent: r%ld.%99s",
                 &rev, bid);
      SVN_ERR_ASSERT(n == 2);

      svn_hash_sets(history->parents,
                    apr_pstrdup(result_pool, bid),
                    svn_branch__rev_bid_create(rev, bid, result_pool));
    }

  if (history_p)
    *history_p = history;
  return SVN_NO_ERROR;
}

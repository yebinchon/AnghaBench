
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_4__ {scalar_t__ context_size; scalar_t__* hunk_length; scalar_t__* hunk_start; scalar_t__* current_token; int hunk_delimiter; } ;
typedef TYPE_1__ output_baton_t ;
typedef scalar_t__ apr_off_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int output_unified_flush_hunk (TYPE_1__*,int ) ;
 int output_unified_token_range (TYPE_1__*,int,int ,scalar_t__) ;
 int unified_output_context ;
 int unified_output_delete ;
 int unified_output_insert ;
 int unified_output_skip ;

__attribute__((used)) static svn_error_t *
output_unified_diff_modified(void *baton,
                             apr_off_t original_start,
                             apr_off_t original_length,
                             apr_off_t modified_start,
                             apr_off_t modified_length,
                             apr_off_t latest_start,
                             apr_off_t latest_length)
{
  output_baton_t *output_baton = baton;
  apr_off_t context_prefix_length;
  apr_off_t prev_context_end;
  svn_boolean_t init_hunk = FALSE;

  if (original_start > output_baton->context_size)
    context_prefix_length = output_baton->context_size;
  else
    context_prefix_length = original_start;



  if (output_baton->hunk_length[0] > 0 || output_baton->hunk_length[1] > 0)
    {
      prev_context_end = output_baton->hunk_start[0]
                         + output_baton->hunk_length[0]
                         + output_baton->context_size;
    }
  else
    {
      prev_context_end = -1;

      if (output_baton->hunk_start[0] == 0
          && (original_length > 0 || modified_length > 0))
        init_hunk = TRUE;
    }



  {
    apr_off_t new_hunk_start = (original_start - context_prefix_length);

    if (output_baton->current_token[0] < new_hunk_start
          && prev_context_end <= new_hunk_start)
      {
        SVN_ERR(output_unified_flush_hunk(output_baton,
                                          output_baton->hunk_delimiter));
        init_hunk = TRUE;
      }
    else if (output_baton->hunk_length[0] > 0
             || output_baton->hunk_length[1] > 0)
      {



        SVN_ERR(output_unified_token_range(output_baton, 0 ,
                                           unified_output_context,
                                           original_start));
      }
  }



  SVN_ERR(output_unified_token_range(output_baton, 0 ,
                                     unified_output_skip,
                                     original_start - context_prefix_length));

  if (init_hunk)
    {
      SVN_ERR_ASSERT(output_baton->hunk_length[0] == 0
                     && output_baton->hunk_length[1] == 0);

      output_baton->hunk_start[0] = original_start - context_prefix_length;
      output_baton->hunk_start[1] = modified_start - context_prefix_length;
    }


  SVN_ERR(output_unified_token_range(output_baton, 1 ,
                                     unified_output_skip,
                                     modified_start));


  SVN_ERR(output_unified_token_range(output_baton, 0 ,
                                    unified_output_context,
                                    original_start));


  SVN_ERR(output_unified_token_range(output_baton, 0 ,
                                     unified_output_delete,
                                     original_start + original_length));
  SVN_ERR(output_unified_token_range(output_baton, 1 ,
                                     unified_output_insert,
                                     modified_start + modified_length));

  return SVN_NO_ERROR;
}

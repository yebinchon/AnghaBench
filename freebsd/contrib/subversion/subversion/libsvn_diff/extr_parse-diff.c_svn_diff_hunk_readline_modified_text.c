
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int modified_no_final_eol; int original_no_final_eol; TYPE_1__* patch; int modified_text_range; int original_text_range; int apr_file; } ;
typedef TYPE_2__ svn_diff_hunk_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {scalar_t__ reverse; } ;


 int hunk_readline_original_or_modified (int ,int *,int **,char const**,int *,char,int ,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_diff_hunk_readline_modified_text(svn_diff_hunk_t *hunk,
                                     svn_stringbuf_t **stringbuf,
                                     const char **eol,
                                     svn_boolean_t *eof,
                                     apr_pool_t *result_pool,
                                     apr_pool_t *scratch_pool)
{
  return svn_error_trace(
    hunk_readline_original_or_modified(hunk->apr_file,
                                       hunk->patch->reverse ?
                                         &hunk->original_text_range :
                                         &hunk->modified_text_range,
                                       stringbuf, eol, eof,
                                       hunk->patch->reverse ? '+' : '-',
                                       hunk->patch->reverse
                                          ? hunk->original_no_final_eol
                                          : hunk->modified_no_final_eol,
                                       result_pool, scratch_pool));
}

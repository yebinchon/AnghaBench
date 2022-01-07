
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {scalar_t__* current_line; } ;
typedef TYPE_1__ svn_diff3__file_output_baton_t ;
typedef scalar_t__ apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int output_line (TYPE_1__*,int ,int) ;
 int svn_diff3__file_output_normal ;
 int svn_diff3__file_output_skip ;

__attribute__((used)) static svn_error_t *
output_hunk(void *baton, int idx, apr_off_t target_line,
            apr_off_t target_length)
{
  svn_diff3__file_output_baton_t *output_baton = baton;


  while (output_baton->current_line[idx] < target_line)
    {
      SVN_ERR(output_line(output_baton, svn_diff3__file_output_skip, idx));
    }

  target_line += target_length;

  while (output_baton->current_line[idx] < target_line)
    {
      SVN_ERR(output_line(output_baton, svn_diff3__file_output_normal, idx));
    }

  return SVN_NO_ERROR;
}

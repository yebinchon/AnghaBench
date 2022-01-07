
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_off_t ;


 int * output_hunk (void*,int,int ,int ) ;

__attribute__((used)) static svn_error_t *
output_diff_modified(void *baton,
                     apr_off_t original_start, apr_off_t original_length,
                     apr_off_t modified_start, apr_off_t modified_length,
                     apr_off_t latest_start, apr_off_t latest_length)
{
  return output_hunk(baton, 1, modified_start, modified_length);
}

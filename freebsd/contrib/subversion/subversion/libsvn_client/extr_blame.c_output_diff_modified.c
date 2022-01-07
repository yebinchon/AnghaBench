
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct diff_baton {int rev; int chain; } ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int blame_delete_range (int ,int ,int ) ;
 int blame_insert_range (int ,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
output_diff_modified(void *baton,
                     apr_off_t original_start,
                     apr_off_t original_length,
                     apr_off_t modified_start,
                     apr_off_t modified_length,
                     apr_off_t latest_start,
                     apr_off_t latest_length)
{
  struct diff_baton *db = baton;

  if (original_length)
    SVN_ERR(blame_delete_range(db->chain, modified_start, original_length));

  if (modified_length)
    SVN_ERR(blame_insert_range(db->chain, db->rev, modified_start,
                               modified_length));

  return SVN_NO_ERROR;
}

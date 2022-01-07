
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int file_count; } ;
typedef TYPE_1__ edit_baton_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
add_file(const char *path,
          void *parent_baton,
          const char *copyfrom_path,
          svn_revnum_t copyfrom_revision,
          apr_pool_t *pool,
          void **baton)
{
  edit_baton_t *eb = parent_baton;
  eb->file_count++;

  *baton = parent_baton;
  return SVN_NO_ERROR;
}

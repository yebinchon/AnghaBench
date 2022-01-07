
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct file_baton {int wrapped_baton; scalar_t__ ambiently_excluded; } ;
struct edit_baton {TYPE_1__* wrapped_editor; } ;
struct dir_baton {int wrapped_baton; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* add_file ) (char const*,int ,char const*,int ,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int make_file_baton (struct file_baton**,struct dir_baton*,char const*,int ,int *) ;
 int * stub1 (char const*,int ,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
add_file(const char *path,
         void *parent_baton,
         const char *copyfrom_path,
         svn_revnum_t copyfrom_revision,
         apr_pool_t *pool,
         void **child_baton)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  struct file_baton *b = ((void*)0);

  SVN_ERR(make_file_baton(&b, pb, path, TRUE, pool));
  *child_baton = b;

  if (b->ambiently_excluded)
    return SVN_NO_ERROR;

  return eb->wrapped_editor->add_file(path, pb->wrapped_baton,
                                      copyfrom_path, copyfrom_revision,
                                      pool, &b->wrapped_baton);
}

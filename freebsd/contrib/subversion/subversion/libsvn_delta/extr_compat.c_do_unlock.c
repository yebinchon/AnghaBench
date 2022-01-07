
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct editor_baton {int changes; } ;
struct change_node {int unlock; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 struct change_node* insert_change (char const*,int ) ;

__attribute__((used)) static svn_error_t *
do_unlock(void *baton,
          const char *path,
          apr_pool_t *scratch_pool)
{
  struct editor_baton *eb = baton;

  {

    struct change_node *change = insert_change(path, eb->changes);


    change->unlock = TRUE;
  }

  return SVN_NO_ERROR;
}

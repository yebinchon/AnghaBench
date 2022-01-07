
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_diff_source_t ;
struct tee_node_baton_t {int baton2; int baton1; } ;
struct tee_baton_t {TYPE_1__* p2; TYPE_2__* p1; } ;
struct svn_diff_tree_processor_t {struct tee_baton_t* baton; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_4__ {int (* dir_changed ) (char const*,int const*,int const*,int *,int *,int const*,int ,TYPE_2__*,int *) ;} ;
struct TYPE_3__ {int (* dir_changed ) (char const*,int const*,int const*,int *,int *,int const*,int ,TYPE_1__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (char const*,int const*,int const*,int *,int *,int const*,int ,TYPE_2__*,int *) ;
 int stub2 (char const*,int const*,int const*,int *,int *,int const*,int ,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
tee_dir_changed(const char *relpath,
                    const svn_diff_source_t *left_source,
                    const svn_diff_source_t *right_source,
                              apr_hash_t *left_props,
                              apr_hash_t *right_props,
                    const apr_array_header_t *prop_changes,
                    void *dir_baton,
                    const struct svn_diff_tree_processor_t *processor,
                    apr_pool_t *scratch_pool)
{
  struct tee_baton_t *tb = processor->baton;
  struct tee_node_baton_t *db = dir_baton;

  SVN_ERR(tb->p1->dir_changed(relpath,
                              left_source,
                              right_source,
                              left_props,
                              right_props,
                              prop_changes,
                              db->baton1,
                              tb->p1,
                              scratch_pool));

  SVN_ERR(tb->p2->dir_changed(relpath,
                              left_source,
                              right_source,
                              left_props,
                              right_props,
                              prop_changes,
                              db->baton2,
                              tb->p2,
                              scratch_pool));
  return SVN_NO_ERROR;
}

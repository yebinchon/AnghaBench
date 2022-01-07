
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {struct tee_baton_t* baton; } ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
struct tee_node_baton_t {int baton2; int baton1; } ;
struct tee_baton_t {TYPE_3__* p2; TYPE_4__* p1; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_7__ {int (* file_deleted ) (char const*,int const*,char const*,int *,int ,TYPE_4__*,int *) ;} ;
struct TYPE_6__ {int (* file_deleted ) (char const*,int const*,char const*,int *,int ,TYPE_3__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (char const*,int const*,char const*,int *,int ,TYPE_4__*,int *) ;
 int stub2 (char const*,int const*,char const*,int *,int ,TYPE_3__*,int *) ;

__attribute__((used)) static svn_error_t *
tee_file_deleted(const char *relpath,
                 const svn_diff_source_t *left_source,
                 const char *left_file,
                           apr_hash_t *left_props,
                 void *file_baton,
                 const svn_diff_tree_processor_t *processor,
                 apr_pool_t *scratch_pool)
{
  struct tee_baton_t *tb = processor->baton;
  struct tee_node_baton_t *fb = file_baton;

  SVN_ERR(tb->p1->file_deleted(relpath,
                               left_source,
                               left_file,
                               left_props,
                               fb->baton1,
                               tb->p1,
                               scratch_pool));

  SVN_ERR(tb->p2->file_deleted(relpath,
                               left_source,
                               left_file,
                               left_props,
                               fb->baton2,
                               tb->p2,
                               scratch_pool));
  return SVN_NO_ERROR;
}

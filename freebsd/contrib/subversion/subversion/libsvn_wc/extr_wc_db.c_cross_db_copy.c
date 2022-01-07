
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef void* svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_checksum_t ;
struct TYPE_4__ {char const* changed_author; char const* original_repos_relpath; int op_depth; int not_present_op_depth; int depth; int const* children; int const* checksum; int moved_here; void* original_revnum; int original_repos_id; int changed_date; void* changed_rev; int * props; scalar_t__ kind; scalar_t__ presence; } ;
typedef TYPE_1__ insert_working_baton_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int blank_iwb (TYPE_1__*) ;
 int copy_actual (int *,char const*,int *,char const*,int *) ;
 int db_read_pristine_props (int **,int *,char const*,int ,int *,int *) ;
 int insert_working_node (TYPE_1__*,int *,char const*,int *) ;
 int read_info (int *,int *,int *,int *,int *,void**,int *,char const**,int *,int const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

__attribute__((used)) static svn_error_t *
cross_db_copy(svn_wc__db_wcroot_t *src_wcroot,
              const char *src_relpath,
              svn_wc__db_wcroot_t *dst_wcroot,
              const char *dst_relpath,
              svn_wc__db_status_t dst_status,
              int dst_op_depth,
              int dst_np_op_depth,
              svn_node_kind_t kind,
              const apr_array_header_t *children,
              apr_int64_t copyfrom_id,
              const char *copyfrom_relpath,
              svn_revnum_t copyfrom_rev,
              apr_pool_t *scratch_pool)
{
  insert_working_baton_t iwb;
  svn_revnum_t changed_rev;
  apr_time_t changed_date;
  const char *changed_author;
  const svn_checksum_t *checksum;
  apr_hash_t *props;
  svn_depth_t depth;

  SVN_ERR_ASSERT(kind == svn_node_file
                 || kind == svn_node_dir
                 );

  SVN_ERR(read_info(((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                    &changed_rev, &changed_date, &changed_author, &depth,
                    &checksum, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                    src_wcroot, src_relpath, scratch_pool, scratch_pool));

  if (dst_status != svn_wc__db_status_not_present
      && dst_status != svn_wc__db_status_excluded
      && dst_status != svn_wc__db_status_server_excluded)
    {
      SVN_ERR(db_read_pristine_props(&props, src_wcroot, src_relpath, FALSE,
                                     scratch_pool, scratch_pool));
    }
  else
    props = ((void*)0);

  blank_iwb(&iwb);
  iwb.presence = dst_status;
  iwb.kind = kind;

  iwb.props = props;
  iwb.changed_rev = changed_rev;
  iwb.changed_date = changed_date;
  iwb.changed_author = changed_author;
  iwb.original_repos_id = copyfrom_id;
  iwb.original_repos_relpath = copyfrom_relpath;
  iwb.original_revnum = copyfrom_rev;
  iwb.moved_here = FALSE;

  iwb.op_depth = dst_op_depth;

  iwb.checksum = checksum;
  iwb.children = children;
  iwb.depth = depth;

  iwb.not_present_op_depth = dst_np_op_depth;

  SVN_ERR(insert_working_node(&iwb, dst_wcroot, dst_relpath, scratch_pool));

  SVN_ERR(copy_actual(src_wcroot, src_relpath,
                      dst_wcroot, dst_relpath, scratch_pool));

  return SVN_NO_ERROR;
}

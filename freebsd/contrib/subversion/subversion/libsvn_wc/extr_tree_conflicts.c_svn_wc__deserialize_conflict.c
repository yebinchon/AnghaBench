
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ svn_wc_operation_t ;
typedef int svn_wc_conflict_version_t ;
typedef int svn_wc_conflict_reason_t ;
struct TYPE_15__ {int action; int reason; } ;
typedef TYPE_3__ svn_wc_conflict_description2_t ;
typedef int svn_wc_conflict_action_t ;
struct TYPE_16__ {struct TYPE_16__ const* next; TYPE_2__* children; } ;
typedef TYPE_4__ const svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_17__ {char* data; } ;
struct TYPE_14__ {TYPE_1__* next; } ;
struct TYPE_13__ {TYPE_4__ const* next; int len; int data; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int is_valid_conflict_skel (TYPE_4__ const*) ;
 int node_kind_map ;
 int read_enum_field (int*,int ,TYPE_4__ const*) ;
 int read_node_version_info (int const**,TYPE_4__ const*,int *,int *) ;
 int svn_dirent_get_absolute (char const**,int ,int *) ;
 int svn_dirent_join (char const*,char const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 TYPE_8__* svn_skel__unparse (TYPE_4__ const*,int *) ;
 int svn_wc__conflict_action_map ;
 int svn_wc__conflict_reason_map ;
 int svn_wc__operation_map ;
 TYPE_3__* svn_wc_conflict_description_create_tree2 (char const*,scalar_t__,scalar_t__,int const*,int const*,int *) ;

svn_error_t *
svn_wc__deserialize_conflict(const svn_wc_conflict_description2_t **conflict,
                             const svn_skel_t *skel,
                             const char *dir_path,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  const char *victim_basename;
  const char *victim_abspath;
  svn_node_kind_t node_kind;
  svn_wc_operation_t operation;
  svn_wc_conflict_action_t action;
  svn_wc_conflict_reason_t reason;
  const svn_wc_conflict_version_t *src_left_version;
  const svn_wc_conflict_version_t *src_right_version;
  int n;
  svn_wc_conflict_description2_t *new_conflict;

  if (!is_valid_conflict_skel(skel))
    return svn_error_createf(SVN_ERR_WC_CORRUPT, ((void*)0),
                             _("Invalid conflict info '%s' in tree conflict "
                               "description"),
                             skel ? svn_skel__unparse(skel, scratch_pool)->data
                                  : "(null)");


  victim_basename = apr_pstrmemdup(scratch_pool,
                                   skel->children->next->data,
                                   skel->children->next->len);
  if (victim_basename[0] == '\0')
    return svn_error_create(SVN_ERR_WC_CORRUPT, ((void*)0),
                            _("Empty 'victim' field in tree conflict "
                              "description"));


  SVN_ERR(read_enum_field(&n, node_kind_map, skel->children->next->next));
  node_kind = (svn_node_kind_t)n;
  if (node_kind != svn_node_file && node_kind != svn_node_dir)
    return svn_error_create(SVN_ERR_WC_CORRUPT, ((void*)0),
             _("Invalid 'node_kind' field in tree conflict description"));


  SVN_ERR(read_enum_field(&n, svn_wc__operation_map,
                          skel->children->next->next->next));
  operation = (svn_wc_operation_t)n;

  SVN_ERR(svn_dirent_get_absolute(&victim_abspath,
                    svn_dirent_join(dir_path, victim_basename, scratch_pool),
                    scratch_pool));


  SVN_ERR(read_enum_field(&n, svn_wc__conflict_action_map,
                          skel->children->next->next->next->next));
  action = n;


  SVN_ERR(read_enum_field(&n, svn_wc__conflict_reason_map,
                          skel->children->next->next->next->next->next));
  reason = n;


  skel = skel->children->next->next->next->next->next->next;


  SVN_ERR(read_node_version_info(&src_left_version, skel,
                                 result_pool, scratch_pool));


  SVN_ERR(read_node_version_info(&src_right_version, skel->next,
                                 result_pool, scratch_pool));

  new_conflict = svn_wc_conflict_description_create_tree2(victim_abspath,
    node_kind, operation, src_left_version, src_right_version,
    result_pool);
  new_conflict->action = action;
  new_conflict->reason = reason;

  *conflict = new_conflict;

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_wc_conflict_version_t ;
struct TYPE_12__ {TYPE_4__* children; } ;
typedef TYPE_5__ svn_skel_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {TYPE_3__* next; } ;
struct TYPE_10__ {TYPE_2__* next; int len; int data; } ;
struct TYPE_9__ {TYPE_1__* next; int len; int data; } ;
struct TYPE_8__ {int next; int len; int data; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CORRUPT ;
 int * SVN_NO_ERROR ;
 int SVN_STR_TO_REV (char*) ;
 int _ (char*) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int is_valid_version_info_skel (TYPE_5__ const*) ;
 int node_kind_map ;
 int read_enum_field (int*,int ,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 char* svn_uri_canonicalize (char const*,int *) ;
 int * svn_wc_conflict_version_create2 (char const*,int *,char const*,int ,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
read_node_version_info(const svn_wc_conflict_version_t **version_info,
                       const svn_skel_t *skel,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  int n;
  const char *repos_root;
  const char *repos_relpath;
  svn_revnum_t peg_rev;
  svn_node_kind_t kind;

  if (!is_valid_version_info_skel(skel))
    return svn_error_create(SVN_ERR_WC_CORRUPT, ((void*)0),
                            _("Invalid version info in tree conflict "
                              "description"));

  repos_root = apr_pstrmemdup(scratch_pool,
                              skel->children->next->data,
                              skel->children->next->len);
  if (*repos_root == '\0')
    {
      *version_info = ((void*)0);
      return SVN_NO_ERROR;
    }


  repos_root = svn_uri_canonicalize(repos_root, result_pool);

  peg_rev = SVN_STR_TO_REV(apr_pstrmemdup(scratch_pool,
                                          skel->children->next->next->data,
                                          skel->children->next->next->len));

  repos_relpath = apr_pstrmemdup(result_pool,
                                 skel->children->next->next->next->data,
                                 skel->children->next->next->next->len);

  SVN_ERR(read_enum_field(&n, node_kind_map,
                          skel->children->next->next->next->next));
  kind = (svn_node_kind_t)n;

  *version_info = svn_wc_conflict_version_create2(repos_root,
                                                  ((void*)0),
                                                  repos_relpath,
                                                  peg_rev,
                                                  kind,
                                                  result_pool);

  return SVN_NO_ERROR;
}

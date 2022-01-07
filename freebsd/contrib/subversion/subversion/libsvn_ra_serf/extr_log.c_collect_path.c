
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
struct TYPE_7__ {char action; void* props_modified; void* text_modified; int node_kind; scalar_t__ copyfrom_rev; int copyfrom_path; } ;
typedef TYPE_2__ svn_log_changed_path2_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_pool_get (int *) ;
 int apr_pstrdup (int *,char const*) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int svn_cstring_atoi64 (scalar_t__*,char const*) ;
 char* svn_hash_gets (int *,char*) ;
 int svn_hash_sets (int *,char const*,TYPE_2__*) ;
 TYPE_2__* svn_log_changed_path2_create (int *) ;
 int svn_node_kind_from_word (char*) ;
 void* svn_tristate__from_word (char*) ;

__attribute__((used)) static svn_error_t *
collect_path(apr_hash_t *paths,
             char action,
             const svn_string_t *cdata,
             apr_hash_t *attrs)
{
  apr_pool_t *result_pool = apr_hash_pool_get(paths);
  svn_log_changed_path2_t *lcp;
  const char *copyfrom_path;
  const char *copyfrom_rev;
  const char *path;

  lcp = svn_log_changed_path2_create(result_pool);
  lcp->action = action;
  lcp->copyfrom_rev = SVN_INVALID_REVNUM;


  copyfrom_path = svn_hash_gets(attrs, "copyfrom-path");
  copyfrom_rev = svn_hash_gets(attrs, "copyfrom-rev");
  if (copyfrom_path && copyfrom_rev)
    {
      apr_int64_t rev;

      SVN_ERR(svn_cstring_atoi64(&rev, copyfrom_rev));

      if (SVN_IS_VALID_REVNUM((svn_revnum_t)rev))
        {
          lcp->copyfrom_path = apr_pstrdup(result_pool, copyfrom_path);
          lcp->copyfrom_rev = (svn_revnum_t)rev;
        }
    }

  lcp->node_kind = svn_node_kind_from_word(svn_hash_gets(attrs, "node-kind"));
  lcp->text_modified = svn_tristate__from_word(svn_hash_gets(attrs,
                                                             "text-mods"));
  lcp->props_modified = svn_tristate__from_word(svn_hash_gets(attrs,
                                                              "prop-mods"));

  path = apr_pstrmemdup(result_pool, cdata->data, cdata->len);
  svn_hash_sets(paths, path, lcp);

  return SVN_NO_ERROR;
}

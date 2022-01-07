
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int kind; } ;
struct TYPE_10__ {int kind; } ;
struct TYPE_13__ {char* target_dir; char* url; TYPE_2__ peg_revision; TYPE_1__ revision; } ;
typedef TYPE_4__ svn_wc_external_item2_t ;
struct TYPE_14__ {int format; char* peg_rev_str; int rev_str; } ;
typedef TYPE_5__ svn_wc__externals_parser_info_t ;
struct TYPE_12__ {int number; } ;
struct TYPE_15__ {TYPE_3__ value; int kind; } ;
typedef TYPE_6__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_CLIENT_INVALID_EXTERNALS_DESCRIPTION ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXTERNALS ;
 int SVN_VA_NULL ;
 int _ (char*) ;
 char* apr_psprintf (int *,char*,char const*,...) ;
 char* apr_pstrcat (int *,int ,char*,int ) ;
 char const* maybe_quote (char*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 int svn_opt_revision_head ;
 int svn_opt_revision_number ;
 int svn_opt_revision_unspecified ;



__attribute__((used)) static svn_error_t *
make_external_description(const char **new_external_description,
                          const char *local_abspath_or_url,
                          svn_wc_external_item2_t *item,
                          svn_wc__externals_parser_info_t *info,
                          svn_opt_revision_t external_pegrev,
                          apr_pool_t *pool)
{
  const char *rev_str;
  const char *peg_rev_str;

  switch (info->format)
    {
      case 129:
        if (external_pegrev.kind == svn_opt_revision_unspecified)
          {

            rev_str = apr_pstrcat(pool, info->rev_str, " ", SVN_VA_NULL);
          }
        else if (info->rev_str && item->revision.kind != svn_opt_revision_head)
          rev_str = apr_psprintf(pool, "%s ", info->rev_str);
        else
          {

            SVN_ERR_ASSERT(external_pegrev.kind == svn_opt_revision_number);
            rev_str = apr_psprintf(pool, "-r%ld ",
                                   external_pegrev.value.number);
          }

        *new_external_description =
          apr_psprintf(pool, "%s %s%s\n", maybe_quote(item->target_dir, pool),
                                          rev_str,
                                          maybe_quote(item->url, pool));
        break;

      case 128:
        if (external_pegrev.kind == svn_opt_revision_unspecified)
          {

            rev_str = apr_pstrcat(pool, info->rev_str, " ", SVN_VA_NULL);
          }
        else if (info->rev_str && item->revision.kind != svn_opt_revision_head)
          rev_str = apr_psprintf(pool, "%s ", info->rev_str);
        else
          rev_str = "";

        if (external_pegrev.kind == svn_opt_revision_unspecified)
          peg_rev_str = info->peg_rev_str ? info->peg_rev_str : "";
        else if (info->peg_rev_str &&
                 item->peg_revision.kind != svn_opt_revision_head)
          peg_rev_str = info->peg_rev_str;
        else
          {

            SVN_ERR_ASSERT(external_pegrev.kind == svn_opt_revision_number);
            peg_rev_str = apr_psprintf(pool, "@%ld",
                                       external_pegrev.value.number);
          }

        *new_external_description =
          apr_psprintf(pool, "%s%s %s\n", rev_str,
                       maybe_quote(apr_psprintf(pool, "%s%s", item->url,
                                                peg_rev_str),
                                   pool),
                       maybe_quote(item->target_dir, pool));
        break;

      default:
        return svn_error_createf(
                 SVN_ERR_CLIENT_INVALID_EXTERNALS_DESCRIPTION, ((void*)0),
                 _("%s property defined at '%s' is using an unsupported "
                   "syntax"), SVN_PROP_EXTERNALS,
                 svn_dirent_local_style(local_abspath_or_url, pool));
    }

  return SVN_NO_ERROR;
}

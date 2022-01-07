
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_x509_certinfo_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct walk_credentials_baton_t {scalar_t__ delete; int show_passwords; scalar_t__ list; int matches; TYPE_1__* patterns; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_2__ {scalar_t__ nelts; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int list_credential (char const*,char const*,int *,int ,int *,int *) ;
 int match_credential (int *,int **,char const*,char const*,TYPE_1__*,int *,int *,int *) ;
 int svn_cmdline_printf (int *,int ,char const*,char const*) ;
 int * svn_sort__hash (int *,int ,int *) ;
 int svn_sort_compare_items_lexically ;

__attribute__((used)) static svn_error_t *
walk_credentials(svn_boolean_t *delete_cred,
                 void *baton,
                 const char *cred_kind,
                 const char *realmstring,
                 apr_hash_t *cred_hash,
                 apr_pool_t *scratch_pool)
{
  struct walk_credentials_baton_t *b = baton;
  apr_array_header_t *sorted_cred_items;
  svn_x509_certinfo_t *certinfo = ((void*)0);

  *delete_cred = FALSE;

  sorted_cred_items = svn_sort__hash(cred_hash,
                                     svn_sort_compare_items_lexically,
                                     scratch_pool);
  if (b->patterns->nelts > 0)
    {
      svn_boolean_t match;

      SVN_ERR(match_credential(&match, &certinfo, cred_kind, realmstring,
                               b->patterns, sorted_cred_items,
                               scratch_pool, scratch_pool));
      if (!match)
        return SVN_NO_ERROR;
    }

  b->matches++;

  if (b->list)
    SVN_ERR(list_credential(cred_kind, realmstring, sorted_cred_items,
                            b->show_passwords, certinfo, scratch_pool));
  if (b->delete)
    {
      *delete_cred = TRUE;
      SVN_ERR(svn_cmdline_printf(scratch_pool,
                                 _("Deleting %s credential for realm '%s'\n"),
                                 cred_kind, realmstring));
    }

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ revision; scalar_t__ kind; int url; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR_ENTRY_MISSING_REVISION ;
 int SVN_ERR_ENTRY_MISSING_URL ;
 int SVN_ERR_ENTRY_NOT_FOUND ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_WC_ENTRY_THIS_DIR ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 int * svn_error_create (int ,int *,int ) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int take_from_entry (TYPE_1__*,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
resolve_to_defaults(apr_hash_t *entries,
                    apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  svn_wc_entry_t *default_entry
    = svn_hash_gets(entries, SVN_WC_ENTRY_THIS_DIR);


  if (! default_entry)
    return svn_error_create(SVN_ERR_ENTRY_NOT_FOUND,
                            ((void*)0),
                            _("Missing default entry"));

  if (default_entry->revision == SVN_INVALID_REVNUM)
    return svn_error_create(SVN_ERR_ENTRY_MISSING_REVISION,
                            ((void*)0),
                            _("Default entry has no revision number"));

  if (! default_entry->url)
    return svn_error_create(SVN_ERR_ENTRY_MISSING_URL,
                            ((void*)0),
                            _("Default entry is missing URL"));



  for (hi = apr_hash_first(pool, entries); hi; hi = apr_hash_next(hi))
    {
      svn_wc_entry_t *this_entry = apr_hash_this_val(hi);

      if (this_entry == default_entry)


        continue;

      if (this_entry->kind == svn_node_dir)






        continue;

      if (this_entry->kind == svn_node_file)



        take_from_entry(default_entry, this_entry, pool);
    }

  return SVN_NO_ERROR;
}

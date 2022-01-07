
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_error_t ;
struct revision_baton {scalar_t__ rev; int rev_offset; int const* author; int const* datestamp; int pool; TYPE_1__* pb; int revprop_table; } ;
struct TYPE_2__ {int session; int skip_revprops; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 int apr_pstrdup (int ,char const*) ;
 int strcmp (char const*,int ) ;
 int svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,int ,int const*) ;
 int svn_ra_change_rev_prop2 (int ,int ,char const*,int *,int const*,int ) ;
 int svn_repos__normalize_prop (int const**,int *,char const*,int const*,int ,int ) ;
 int svn_repos__validate_prop (char const*,int const*,int ) ;

__attribute__((used)) static svn_error_t *
set_revision_property(void *baton,
                      const char *name,
                      const svn_string_t *value)
{
  struct revision_baton *rb = baton;

  SVN_ERR(svn_repos__normalize_prop(&value, ((void*)0), name, value,
                                    rb->pool, rb->pool));
  SVN_ERR(svn_repos__validate_prop(name, value, rb->pool));

  if (rb->rev > 0)
    {
      if (! svn_hash_gets(rb->pb->skip_revprops, name))
        svn_hash_sets(rb->revprop_table,
                      apr_pstrdup(rb->pool, name), value);
    }
  else if (rb->rev_offset == -1
           && ! svn_hash_gets(rb->pb->skip_revprops, name))
    {



      SVN_ERR(svn_ra_change_rev_prop2(rb->pb->session, 0,
                                      name, ((void*)0), value, rb->pool));
    }



  if (!strcmp(name, SVN_PROP_REVISION_DATE))
    rb->datestamp = value;
  if (!strcmp(name, SVN_PROP_REVISION_AUTHOR))
    rb->author = value;

  return SVN_NO_ERROR;
}

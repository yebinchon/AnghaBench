
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int SVN_VA_NULL ;
 char* apr_psprintf (int *,char*,int ) ;
 int stdout ;
 int * svn_cl__error_checked_fputs (int ,int ) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;
 int svn_xml_make_close_tag (TYPE_1__**,int *,char*) ;
 int svn_xml_make_open_tag (TYPE_1__**,int *,int ,char*,char*,char const*,int ) ;
 int svn_xml_self_closing ;

__attribute__((used)) static svn_error_t *
print_finish_target_xml(svn_revnum_t repos_rev,
                        apr_pool_t *pool)
{
  svn_stringbuf_t *sb = svn_stringbuf_create_empty(pool);

  if (SVN_IS_VALID_REVNUM(repos_rev))
    {
      const char *repos_rev_str;
      repos_rev_str = apr_psprintf(pool, "%ld", repos_rev);
      svn_xml_make_open_tag(&sb, pool, svn_xml_self_closing, "against",
                            "revision", repos_rev_str, SVN_VA_NULL);
    }

  svn_xml_make_close_tag(&sb, pool, "target");

  return svn_cl__error_checked_fputs(sb->data, stdout);
}

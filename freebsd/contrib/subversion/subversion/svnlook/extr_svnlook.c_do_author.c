
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svnlook_ctxt_t ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int get_property (TYPE_1__**,int *,int ,int *) ;
 int svn_cmdline_printf (int *,char*,...) ;

__attribute__((used)) static svn_error_t *
do_author(svnlook_ctxt_t *c, apr_pool_t *pool)
{
  svn_string_t *prop_value;

  SVN_ERR(get_property(&prop_value, c,
                       SVN_PROP_REVISION_AUTHOR, pool));
  if (prop_value && prop_value->data)
    SVN_ERR(svn_cmdline_printf(pool, "%s", prop_value->data));

  SVN_ERR(svn_cmdline_printf(pool, "\n"));
  return SVN_NO_ERROR;
}

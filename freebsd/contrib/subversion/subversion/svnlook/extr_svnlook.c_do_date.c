
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svnlook_ctxt_t ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_DATE ;
 int get_property (TYPE_1__**,int *,int ,int *) ;
 int svn_cmdline_printf (int *,char*,...) ;
 int svn_time_from_cstring (int *,scalar_t__,int *) ;
 char* svn_time_to_human_cstring (int ,int *) ;

__attribute__((used)) static svn_error_t *
do_date(svnlook_ctxt_t *c, apr_pool_t *pool)
{
  svn_string_t *prop_value;

  SVN_ERR(get_property(&prop_value, c, SVN_PROP_REVISION_DATE, pool));
  if (prop_value && prop_value->data)
    {

      apr_time_t aprtime;
      const char *time_utf8;

      SVN_ERR(svn_time_from_cstring(&aprtime, prop_value->data, pool));

      time_utf8 = svn_time_to_human_cstring(aprtime, pool);

      SVN_ERR(svn_cmdline_printf(pool, "%s", time_utf8));
    }

  SVN_ERR(svn_cmdline_printf(pool, "\n"));
  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xlate_handle_t ;
struct TYPE_5__ {char const* frompage; char const* topage; int * next; int valid; int * handle; } ;
typedef TYPE_1__ xlate_handle_node_t ;
typedef int svn_error_t ;
typedef int apr_strerr ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_EINVAL (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_ENOTIMPL (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 char const* SVN_APR_DEFAULT_CHARSET ;
 char const* SVN_APR_LOCALE_CHARSET ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_PLUGIN_LOAD_FAILURE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 char* apr_psprintf (int *,int ,char const*,...) ;
 char const* apr_pstrdup (int *,char const*) ;
 scalar_t__ apr_xlate_open (int **,char const*,char const*,int *) ;
 int svn_error_create (scalar_t__,int *,char*) ;
 int * svn_error_createf (int ,int ,char*,char const*,char const*) ;
 int svn_strerror (scalar_t__,char*,int) ;
 scalar_t__ svn_subr__win32_xlate_open (int **,char const*,char const*,int *) ;
 int xlate_handle_node_cleanup ;

__attribute__((used)) static svn_error_t *
xlate_alloc_handle(xlate_handle_node_t **ret,
                   const char *topage, const char *frompage,
                   apr_pool_t *pool)
{
  apr_status_t apr_err;
  xlate_handle_t *handle;
  const char *name;



  SVN_ERR_ASSERT(frompage != SVN_APR_DEFAULT_CHARSET
                 && topage != SVN_APR_DEFAULT_CHARSET
                 && (frompage != SVN_APR_LOCALE_CHARSET
                     || topage != SVN_APR_LOCALE_CHARSET));







  apr_err = apr_xlate_open(&handle, topage, frompage, pool);
  name = "APR: ";


  if (APR_STATUS_IS_EINVAL(apr_err) || APR_STATUS_IS_ENOTIMPL(apr_err))
    handle = ((void*)0);
  else if (apr_err != APR_SUCCESS)
    {
      const char *errstr;
      char apr_strerr[512];



      if (frompage == SVN_APR_LOCALE_CHARSET)
        errstr = apr_psprintf(pool,
                              _("Can't create a character converter from "
                                "native encoding to '%s'"), topage);
      else if (topage == SVN_APR_LOCALE_CHARSET)
        errstr = apr_psprintf(pool,
                              _("Can't create a character converter from "
                                "'%s' to native encoding"), frompage);
      else
        errstr = apr_psprintf(pool,
                              _("Can't create a character converter from "
                                "'%s' to '%s'"), frompage, topage);




      svn_strerror(apr_err, apr_strerr, sizeof(apr_strerr));
      return svn_error_createf(SVN_ERR_PLUGIN_LOAD_FAILURE,
                               svn_error_create(apr_err, ((void*)0), apr_strerr),
                               "%s%s", name, errstr);
    }


  *ret = apr_palloc(pool, sizeof(xlate_handle_node_t));
  (*ret)->handle = handle;
  (*ret)->valid = TRUE;
  (*ret)->frompage = ((frompage != SVN_APR_LOCALE_CHARSET)
                      ? apr_pstrdup(pool, frompage) : frompage);
  (*ret)->topage = ((topage != SVN_APR_LOCALE_CHARSET)
                    ? apr_pstrdup(pool, topage) : topage);
  (*ret)->next = ((void*)0);






  if (handle)
    apr_pool_cleanup_register(pool, *ret, xlate_handle_node_cleanup,
                              apr_pool_cleanup_null);

  return SVN_NO_ERROR;
}

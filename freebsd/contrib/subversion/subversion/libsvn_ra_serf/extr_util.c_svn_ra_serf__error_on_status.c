
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int code; int reason; } ;
typedef TYPE_1__ serf_status_line ;


 int SVN_ERR_FS_CONFLICT ;
 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_FS_NO_LOCK_TOKEN ;
 int SVN_ERR_RA_DAV_FORBIDDEN ;
 int SVN_ERR_RA_DAV_METHOD_NOT_ALLOWED ;
 int SVN_ERR_RA_DAV_PRECONDITION_FAILED ;
 int SVN_ERR_RA_DAV_RELOCATED ;
 int SVN_ERR_RA_DAV_REQUEST_FAILED ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,...) ;

svn_error_t *
svn_ra_serf__error_on_status(serf_status_line sline,
                             const char *path,
                             const char *location)
{
  switch(sline.code)
    {
      case 301:
      case 302:
      case 303:
      case 307:
      case 308:
        return svn_error_createf(SVN_ERR_RA_DAV_RELOCATED, ((void*)0),
                                 (sline.code == 301)
                                  ? _("Repository moved permanently to '%s'")
                                  : _("Repository moved temporarily to '%s'"),
                                 location);
      case 403:
        return svn_error_createf(SVN_ERR_RA_DAV_FORBIDDEN, ((void*)0),
                                 _("Access to '%s' forbidden"), path);

      case 404:
        return svn_error_createf(SVN_ERR_FS_NOT_FOUND, ((void*)0),
                                 _("'%s' path not found"), path);
      case 405:
        return svn_error_createf(SVN_ERR_RA_DAV_METHOD_NOT_ALLOWED, ((void*)0),
                                 _("HTTP method is not allowed on '%s'"),
                                 path);
      case 409:
        return svn_error_createf(SVN_ERR_FS_CONFLICT, ((void*)0),
                                 _("'%s' conflicts"), path);
      case 412:
        return svn_error_createf(SVN_ERR_RA_DAV_PRECONDITION_FAILED, ((void*)0),
                                 _("Precondition on '%s' failed"), path);
      case 423:
        return svn_error_createf(SVN_ERR_FS_NO_LOCK_TOKEN, ((void*)0),
                                 _("'%s': no lock token available"), path);

      case 411:
        return svn_error_createf(SVN_ERR_RA_DAV_REQUEST_FAILED, ((void*)0),
                    _("DAV request failed: 411 Content length required. The "
                      "server or an intermediate proxy does not accept "
                      "chunked encoding. Try setting 'http-chunked-requests' "
                      "to 'auto' or 'no' in your client configuration."));
      case 500:
        return svn_error_createf(SVN_ERR_RA_DAV_REQUEST_FAILED, ((void*)0),
                                 _("Unexpected server error %d '%s' on '%s'"),
                                 sline.code, sline.reason, path);
      case 501:
        return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                                 _("The requested feature is not supported by "
                                   "'%s'"), path);
    }

  if (sline.code >= 300 || sline.code <= 199)
    return svn_error_createf(SVN_ERR_RA_DAV_REQUEST_FAILED, ((void*)0),
                             _("Unexpected HTTP status %d '%s' on '%s'"),
                             sline.code, sline.reason, path);

  return SVN_NO_ERROR;
}

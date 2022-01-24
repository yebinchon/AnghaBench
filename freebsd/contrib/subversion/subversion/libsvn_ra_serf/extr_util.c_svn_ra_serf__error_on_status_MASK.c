#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int code; int /*<<< orphan*/  reason; } ;
typedef  TYPE_1__ serf_status_line ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_FS_CONFLICT ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_LOCK_TOKEN ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_FORBIDDEN ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_METHOD_NOT_ALLOWED ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_PRECONDITION_FAILED ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_RELOCATED ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_REQUEST_FAILED ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

svn_error_t *
FUNC2(serf_status_line sline,
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
        return FUNC1(SVN_ERR_RA_DAV_RELOCATED, NULL,
                                 (sline.code == 301)
                                  ? FUNC0("Repository moved permanently to '%s'")
                                  : FUNC0("Repository moved temporarily to '%s'"),
                                 location);
      case 403:
        return FUNC1(SVN_ERR_RA_DAV_FORBIDDEN, NULL,
                                 FUNC0("Access to '%s' forbidden"), path);

      case 404:
        return FUNC1(SVN_ERR_FS_NOT_FOUND, NULL,
                                 FUNC0("'%s' path not found"), path);
      case 405:
        return FUNC1(SVN_ERR_RA_DAV_METHOD_NOT_ALLOWED, NULL,
                                 FUNC0("HTTP method is not allowed on '%s'"),
                                 path);
      case 409:
        return FUNC1(SVN_ERR_FS_CONFLICT, NULL,
                                 FUNC0("'%s' conflicts"), path);
      case 412:
        return FUNC1(SVN_ERR_RA_DAV_PRECONDITION_FAILED, NULL,
                                 FUNC0("Precondition on '%s' failed"), path);
      case 423:
        return FUNC1(SVN_ERR_FS_NO_LOCK_TOKEN, NULL,
                                 FUNC0("'%s': no lock token available"), path);

      case 411:
        return FUNC1(SVN_ERR_RA_DAV_REQUEST_FAILED, NULL,
                    FUNC0("DAV request failed: 411 Content length required. The "
                      "server or an intermediate proxy does not accept "
                      "chunked encoding. Try setting 'http-chunked-requests' "
                      "to 'auto' or 'no' in your client configuration."));
      case 500:
        return FUNC1(SVN_ERR_RA_DAV_REQUEST_FAILED, NULL,
                                 FUNC0("Unexpected server error %d '%s' on '%s'"),
                                 sline.code, sline.reason, path);
      case 501:
        return FUNC1(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                                 FUNC0("The requested feature is not supported by "
                                   "'%s'"), path);
    }

  if (sline.code >= 300 || sline.code <= 199)
    return FUNC1(SVN_ERR_RA_DAV_REQUEST_FAILED, NULL,
                             FUNC0("Unexpected HTTP status %d '%s' on '%s'"),
                             sline.code, sline.reason, path);

  return SVN_NO_ERROR;
}
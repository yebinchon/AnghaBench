#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_ENOMEM ; 
 int /*<<< orphan*/  SVN_ERR_STREAM_MALFORMED_DATA ; 
 int /*<<< orphan*/  SVN_ERR_STREAM_UNRECOGNIZED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
#define  Z_BUF_ERROR 132 
#define  Z_DATA_ERROR 131 
#define  Z_MEM_ERROR 130 
 int Z_OK ; 
#define  Z_STREAM_ERROR 129 
#define  Z_VERSION_ERROR 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*,char const*,...) ; 

svn_error_t *
FUNC2(int zerr, const char *function, const char *message)
{
  apr_status_t status;
  const char *zmsg;

  if (zerr == Z_OK)
    return SVN_NO_ERROR;

  switch (zerr)
    {
    case Z_STREAM_ERROR:
      status = SVN_ERR_STREAM_MALFORMED_DATA;
      zmsg = FUNC0("stream error");
      break;

    case Z_MEM_ERROR:
      status = APR_ENOMEM;
      zmsg = FUNC0("out of memory");
      break;

    case Z_BUF_ERROR:
      status = APR_ENOMEM;
      zmsg = FUNC0("buffer error");
      break;

    case Z_VERSION_ERROR:
      status = SVN_ERR_STREAM_UNRECOGNIZED_DATA;
      zmsg = FUNC0("version error");
      break;

    case Z_DATA_ERROR:
      status = SVN_ERR_STREAM_MALFORMED_DATA;
      zmsg = FUNC0("corrupt data");
      break;

    default:
      status = SVN_ERR_STREAM_UNRECOGNIZED_DATA;
      zmsg = FUNC0("unknown error");
      break;
    }

  if (message != NULL)
    return FUNC1(status, NULL, "zlib (%s): %s: %s", function,
                             zmsg, message);
  else
    return FUNC1(status, NULL, "zlib (%s): %s", function, zmsg);
}
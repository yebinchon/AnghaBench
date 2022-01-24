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
struct TYPE_3__ {int /*<<< orphan*/  in_stream; } ;
typedef  TYPE_1__ svn_ra_svn__stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_CONNECTION_CLOSED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 

svn_error_t *
FUNC3(svn_ra_svn__stream_t *stream, char *data,
                        apr_size_t *len)
{
  FUNC0(FUNC2(stream->in_stream, data, len));

  if (*len == 0)
    return FUNC1(SVN_ERR_RA_SVN_CONNECTION_CLOSED, NULL, NULL);

  return SVN_NO_ERROR;
}
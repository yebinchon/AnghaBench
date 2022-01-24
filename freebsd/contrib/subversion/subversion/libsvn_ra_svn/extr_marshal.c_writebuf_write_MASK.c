#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int write_pos; scalar_t__ write_buf; } ;
typedef  TYPE_1__ svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static svn_error_t *FUNC4(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                   const char *data, apr_size_t len)
{
  /* data >= 8k is sent immediately */
  if (len >= sizeof(conn->write_buf) / 2)
    {
      if (conn->write_pos > 0)
        FUNC0(FUNC2(conn, pool));

      return FUNC3(conn, pool, data, len);
    }

  /* ensure room for the data to add */
  if (conn->write_pos + len > sizeof(conn->write_buf))
    FUNC0(FUNC2(conn, pool));

  /* buffer the new data block as well */
  FUNC1(conn->write_buf + conn->write_pos, data, len);
  conn->write_pos += len;

  return SVN_NO_ERROR;
}
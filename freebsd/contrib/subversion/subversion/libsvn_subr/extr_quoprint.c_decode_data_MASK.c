#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct decode_baton {int /*<<< orphan*/  output; int /*<<< orphan*/  buflen; int /*<<< orphan*/  buf; int /*<<< orphan*/  pool; } ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton, const char *data, apr_size_t *len)
{
  struct decode_baton *db = baton;
  apr_pool_t *subpool;
  svn_stringbuf_t *decoded;
  apr_size_t declen;
  svn_error_t *err = SVN_NO_ERROR;

  /* Decode this block of data.  */
  subpool = FUNC1(db->pool);
  decoded = FUNC4(subpool);
  FUNC0(decoded, data, *len, db->buf, &db->buflen);

  /* Write the output, clean up, go home.  */
  declen = decoded->len;
  if (declen != 0)
    err = FUNC3(db->output, decoded->data, &declen);
  FUNC2(subpool);
  return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int len; scalar_t__* data; } ;
typedef  TYPE_1__ svn_string_t ;
struct TYPE_8__ {scalar_t__* data; } ;
typedef  TYPE_2__ svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  unsigned char apr_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned char*,int,size_t*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const svn_string_t **result, const svn_string_t *src,
               apr_pool_t *result_pool)
{
  apr_int32_t *ucs4buf;
  svn_membuf_t resultbuf;
  apr_size_t length;
  apr_size_t i;
  svn_string_t *res;

  ucs4buf = FUNC1(result_pool, src->len * sizeof(*ucs4buf));
  for (i = 0; i < src->len; ++i)
    ucs4buf[i] = (unsigned char)(src->data[i]);

  FUNC2(&resultbuf, 2 * src->len, result_pool);
  FUNC0(FUNC3(
              &resultbuf, ucs4buf, src->len, &length));

  res = FUNC1(result_pool, sizeof(*res));
  res->data = resultbuf.data;
  res->len = length;
  *result = res;
  return SVN_NO_ERROR;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int filetype; } ;
typedef  TYPE_2__ apr_finfo_t ;

/* Variables and functions */
 int APR_FINFO_LINK ; 
 int APR_FINFO_MIN ; 
#define  APR_LNK 129 
#define  APR_REG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC7(svn_stream_t **stream,
                           const char *path,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  apr_finfo_t finfo;
  svn_string_t *buf;

  /* First determine what type of special file we are
     detranslating. */
  FUNC0(FUNC3(&finfo, path, APR_FINFO_MIN | APR_FINFO_LINK,
                      scratch_pool));

  switch (finfo.filetype) {
  case APR_REG:
    /* Nothing special to do here, just create stream from the original
       file's contents. */
    FUNC0(FUNC5(stream, path, result_pool, scratch_pool));
    break;

  case APR_LNK:
    /* Determine the destination of the link. */
    FUNC0(FUNC2(&buf, path, scratch_pool));
    *stream = FUNC4(FUNC6(result_pool,
                                                        "link %s",
                                                        buf->data),
                                     result_pool);
    break;

  default:
    FUNC1();
  }

  return SVN_NO_ERROR;
}
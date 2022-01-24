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
struct TYPE_3__ {int kind; int /*<<< orphan*/  apr_ctx; } ;
typedef  TYPE_1__ svn_checksum_ctx_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_BAD_CHECKSUM_KIND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,unsigned int) ; 
#define  svn_checksum_fnv1a_32 131 
#define  svn_checksum_fnv1a_32x4 130 
#define  svn_checksum_md5 129 
#define  svn_checksum_sha1 128 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*,scalar_t__) ; 

svn_error_t *
FUNC5(svn_checksum_ctx_t *ctx,
                    const void *data,
                    apr_size_t len)
{
  switch (ctx->kind)
    {
      case svn_checksum_md5:
        FUNC0(ctx->apr_ctx, data, len);
        break;

      case svn_checksum_sha1:
        FUNC1(ctx->apr_ctx, data, (unsigned int)len);
        break;

      case svn_checksum_fnv1a_32:
        FUNC3(ctx->apr_ctx, data, len);
        break;

      case svn_checksum_fnv1a_32x4:
        FUNC4(ctx->apr_ctx, data, len);
        break;

      default:
        /* We really shouldn't get here, but if we do... */
        return FUNC2(SVN_ERR_BAD_CHECKSUM_KIND, NULL, NULL);
    }

  return SVN_NO_ERROR;
}
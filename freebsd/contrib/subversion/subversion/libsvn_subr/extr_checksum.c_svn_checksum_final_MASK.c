#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {scalar_t__ digest; } ;
typedef  TYPE_1__ svn_checksum_t ;
struct TYPE_7__ {int kind; int /*<<< orphan*/  apr_ctx; } ;
typedef  TYPE_2__ svn_checksum_ctx_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_BAD_CHECKSUM_KIND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ *) ; 
#define  svn_checksum_fnv1a_32 131 
#define  svn_checksum_fnv1a_32x4 130 
#define  svn_checksum_md5 129 
#define  svn_checksum_sha1 128 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC7(svn_checksum_t **checksum,
                   const svn_checksum_ctx_t *ctx,
                   apr_pool_t *pool)
{
  *checksum = FUNC3(ctx->kind, pool);

  switch (ctx->kind)
    {
      case svn_checksum_md5:
        FUNC0((unsigned char *)(*checksum)->digest, ctx->apr_ctx);
        break;

      case svn_checksum_sha1:
        FUNC1((unsigned char *)(*checksum)->digest, ctx->apr_ctx);
        break;

      case svn_checksum_fnv1a_32:
        *(apr_uint32_t *)(*checksum)->digest
          = FUNC2(FUNC5(ctx->apr_ctx));
        break;

      case svn_checksum_fnv1a_32x4:
        *(apr_uint32_t *)(*checksum)->digest
          = FUNC2(FUNC6(ctx->apr_ctx));
        break;

      default:
        /* We really shouldn't get here, but if we do... */
        return FUNC4(SVN_ERR_BAD_CHECKSUM_KIND, NULL, NULL);
    }

  return SVN_NO_ERROR;
}
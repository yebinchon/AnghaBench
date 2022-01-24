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
typedef  int svn_checksum_kind_t ;
struct TYPE_3__ {int kind; void* apr_ctx; } ;
typedef  TYPE_1__ svn_checksum_ctx_t ;
typedef  int /*<<< orphan*/  apr_sha1_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_md5_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
#define  svn_checksum_fnv1a_32 131 
#define  svn_checksum_fnv1a_32x4 130 
#define  svn_checksum_md5 129 
#define  svn_checksum_sha1 128 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 

svn_checksum_ctx_t *
FUNC6(svn_checksum_kind_t kind,
                        apr_pool_t *pool)
{
  svn_checksum_ctx_t *ctx = FUNC2(pool, sizeof(*ctx));

  ctx->kind = kind;
  switch (kind)
    {
      case svn_checksum_md5:
        ctx->apr_ctx = FUNC2(pool, sizeof(apr_md5_ctx_t));
        FUNC1(ctx->apr_ctx);
        break;

      case svn_checksum_sha1:
        ctx->apr_ctx = FUNC2(pool, sizeof(apr_sha1_ctx_t));
        FUNC3(ctx->apr_ctx);
        break;

      case svn_checksum_fnv1a_32:
        ctx->apr_ctx = FUNC4(pool);
        break;

      case svn_checksum_fnv1a_32x4:
        ctx->apr_ctx = FUNC5(pool);
        break;

      default:
        FUNC0();
    }

  return ctx;
}
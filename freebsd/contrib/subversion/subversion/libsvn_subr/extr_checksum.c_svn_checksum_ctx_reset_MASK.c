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
typedef  int /*<<< orphan*/  apr_sha1_ctx_t ;
typedef  int /*<<< orphan*/  apr_md5_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  svn_checksum_fnv1a_32 131 
#define  svn_checksum_fnv1a_32x4 130 
#define  svn_checksum_md5 129 
#define  svn_checksum_sha1 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC6(svn_checksum_ctx_t *ctx)
{
  switch (ctx->kind)
    {
      case svn_checksum_md5:
        FUNC3(ctx->apr_ctx, 0, sizeof(apr_md5_ctx_t));
        FUNC1(ctx->apr_ctx);
        break;

      case svn_checksum_sha1:
        FUNC3(ctx->apr_ctx, 0, sizeof(apr_sha1_ctx_t));
        FUNC2(ctx->apr_ctx);
        break;

      case svn_checksum_fnv1a_32:
        FUNC4(ctx->apr_ctx);
        break;

      case svn_checksum_fnv1a_32x4:
        FUNC5(ctx->apr_ctx);
        break;

      default:
        FUNC0();
    }

  return SVN_NO_ERROR;
}
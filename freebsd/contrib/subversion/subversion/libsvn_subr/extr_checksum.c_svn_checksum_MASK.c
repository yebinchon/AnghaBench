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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {scalar_t__ digest; } ;
typedef  TYPE_1__ svn_checksum_t ;
typedef  int svn_checksum_kind_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_sha1_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_CHECKSUM_KIND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (void const*,scalar_t__) ; 
 TYPE_1__* FUNC8 (int,int /*<<< orphan*/ *) ; 
#define  svn_checksum_fnv1a_32 131 
#define  svn_checksum_fnv1a_32x4 130 
#define  svn_checksum_md5 129 
#define  svn_checksum_sha1 128 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

svn_error_t *
FUNC11(svn_checksum_t **checksum,
             svn_checksum_kind_t kind,
             const void *data,
             apr_size_t len,
             apr_pool_t *pool)
{
  apr_sha1_ctx_t sha1_ctx;

  FUNC0(FUNC10(kind));
  *checksum = FUNC8(kind, pool);

  switch (kind)
    {
      case svn_checksum_md5:
        FUNC1((unsigned char *)(*checksum)->digest, data, len);
        break;

      case svn_checksum_sha1:
        FUNC3(&sha1_ctx);
        FUNC4(&sha1_ctx, data, (unsigned int)len);
        FUNC2((unsigned char *)(*checksum)->digest, &sha1_ctx);
        break;

      case svn_checksum_fnv1a_32:
        *(apr_uint32_t *)(*checksum)->digest
          = FUNC5(FUNC6(data, len));
        break;

      case svn_checksum_fnv1a_32x4:
        *(apr_uint32_t *)(*checksum)->digest
          = FUNC5(FUNC7(data, len));
        break;

      default:
        /* We really shouldn't get here, but if we do... */
        return FUNC9(SVN_ERR_BAD_CHECKSUM_KIND, NULL, NULL);
    }

  return SVN_NO_ERROR;
}
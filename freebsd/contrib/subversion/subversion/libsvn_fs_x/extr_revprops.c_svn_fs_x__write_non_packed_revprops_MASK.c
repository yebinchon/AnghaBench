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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  digest; } ;
typedef  TYPE_1__ svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_fnv1a_32x4 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(apr_file_t *file,
                                    apr_hash_t *proplist,
                                    apr_pool_t *scratch_pool)
{
  svn_stream_t *stream;
  svn_checksum_t *checksum;

  stream = FUNC6(file, TRUE, scratch_pool);
  stream = FUNC1(&checksum, stream,
                                           svn_checksum_fnv1a_32x4,
                                           scratch_pool);
  FUNC0(FUNC3(stream, proplist, scratch_pool));
  FUNC0(FUNC5(stream));

  /* Append the checksum */
  FUNC0(FUNC4(file, checksum->digest,
                                 FUNC2(checksum), NULL,
                                 scratch_pool));

  return SVN_NO_ERROR;
}
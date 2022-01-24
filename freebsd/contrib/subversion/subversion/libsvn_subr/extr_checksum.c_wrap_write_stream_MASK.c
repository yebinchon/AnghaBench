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
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_checksum_kind_t ;
struct TYPE_4__ {unsigned char* digest; int /*<<< orphan*/ * pool; int /*<<< orphan*/ ** checksum; int /*<<< orphan*/  context; int /*<<< orphan*/ * inner_stream; } ;
typedef  TYPE_1__ stream_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  close_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_handler ; 

__attribute__((used)) static svn_stream_t *
FUNC5(svn_checksum_t **checksum,
                  unsigned char *digest,
                  svn_stream_t *inner_stream,
                  svn_checksum_kind_t kind,
                  apr_pool_t *pool)
{
  svn_stream_t *outer_stream;

  stream_baton_t *baton = FUNC0(pool, sizeof(*baton));
  baton->inner_stream = inner_stream;
  baton->context = FUNC1(kind, pool);
  baton->checksum = checksum;
  baton->digest = digest;
  baton->pool = pool;

  outer_stream = FUNC2(baton, pool);
  FUNC4(outer_stream, write_handler);
  FUNC3(outer_stream, close_handler);

  return outer_stream;
}
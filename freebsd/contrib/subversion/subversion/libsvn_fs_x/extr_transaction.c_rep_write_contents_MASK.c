#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  delta_stream; int /*<<< orphan*/  rep_size; int /*<<< orphan*/  sha1_checksum_ctx; int /*<<< orphan*/  md5_checksum_ctx; } ;
typedef  TYPE_1__ rep_write_baton_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton,
                   const char *data,
                   apr_size_t *len)
{
  rep_write_baton_t *b = baton;

  FUNC0(FUNC1(b->md5_checksum_ctx, data, *len));
  FUNC0(FUNC1(b->sha1_checksum_ctx, data, *len));
  b->rep_size += *len;

  return FUNC2(b->delta_stream, data, len);
}
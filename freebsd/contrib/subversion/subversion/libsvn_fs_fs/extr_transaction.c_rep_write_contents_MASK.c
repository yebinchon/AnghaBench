#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct rep_write_baton {scalar_t__ rep_stream; scalar_t__ delta_stream; int /*<<< orphan*/  rep_size; int /*<<< orphan*/  sha1_checksum_ctx; int /*<<< orphan*/  md5_checksum_ctx; } ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton,
                   const char *data,
                   apr_size_t *len)
{
  struct rep_write_baton *b = baton;

  FUNC0(FUNC1(b->md5_checksum_ctx, data, *len));
  FUNC0(FUNC1(b->sha1_checksum_ctx, data, *len));
  b->rep_size += *len;

  /* If we are writing a delta, use that stream. */
  if (b->delta_stream)
    return FUNC2(b->delta_stream, data, len);
  else
    return FUNC2(b->rep_stream, data, len);
}
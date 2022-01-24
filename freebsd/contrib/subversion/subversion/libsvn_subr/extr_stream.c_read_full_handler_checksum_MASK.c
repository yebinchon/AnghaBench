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
struct checksum_stream_baton {int /*<<< orphan*/  read_more; int /*<<< orphan*/  read_ctx; scalar_t__ read_checksum; int /*<<< orphan*/  proxy; } ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton, char *buffer, apr_size_t *len)
{
  struct checksum_stream_baton *btn = baton;
  apr_size_t saved_len = *len;

  FUNC0(FUNC2(btn->proxy, buffer, len));

  if (btn->read_checksum)
    FUNC0(FUNC1(btn->read_ctx, buffer, *len));

  if (saved_len != *len)
    btn->read_more = FALSE;

  return SVN_NO_ERROR;
}
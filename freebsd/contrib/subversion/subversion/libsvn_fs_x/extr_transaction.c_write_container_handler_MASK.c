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
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  stream; scalar_t__ sha1_ctx; scalar_t__ md5_ctx; } ;
typedef  TYPE_1__ write_container_baton_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton,
                        const char *data,
                        apr_size_t *len)
{
  write_container_baton_t *whb = baton;

  FUNC0(FUNC1(whb->md5_ctx, data, *len));
  if (whb->sha1_ctx)
    FUNC0(FUNC1(whb->sha1_ctx, data, *len));

  FUNC0(FUNC2(whb->stream, data, len));
  whb->size += *len;

  return SVN_NO_ERROR;
}
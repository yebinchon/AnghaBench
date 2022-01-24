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
struct special_stream_baton {int /*<<< orphan*/  pool; int /*<<< orphan*/  path; scalar_t__ read_stream; } ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton, char *buffer, apr_size_t *len)
{
  struct special_stream_baton *btn = baton;

  if (btn->read_stream)
    /* We actually found a file to read from */
    return FUNC3(btn->read_stream, buffer, len);
  else
    return FUNC2(APR_ENOENT, NULL,
                             FUNC0("Can't read special file: File '%s' not found"),
                             FUNC1(btn->path, btn->pool));
}
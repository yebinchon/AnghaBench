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
struct length_verify_baton_t {scalar_t__ remaining; int /*<<< orphan*/  inner; } ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_DIFF_UNEXPECTED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton, char *buffer, apr_size_t *len)
{
  struct length_verify_baton_t *lvb = baton;
  apr_size_t requested_len = *len;

  FUNC0(FUNC3(lvb->inner, buffer, len));

  if (*len > lvb->remaining)
    return FUNC2(SVN_ERR_DIFF_UNEXPECTED_DATA, NULL,
                            FUNC1("Base85 data expands to longer than declared "
                              "filesize"));
  else if (requested_len > *len && *len != lvb->remaining)
    return FUNC2(SVN_ERR_DIFF_UNEXPECTED_DATA, NULL,
                            FUNC1("Base85 data expands to smaller than declared "
                              "filesize"));

  lvb->remaining -= *len;

  return SVN_NO_ERROR;
}
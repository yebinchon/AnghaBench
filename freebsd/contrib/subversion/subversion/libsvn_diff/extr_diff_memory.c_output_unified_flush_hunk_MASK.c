#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {TYPE_2__* hunk; scalar_t__* hunk_start; scalar_t__* hunk_length; int /*<<< orphan*/  output_stream; int /*<<< orphan*/  pool; int /*<<< orphan*/  header_encoding; scalar_t__ context_size; } ;
typedef  TYPE_1__ output_baton_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  scalar_t__ apr_off_t ;
struct TYPE_7__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  unified_output_context ; 

__attribute__((used)) static svn_error_t *
FUNC7(output_baton_t *baton,
                          const char *hunk_delimiter)
{
  apr_off_t target_token;
  apr_size_t hunk_len;
  apr_off_t old_start;
  apr_off_t new_start;

  if (FUNC5(baton->hunk))
    return SVN_NO_ERROR;

  FUNC3(baton->pool);

  /* Write the trailing context */
  target_token = baton->hunk_start[0] + baton->hunk_length[0]
                 + baton->context_size;
  FUNC0(FUNC1(baton, 0 /*original*/,
                                     unified_output_context,
                                     target_token));
  if (hunk_delimiter == NULL)
    hunk_delimiter = "@@";

  old_start = baton->hunk_start[0];
  new_start = baton->hunk_start[1];

  /* If the file is non-empty, convert the line indexes from
     zero based to one based */
  if (baton->hunk_length[0])
    old_start++;
  if (baton->hunk_length[1])
    new_start++;

  /* Write the hunk header */
  FUNC0(FUNC2(
            baton->output_stream, baton->header_encoding, hunk_delimiter,
            old_start, baton->hunk_length[0],
            new_start, baton->hunk_length[1],
            NULL /* hunk_extra_context */,
            baton->pool));

  hunk_len = baton->hunk->len;
  FUNC0(FUNC4(baton->output_stream,
                           baton->hunk->data, &hunk_len));

  /* Prepare for the next hunk */
  baton->hunk_length[0] = 0;
  baton->hunk_length[1] = 0;
  baton->hunk_start[0] = 0;
  baton->hunk_start[1] = 0;
  FUNC6(baton->hunk);

  return SVN_NO_ERROR;
}
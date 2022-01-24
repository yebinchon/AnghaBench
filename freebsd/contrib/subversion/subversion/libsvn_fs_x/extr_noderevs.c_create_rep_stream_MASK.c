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
typedef  int /*<<< orphan*/  svn_packed__int_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_packed__int_stream_t *
FUNC1(svn_packed__int_stream_t *parent)
{
  svn_packed__int_stream_t *stream
    = FUNC0(parent, FALSE, FALSE);

  /* sub-streams for members - except for checksums */
  /* has_sha1 */
  FUNC0(stream, FALSE, FALSE);

  /* rev, item_index, size, expanded_size */
  FUNC0(stream, TRUE, FALSE);
  FUNC0(stream, FALSE, FALSE);
  FUNC0(stream, FALSE, FALSE);
  FUNC0(stream, FALSE, FALSE);

  return stream;
}
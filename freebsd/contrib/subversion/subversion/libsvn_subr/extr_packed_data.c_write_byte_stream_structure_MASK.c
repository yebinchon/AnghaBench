#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_5__ {struct TYPE_5__* first_substream; TYPE_1__* packed; int /*<<< orphan*/  lengths_stream_index; struct TYPE_5__* next; } ;
typedef  TYPE_2__ svn_packed__byte_stream_t ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(svn_stringbuf_t* tree_struct,
                            svn_packed__byte_stream_t* stream)
{
  /* for this and all siblings */
  for (; stream; stream = stream->next)
    {
      /* this stream's structure and size */
      FUNC0(tree_struct, 0);
      FUNC0(tree_struct, stream->lengths_stream_index);
      FUNC0(tree_struct, stream->packed->len);

      /* followed by all its sub-streams */
      FUNC1(tree_struct, stream->first_substream);
    }
}
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
struct ui_stream {int /*<<< orphan*/  stream; } ;
struct ui_out {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 struct cleanup* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_out*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_out*,char const*,char*) ; 
 int /*<<< orphan*/  xfree ; 

void
FUNC6 (struct ui_out *uiout,
		     const char *fldname,
		     struct ui_stream *buf)
{
  long length;
  char *buffer = FUNC3 (buf->stream, &length);
  struct cleanup *old_cleanup = FUNC1 (xfree, buffer);
  if (length > 0)
    FUNC5 (uiout, fldname, buffer);
  else
    FUNC4 (uiout, fldname);
  FUNC2 (buf->stream);
  FUNC0 (old_cleanup);
}
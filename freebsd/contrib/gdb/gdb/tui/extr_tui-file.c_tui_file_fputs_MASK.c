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
struct ui_file {int dummy; } ;
struct tui_stream {scalar_t__ ts_streamtype; int /*<<< orphan*/  ts_strbuf; } ;

/* Variables and functions */
 scalar_t__ astring ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 struct tui_stream* FUNC4 (struct ui_file*) ; 

void
FUNC5 (const char *linebuffer, struct ui_file *file)
{
  struct tui_stream *stream = FUNC4 (file);

  if (stream->ts_streamtype == astring)
    {
      FUNC2 (FUNC1 (linebuffer), file);
      FUNC0 (stream->ts_strbuf, linebuffer);
    }
  else
    {
      FUNC3 (linebuffer);
    }
}
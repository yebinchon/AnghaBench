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
struct tui_stream {scalar_t__ ts_buflen; int /*<<< orphan*/ * ts_strbuf; int /*<<< orphan*/ * ts_filestream; int /*<<< orphan*/  ts_streamtype; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  afile ; 
 struct ui_file* FUNC0 () ; 
 struct tui_stream* FUNC1 (struct ui_file*) ; 

struct ui_file *
FUNC2 (FILE *stream)
{
  struct ui_file *file = FUNC0 ();
  struct tui_stream *tmpstream = FUNC1 (file);
  tmpstream->ts_streamtype = afile;
  tmpstream->ts_filestream = stream;
  tmpstream->ts_strbuf = NULL;
  tmpstream->ts_buflen = 0;
  return file;
}
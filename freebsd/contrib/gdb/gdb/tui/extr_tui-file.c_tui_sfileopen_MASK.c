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
struct tui_stream {char* ts_strbuf; int ts_buflen; int /*<<< orphan*/ * ts_filestream; int /*<<< orphan*/  ts_streamtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  astring ; 
 struct ui_file* FUNC0 () ; 
 struct tui_stream* FUNC1 (struct ui_file*) ; 
 char* FUNC2 (int) ; 

struct ui_file *
FUNC3 (int n)
{
  struct ui_file *file = FUNC0 ();
  struct tui_stream *tmpstream = FUNC1 (file);
  tmpstream->ts_streamtype = astring;
  tmpstream->ts_filestream = NULL;
  if (n > 0)
    {
      tmpstream->ts_strbuf = FUNC2 ((n + 1) * sizeof (char));
      tmpstream->ts_strbuf[0] = '\0';
    }
  else
    /* Do not allocate the buffer now.  The first time something is printed
       one will be allocated by tui_file_adjust_strbuf()  */
    tmpstream->ts_strbuf = NULL;
  tmpstream->ts_buflen = n;
  return file;
}
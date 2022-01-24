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
struct type {int dummy; } ;
struct tui_data_element {int /*<<< orphan*/  content; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int MAX_REGISTER_SIZE ; 
 scalar_t__ FUNC0 (struct type*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*,char const*) ; 
 struct ui_file* gdb_stdout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ui_file*,struct frame_info*,int,int) ; 
 char* FUNC4 (struct gdbarch*,int) ; 
 struct type* FUNC5 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct frame_info*,int,char*) ; 
 struct cleanup* FUNC7 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ pagination_enabled ; 
 int /*<<< orphan*/  FUNC8 (char*,struct type*,float,int,struct ui_file*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 char* FUNC10 (char*,char) ; 
 char* FUNC11 (struct ui_file*) ; 
 int /*<<< orphan*/  tui_restore_gdbout ; 
 struct ui_file* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15 (struct gdbarch *gdbarch, struct frame_info *frame,
                     struct tui_data_element *data_element, int regnum)
{
  struct ui_file *stream;
  struct ui_file *old_stdout;
  const char *name;
  struct cleanup *cleanups;
  char *p, *s;
  int pos;
  struct type *type = FUNC5 (gdbarch, regnum);

  name = FUNC4 (gdbarch, regnum);
  if (name == 0)
    {
      return;
    }
  
  pagination_enabled = 0;
  old_stdout = gdb_stdout;
  stream = FUNC12 (256);
  gdb_stdout = stream;
  cleanups = FUNC7 (tui_restore_gdbout, (void*) old_stdout);
  if (FUNC0 (type) != 0 && 0)
    {
      char buf[MAX_REGISTER_SIZE];
      int len;

      len = FUNC9 (current_gdbarch, regnum);
      FUNC2 (stream, "%-14s ", name);
      FUNC6 (frame, regnum, buf);
      FUNC8 (buf, type, 'f', len, stream);
    }
  else
    {
      FUNC3 (current_gdbarch, stream,
                                    frame, regnum, 1);
    }

  /* Save formatted output in the buffer.  */
  p = FUNC11 (stream);

  /* Remove the possible \n.  */
  s = FUNC10 (p, '\n');
  if (s && s[1] == 0)
    *s = 0;

  FUNC13 (data_element->content);
  data_element->content = FUNC14 (p);
  FUNC1 (cleanups);
}
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
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ BFD_ENDIAN_BIG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int MAX_REGISTER_SIZE ; 
 scalar_t__ TARGET_BYTE_ORDER ; 
 int /*<<< orphan*/  Val_pretty_default ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ *,int*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mi_error_message ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,struct ui_stream*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct ui_stream*) ; 
 struct ui_stream* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC16 (int regnum, int format)
{
  char raw_buffer[MAX_REGISTER_SIZE];
  char virtual_buffer[MAX_REGISTER_SIZE];
  int optim;
  int realnum;
  CORE_ADDR addr;
  enum lval_type lval;
  static struct ui_stream *stb = NULL;

  stb = FUNC13 (uiout);

  if (format == 'N')
    format = 0;

  FUNC5 (deprecated_selected_frame, regnum, &optim, &lval, &addr,
		  &realnum, raw_buffer);

  if (optim)
    {
      FUNC15 (&mi_error_message, "Optimized out");
      return -1;
    }

  /* Convert raw data to virtual format if necessary.  */

  if (FUNC1 ()
      && FUNC0 (regnum))
    {
      FUNC2 (regnum,
				   FUNC7 (current_gdbarch, regnum),
				   raw_buffer, virtual_buffer);
    }
  else
    FUNC6 (virtual_buffer, raw_buffer, FUNC4 (regnum));

  if (format == 'r')
    {
      int j;
      char *ptr, buf[1024];

      FUNC9 (buf, "0x");
      ptr = buf + 2;
      for (j = 0; j < FUNC3 (regnum); j++)
	{
	  int idx = TARGET_BYTE_ORDER == BFD_ENDIAN_BIG ? j
	  : FUNC3 (regnum) - 1 - j;
	  FUNC8 (ptr, "%02x", (unsigned char) raw_buffer[idx]);
	  ptr += 2;
	}
      FUNC11 (uiout, "value", buf);
      /*fputs_filtered (buf, gdb_stdout); */
    }
  else
    {
      FUNC14 (FUNC7 (current_gdbarch, regnum), virtual_buffer, 0, 0,
		 stb->stream, format, 1, 0, Val_pretty_default);
      FUNC10 (uiout, "value", stb);
      FUNC12 (stb);
    }
  return 1;
}
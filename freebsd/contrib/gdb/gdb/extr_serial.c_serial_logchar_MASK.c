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

/* Variables and functions */
#define  SERIAL_BREAK 131 
#define  SERIAL_EOF 130 
#define  SERIAL_ERROR 129 
#define  SERIAL_TIMEOUT 128 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ logbase_ascii ; 
 scalar_t__ logbase_hex ; 
 scalar_t__ logbase_octal ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int serial_current_type ; 
 scalar_t__ serial_logbase ; 

__attribute__((used)) static void
FUNC5 (struct ui_file *stream, int ch_type, int ch, int timeout)
{
  if (ch_type != serial_current_type)
    {
      FUNC0 (stream, "\n%c ", ch_type);
      serial_current_type = ch_type;
    }

  if (serial_logbase != logbase_ascii)
    FUNC1 (' ', stream);

  switch (ch)
    {
    case SERIAL_TIMEOUT:
      FUNC0 (stream, "<Timeout: %d seconds>", timeout);
      return;
    case SERIAL_ERROR:
      FUNC0 (stream, "<Error: %s>", FUNC4 (errno));
      return;
    case SERIAL_EOF:
      FUNC2 ("<Eof>", stream);
      return;
    case SERIAL_BREAK:
      FUNC2 ("<Break>", stream);
      return;
    default:
      if (serial_logbase == logbase_hex)
	FUNC0 (stream, "%02x", ch & 0xff);
      else if (serial_logbase == logbase_octal)
	FUNC0 (stream, "%03o", ch & 0xff);
      else
	switch (ch)
	  {
	  case '\\':
	    FUNC2 ("\\\\", stream);
	    break;
	  case '\b':
	    FUNC2 ("\\b", stream);
	    break;
	  case '\f':
	    FUNC2 ("\\f", stream);
	    break;
	  case '\n':
	    FUNC2 ("\\n", stream);
	    break;
	  case '\r':
	    FUNC2 ("\\r", stream);
	    break;
	  case '\t':
	    FUNC2 ("\\t", stream);
	    break;
	  case '\v':
	    FUNC2 ("\\v", stream);
	    break;
	  default:
	    FUNC0 (stream, FUNC3 (ch) ? "%c" : "\\x%02x", ch & 0xFF);
	    break;
	  }
    }
}
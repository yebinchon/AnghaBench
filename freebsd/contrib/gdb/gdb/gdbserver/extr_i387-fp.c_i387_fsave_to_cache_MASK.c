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
struct i387_fsave {unsigned long fioff; unsigned long fooff; int fctrl; int fstat; int ftag; int fiseg; int foseg; int fop; int /*<<< orphan*/ * st_space; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long*) ; 

void
FUNC3 (const void *buf)
{
  struct i387_fsave *fp = (struct i387_fsave *) buf;
  int i;
  int st0_regnum = FUNC0 ("st0");
  unsigned long val;

  for (i = 0; i < 8; i++)
    FUNC1 (i + st0_regnum, ((char *) &fp->st_space[0]) + i * 10);

  FUNC2 ("fioff", &fp->fioff);
  FUNC2 ("fooff", &fp->fooff);
  
  /* Some registers are 16-bit.  */
  val = fp->fctrl & 0xFFFF;
  FUNC2 ("fctrl", &val);

  val = fp->fstat & 0xFFFF;
  FUNC2 ("fstat", &val);

  val = fp->ftag & 0xFFFF;
  FUNC2 ("ftag", &val);

  val = fp->fiseg & 0xFFFF;
  FUNC2 ("fiseg", &val);

  val = fp->foseg & 0xFFFF;
  FUNC2 ("foseg", &val);

  val = (fp->fop) & 0x7FF;
  FUNC2 ("fop", &val);
}
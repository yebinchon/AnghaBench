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
struct i387_fxsave {unsigned long fioff; unsigned long fooff; unsigned long mxcsr; int fctrl; int fstat; int fiseg; int foseg; int fop; int /*<<< orphan*/ * xmm_space; int /*<<< orphan*/ * st_space; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (struct i387_fxsave*,int) ; 
 int num_xmm_registers ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long*) ; 

void
FUNC4 (const void *buf)
{
  struct i387_fxsave *fp = (struct i387_fxsave *) buf;
  int i, top;
  int st0_regnum = FUNC0 ("st0");
  int xmm0_regnum = FUNC0 ("xmm0");
  unsigned long val;

  for (i = 0; i < 8; i++)
    FUNC2 (i + st0_regnum, ((char *) &fp->st_space[0]) + i * 16);
  for (i = 0; i < num_xmm_registers; i++)
    FUNC2 (i + xmm0_regnum, ((char *) &fp->xmm_space[0]) + i * 16);

  FUNC3 ("fioff", &fp->fioff);
  FUNC3 ("fooff", &fp->fooff);
  FUNC3 ("mxcsr", &fp->mxcsr);
  
  /* Some registers are 16-bit.  */
  val = fp->fctrl & 0xFFFF;
  FUNC3 ("fctrl", &val);

  val = fp->fstat & 0xFFFF;
  FUNC3 ("fstat", &val);

  /* Generate the form of ftag data that GDB expects.  */
  top = (fp->fstat >> 11) & 0x7;
  val = 0;
  for (i = 7; i >= 0; i--)
    {
      int tag;
      if (val & (1 << i))
	tag = FUNC1 (fp, (i + 8 - top) % 8);
      else
	tag = 3;
      val |= tag << (2 * i);
    }
  FUNC3 ("ftag", &val);

  val = fp->fiseg & 0xFFFF;
  FUNC3 ("fiseg", &val);

  val = fp->foseg & 0xFFFF;
  FUNC3 ("foseg", &val);

  val = (fp->fop) & 0x7FF;
  FUNC3 ("fop", &val);
}
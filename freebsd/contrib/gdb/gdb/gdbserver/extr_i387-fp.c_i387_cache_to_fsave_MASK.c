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
struct i387_fsave {unsigned long fioff; unsigned long fooff; unsigned long fop; int /*<<< orphan*/  foseg; int /*<<< orphan*/  fiseg; int /*<<< orphan*/  ftag; int /*<<< orphan*/  fstat; int /*<<< orphan*/  fctrl; int /*<<< orphan*/ * st_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long*) ; 
 int FUNC2 (char*) ; 

void
FUNC3 (void *buf)
{
  struct i387_fsave *fp = (struct i387_fsave *) buf;
  int i;
  int st0_regnum = FUNC2 ("st0");
  unsigned long val, val2;

  for (i = 0; i < 8; i++)
    FUNC0 (i + st0_regnum, ((char *) &fp->st_space[0]) + i * 10);

  FUNC1 ("fioff", &fp->fioff);
  FUNC1 ("fooff", &fp->fooff);
  
  /* This one's 11 bits... */
  FUNC1 ("fop", &val2);
  fp->fop = (val2 & 0x7FF) | (fp->fop & 0xF800);

  /* Some registers are 16-bit.  */
  FUNC1 ("fctrl", &val);
  *(unsigned short *) &fp->fctrl = val;

  FUNC1 ("fstat", &val);
  val &= 0xFFFF;
  *(unsigned short *) &fp->fstat = val;

  FUNC1 ("ftag", &val);
  val &= 0xFFFF;
  *(unsigned short *) &fp->ftag = val;

  FUNC1 ("fiseg", &val);
  val &= 0xFFFF;
  *(unsigned short *) &fp->fiseg = val;

  FUNC1 ("foseg", &val);
  val &= 0xFFFF;
  *(unsigned short *) &fp->foseg = val;
}
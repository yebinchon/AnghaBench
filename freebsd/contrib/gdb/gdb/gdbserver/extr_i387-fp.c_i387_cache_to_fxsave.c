
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i387_fxsave {unsigned long fioff; unsigned long fooff; unsigned long mxcsr; unsigned long fop; int foseg; int fiseg; int ftag; int fstat; int fctrl; int * xmm_space; int * st_space; } ;


 int collect_register (int,char*) ;
 int collect_register_by_name (char*,unsigned long*) ;
 int find_regno (char*) ;
 int num_xmm_registers ;

void
i387_cache_to_fxsave (void *buf)
{
  struct i387_fxsave *fp = (struct i387_fxsave *) buf;
  int i;
  int st0_regnum = find_regno ("st0");
  int xmm0_regnum = find_regno ("xmm0");
  unsigned long val, val2;

  for (i = 0; i < 8; i++)
    collect_register (i + st0_regnum, ((char *) &fp->st_space[0]) + i * 16);
  for (i = 0; i < num_xmm_registers; i++)
    collect_register (i + xmm0_regnum, ((char *) &fp->xmm_space[0]) + i * 16);

  collect_register_by_name ("fioff", &fp->fioff);
  collect_register_by_name ("fooff", &fp->fooff);
  collect_register_by_name ("mxcsr", &fp->mxcsr);


  collect_register_by_name ("fop", &val2);
  fp->fop = (val2 & 0x7FF) | (fp->fop & 0xF800);


  collect_register_by_name ("fctrl", &val);
  *(unsigned short *) &fp->fctrl = val;

  collect_register_by_name ("fstat", &val);
  val &= 0xFFFF;
  *(unsigned short *) &fp->fstat = val;


  collect_register_by_name ("ftag", &val);
  val &= 0xFFFF;
  for (i = 7; i >= 0; i--)
    {
      int tag = (val >> (i * 2)) & 3;

      if (tag != 3)
 val2 |= (1 << i);
    }
  *(unsigned short *) &fp->ftag = val2;

  collect_register_by_name ("fiseg", &val);
  val &= 0xFFFF;
  *(unsigned short *) &fp->fiseg = val;

  collect_register_by_name ("foseg", &val);
  val &= 0xFFFF;
  *(unsigned short *) &fp->foseg = val;
}

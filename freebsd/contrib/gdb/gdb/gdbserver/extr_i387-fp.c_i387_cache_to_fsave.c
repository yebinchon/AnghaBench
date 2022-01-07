
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i387_fsave {unsigned long fioff; unsigned long fooff; unsigned long fop; int foseg; int fiseg; int ftag; int fstat; int fctrl; int * st_space; } ;


 int collect_register (int,char*) ;
 int collect_register_by_name (char*,unsigned long*) ;
 int find_regno (char*) ;

void
i387_cache_to_fsave (void *buf)
{
  struct i387_fsave *fp = (struct i387_fsave *) buf;
  int i;
  int st0_regnum = find_regno ("st0");
  unsigned long val, val2;

  for (i = 0; i < 8; i++)
    collect_register (i + st0_regnum, ((char *) &fp->st_space[0]) + i * 10);

  collect_register_by_name ("fioff", &fp->fioff);
  collect_register_by_name ("fooff", &fp->fooff);


  collect_register_by_name ("fop", &val2);
  fp->fop = (val2 & 0x7FF) | (fp->fop & 0xF800);


  collect_register_by_name ("fctrl", &val);
  *(unsigned short *) &fp->fctrl = val;

  collect_register_by_name ("fstat", &val);
  val &= 0xFFFF;
  *(unsigned short *) &fp->fstat = val;

  collect_register_by_name ("ftag", &val);
  val &= 0xFFFF;
  *(unsigned short *) &fp->ftag = val;

  collect_register_by_name ("fiseg", &val);
  val &= 0xFFFF;
  *(unsigned short *) &fp->fiseg = val;

  collect_register_by_name ("foseg", &val);
  val &= 0xFFFF;
  *(unsigned short *) &fp->foseg = val;
}

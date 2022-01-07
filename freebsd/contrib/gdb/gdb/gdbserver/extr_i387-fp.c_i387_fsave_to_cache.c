
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i387_fsave {unsigned long fioff; unsigned long fooff; int fctrl; int fstat; int ftag; int fiseg; int foseg; int fop; int * st_space; } ;


 int find_regno (char*) ;
 int supply_register (int,char*) ;
 int supply_register_by_name (char*,unsigned long*) ;

void
i387_fsave_to_cache (const void *buf)
{
  struct i387_fsave *fp = (struct i387_fsave *) buf;
  int i;
  int st0_regnum = find_regno ("st0");
  unsigned long val;

  for (i = 0; i < 8; i++)
    supply_register (i + st0_regnum, ((char *) &fp->st_space[0]) + i * 10);

  supply_register_by_name ("fioff", &fp->fioff);
  supply_register_by_name ("fooff", &fp->fooff);


  val = fp->fctrl & 0xFFFF;
  supply_register_by_name ("fctrl", &val);

  val = fp->fstat & 0xFFFF;
  supply_register_by_name ("fstat", &val);

  val = fp->ftag & 0xFFFF;
  supply_register_by_name ("ftag", &val);

  val = fp->fiseg & 0xFFFF;
  supply_register_by_name ("fiseg", &val);

  val = fp->foseg & 0xFFFF;
  supply_register_by_name ("foseg", &val);

  val = (fp->fop) & 0x7FF;
  supply_register_by_name ("fop", &val);
}

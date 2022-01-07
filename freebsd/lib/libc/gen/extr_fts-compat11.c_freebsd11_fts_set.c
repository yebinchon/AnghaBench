
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fts_instr; } ;
typedef TYPE_1__ FTSENT11 ;
typedef int FTS11 ;


 int EINVAL ;
 int FTS_AGAIN ;
 int FTS_FOLLOW ;
 int FTS_NOINSTR ;
 int FTS_SKIP ;
 int errno ;

int
freebsd11_fts_set(FTS11 *sp, FTSENT11 *p, int instr)
{
 if (instr != 0 && instr != FTS_AGAIN && instr != FTS_FOLLOW &&
     instr != FTS_NOINSTR && instr != FTS_SKIP) {
  errno = EINVAL;
  return (1);
 }
 p->fts_instr = instr;
 return (0);
}

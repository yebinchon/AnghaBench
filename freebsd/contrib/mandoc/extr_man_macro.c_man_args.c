
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_man {int roff; } ;


 int assert (int) ;
 char* roff_getarg (int ,char**,int,int*) ;

__attribute__((used)) static int
man_args(struct roff_man *man, int line, int *pos, char *buf, char **v)
{
 char *start;

 assert(*pos);
 *v = start = buf + *pos;
 assert(' ' != *start);

 if ('\0' == *start)
  return 0;

 *v = roff_getarg(man->roff, v, line, pos);
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {int dummy; } ;


 int ROFFNUM_WHITE ;
 int roff_evalnum (struct roff*,int,char const*,int*,int*,int) ;
 int roff_getnum (char const*,int*,int*,int) ;

__attribute__((used)) static int
roff_evalpar(struct roff *r, int ln,
 const char *v, int *pos, int *res, int flags)
{

 if ('(' != v[*pos])
  return roff_getnum(v, pos, res, flags);

 (*pos)++;
 if ( ! roff_evalnum(r, ln, v, pos, res, flags | ROFFNUM_WHITE))
  return 0;







 if (')' == v[*pos])
  (*pos)++;
 else if (((void*)0) == res)
  return 0;

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int recno_t ;
typedef int SCR ;
typedef int CHAR_T ;


 scalar_t__ ISBLANK (int ) ;
 scalar_t__ db_eget (int *,int ,int **,size_t*,int*) ;

int
nonblank(
 SCR *sp,
 recno_t lno,
 size_t *cnop)
{
 CHAR_T *p;
 size_t cnt, len, off;
 int isempty;


 off = *cnop;
 *cnop = 0;


 if (db_eget(sp, lno, &p, &len, &isempty))
  return (!isempty);


 if (len == 0 || off >= len)
  return (0);

 for (cnt = off, p = &p[off],
     len -= off; len && ISBLANK(*p); ++cnt, ++p, --len);


 *cnop = len ? cnt : cnt - 1;
 return (0);
}

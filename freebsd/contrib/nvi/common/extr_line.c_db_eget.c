
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int recno_t ;
typedef int SCR ;
typedef int CHAR_T ;


 int db_err (int *,int) ;
 int db_get (int *,int,int ,int **,size_t*) ;
 scalar_t__ db_last (int *,int*) ;

int
db_eget(
 SCR *sp,
 recno_t lno,
 CHAR_T **pp,
 size_t *lenp,
 int *isemptyp)
{
 recno_t l1;

 if (isemptyp != ((void*)0))
  *isemptyp = 0;


 if (!db_get(sp, lno, 0, pp, lenp))
  return (0);






 if ((lno == 0 || lno == 1) && db_last(sp, &l1))
  return (1);


 if ((lno != 0 && lno != 1) || l1 != 0) {
  db_err(sp, lno);
  return (1);
 }

 if (isemptyp != ((void*)0))
  *isemptyp = 1;

 return (1);
}

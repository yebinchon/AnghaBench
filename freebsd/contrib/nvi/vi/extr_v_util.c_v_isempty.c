
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CHAR_T ;


 int isblank (int ) ;

int
v_isempty(CHAR_T *p, size_t len)
{
 for (; len--; ++p)
  if (!isblank(*p))
   return (0);
 return (1);
}

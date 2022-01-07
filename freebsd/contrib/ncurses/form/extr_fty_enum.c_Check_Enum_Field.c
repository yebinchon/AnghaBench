
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** kwds; int checkcase; int checkunique; } ;
typedef TYPE_1__ enumARG ;
typedef int FIELD ;


 int Compare (unsigned char*,unsigned char*,int) ;
 int EXACT ;
 int FALSE ;
 int NOMATCH ;
 int TRUE ;
 scalar_t__ field_buffer (int *,int ) ;
 int set_field_buffer (int *,int ,char*) ;

__attribute__((used)) static bool
Check_Enum_Field(FIELD *field, const void *argp)
{
  char **kwds = ((const enumARG *)argp)->kwds;
  bool ccase = ((const enumARG *)argp)->checkcase;
  bool unique = ((const enumARG *)argp)->checkunique;
  unsigned char *bp = (unsigned char *)field_buffer(field, 0);
  char *s, *t, *p;
  int res;

  while (kwds && (s = (*kwds++)))
    {
      if ((res = Compare((unsigned char *)s, bp, ccase)) != NOMATCH)
 {
   p = t = s;
   if ((unique && res != EXACT))
     {
       while (kwds && (p = *kwds++))
  {
    if ((res = Compare((unsigned char *)p, bp, ccase)) != NOMATCH)
      {
        if (res == EXACT)
   {
     t = p;
     break;
   }
        else
   t = (char *)0;
      }
  }
     }
   if (t)
     {
       set_field_buffer(field, 0, t);
       return TRUE;
     }
   if (!p)
     break;
 }
    }
  return FALSE;
}

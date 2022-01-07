
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** kwds; int checkcase; int count; } ;
typedef TYPE_1__ enumARG ;
typedef int FIELD ;


 scalar_t__ Compare (unsigned char const*,unsigned char*,int) ;
 scalar_t__ EXACT ;
 int FALSE ;
 int TRUE ;
 scalar_t__ dummy ;
 scalar_t__ field_buffer (int *,int ) ;
 int set_field_buffer (int *,int ,char*) ;

__attribute__((used)) static bool
Next_Enum(FIELD *field, const void *argp)
{
  const enumARG *args = (const enumARG *)argp;
  char **kwds = args->kwds;
  bool ccase = args->checkcase;
  int cnt = args->count;
  unsigned char *bp = (unsigned char *)field_buffer(field, 0);

  if (kwds)
    {
      while (cnt--)
 {
   if (Compare((unsigned char *)(*kwds++), bp, ccase) == EXACT)
     break;
 }
      if (cnt <= 0)
 kwds = args->kwds;
      if ((cnt >= 0) || (Compare((const unsigned char *)dummy, bp, ccase) == EXACT))
 {
   set_field_buffer(field, 0, *kwds);
   return TRUE;
 }
    }
  return FALSE;
}

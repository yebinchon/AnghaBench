
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 int TYPE_LENGTH (int ) ;
 char* VALUE_CONTENTS (struct value*) ;
 int VALUE_TYPE (struct value*) ;

__attribute__((used)) static int
value_strcmp (struct value *arg1, struct value *arg2)
{
  int len1 = TYPE_LENGTH (VALUE_TYPE (arg1));
  int len2 = TYPE_LENGTH (VALUE_TYPE (arg2));
  char *s1 = VALUE_CONTENTS (arg1);
  char *s2 = VALUE_CONTENTS (arg2);
  int i, len = len1 < len2 ? len1 : len2;

  for (i = 0; i < len; i++)
    {
      if (s1[i] < s2[i])
        return -1;
      else if (s1[i] > s2[i])
        return 1;
      else
        continue;
    }

  if (len1 < len2)
    return -1;
  else if (len1 > len2)
    return 1;
  else
    return 0;
}

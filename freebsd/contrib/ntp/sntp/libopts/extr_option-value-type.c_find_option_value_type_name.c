
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* vtp_name; } ;
typedef TYPE_1__ option_value_type_map_t ;


 scalar_t__ option_value_type_hash (char const*,unsigned int) ;
 TYPE_1__ const* option_value_type_table ;
 int strncmp (char const*,char const*,unsigned int) ;

__attribute__((used)) static inline const option_value_type_map_t *
find_option_value_type_name (register const char *str, register unsigned int len)
{
  if (len <= 14 && len >= 3)
    {
      register int key = (int)option_value_type_hash (str, len);

      if (key <= 17 && key >= 0)
        {
          register const char *s = option_value_type_table[key].vtp_name;

          if (*str == *s && !strncmp (str + 1, s + 1, len - 1) && s[len] == '\0')
            return &option_value_type_table[key];
        }
    }
  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef size_t apr_size_t ;


 int FALSE ;
 int TRUE ;
 size_t strlen (char const*) ;
 int svn_ctype_isalnum (char) ;

__attribute__((used)) static svn_boolean_t
is_hostname(const char *str)
{
  apr_size_t i, len = strlen(str);

  for (i = 0; i < len; i++)
    {
      char c = str[i];


      if (c == '-')
        {
          if (i + 1 != len)
            {
              if (str[i + 1] == '.')
                return FALSE;
            }
          else
            return FALSE;


          if (i == 0)
            return FALSE;
          else
            if (str[i - 1] == '.')
              return FALSE;
        }
      else if (c != '*' && c != '.' && !svn_ctype_isalnum(c))
        return FALSE;
    }

  return TRUE;
}

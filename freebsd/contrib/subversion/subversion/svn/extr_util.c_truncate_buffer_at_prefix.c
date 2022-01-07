
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;


 int assert (int) ;
 int strlen (char*) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static void
truncate_buffer_at_prefix(apr_size_t *new_len,
                          char *buffer,
                          const char *prefix)
{
  char *substring = buffer;

  assert(buffer && prefix);


  if (new_len)
    *new_len = strlen(buffer);

  while (1)
    {

      substring = strstr(substring, prefix);
      if (! substring)
        return;




      if ((substring == buffer)
          || (*(substring - 1) == '\r')
          || (*(substring - 1) == '\n'))
        {
          *substring = '\0';
          if (new_len)
            *new_len = substring - buffer;
        }
      else if (substring)
        {


          substring++;
        }
    }


}

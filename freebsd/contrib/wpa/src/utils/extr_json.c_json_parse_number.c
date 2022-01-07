
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,char const*,size_t) ;

__attribute__((used)) static int json_parse_number(const char **json_pos, const char *end,
        int *ret_val)
{
 const char *pos = *json_pos;
 size_t len;
 char *str;

 for (; pos < end; pos++) {
  if (*pos != '-' && (*pos < '0' || *pos > '9')) {
   pos--;
   break;
  }
 }
 if (pos == end)
  pos--;
 if (pos < *json_pos)
  return -1;
 len = pos - *json_pos + 1;
 str = os_malloc(len + 1);
 if (!str)
  return -1;
 os_memcpy(str, *json_pos, len);
 str[len] = '\0';

 *ret_val = atoi(str);
 os_free(str);
 *json_pos = pos;
 return 0;
}

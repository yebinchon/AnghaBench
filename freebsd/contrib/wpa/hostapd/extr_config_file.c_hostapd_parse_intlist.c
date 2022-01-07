
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int os_free (int*) ;
 int* os_malloc (int) ;
 char* os_strchr (char*,char) ;

__attribute__((used)) static int hostapd_parse_intlist(int **int_list, char *val)
{
 int *list;
 int count;
 char *pos, *end;

 os_free(*int_list);
 *int_list = ((void*)0);

 pos = val;
 count = 0;
 while (*pos != '\0') {
  if (*pos == ' ')
   count++;
  pos++;
 }

 list = os_malloc(sizeof(int) * (count + 2));
 if (list == ((void*)0))
  return -1;
 pos = val;
 count = 0;
 while (*pos != '\0') {
  end = os_strchr(pos, ' ');
  if (end)
   *end = '\0';

  list[count++] = atoi(pos);
  if (!end)
   break;
  pos = end + 1;
 }
 list[count] = -1;

 *int_list = list;
 return 0;
}

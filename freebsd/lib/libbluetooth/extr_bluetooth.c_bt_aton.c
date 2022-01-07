
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* b; } ;
typedef TYPE_1__ bdaddr_t ;


 int bt_hex_byte (char const*) ;
 int bt_hex_nibble (char const) ;
 int memset (TYPE_1__*,int ,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

int
bt_aton(char const *str, bdaddr_t *ba)
{
 int i, b;
 char *end = ((void*)0);

 memset(ba, 0, sizeof(*ba));

 for (i = 5, end = strchr(str, ':');
      i > 0 && *str != '\0' && end != ((void*)0);
      i --, str = end + 1, end = strchr(str, ':')) {
  switch (end - str) {
  case 1:
   b = bt_hex_nibble(str[0]);
   break;

  case 2:
   b = bt_hex_byte(str);
   break;

  default:
   b = -1;
   break;
  }

  if (b < 0)
   return (0);

  ba->b[i] = b;
 }

 if (i != 0 || end != ((void*)0) || *str == 0)
  return (0);

 switch (strlen(str)) {
 case 1:
  b = bt_hex_nibble(str[0]);
  break;

 case 2:
  b = bt_hex_byte(str);
  break;

 default:
  b = -1;
  break;
 }

 if (b < 0)
  return (0);

 ba->b[i] = b;

 return (1);
}

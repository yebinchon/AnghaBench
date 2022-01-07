
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* b; } ;
typedef TYPE_1__ bdaddr_t ;


 int sprintf (char*,char*,int,int,int,int,int,int) ;

char const *
bt_ntoa(bdaddr_t const *ba, char *str)
{
 static char buffer[24];

 if (str == ((void*)0))
  str = buffer;

 sprintf(str, "%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x",
  ba->b[5], ba->b[4], ba->b[3], ba->b[2], ba->b[1], ba->b[0]);

 return (str);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int value; } ;


 TYPE_1__* packettypes ;
 int sprintf (char*,char*,int) ;

const char *
packettype(int type)
{
 static char failed[100];
 int i = 0;

 while (packettypes[i].name != ((void*)0)) {
  if (packettypes[i].value == type)
   break;
  i++;
 }
 if (packettypes[i].name != ((void*)0))
  return packettypes[i].name;
 sprintf(failed, "unknown (type: %d)", type);
 return (failed);
}

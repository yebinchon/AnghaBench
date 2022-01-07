
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; char const* name; } ;


 TYPE_1__* device_types ;
 int nitems (TYPE_1__*) ;

__attribute__((used)) static const char *
device_typename(int type)
{
 int i;

 for (i = 0; i < nitems(device_types); i++)
  if (device_types[i].type == type)
   return (device_types[i].name);

 return ("<unknown>");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 scalar_t__ OF_getproplen (int ,char*) ;

__attribute__((used)) static int
OF_hasprop(phandle_t node, const char *prop)
{
 return (OF_getproplen(node, (char *)prop) > 0);
}

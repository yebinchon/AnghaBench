
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {char const* name; } ;



const char *
vm_name(struct vm *vm)
{
 return (vm->name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_var_ioc {scalar_t__ datasize; int * data; scalar_t__ attrib; int vendor; scalar_t__ namesize; int * name; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void
efi_var_reset(struct efi_var_ioc *var)
{
 var->name = ((void*)0);
 var->namesize = 0;
 memset(&var->vendor, 0, sizeof(var->vendor));
 var->attrib = 0;
 var->data = ((void*)0);
 var->datasize = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_MEMORY_TYPE ;
const char *
efi_memory_type(EFI_MEMORY_TYPE type)
{
 const char *types[] = {
     "Reserved",
     "LoaderCode",
     "LoaderData",
     "BootServicesCode",
     "BootServicesData",
     "RuntimeServicesCode",
     "RuntimeServicesData",
     "ConventionalMemory",
     "UnusableMemory",
     "ACPIReclaimMemory",
     "ACPIMemoryNVS",
     "MemoryMappedIO",
     "MemoryMappedIOPortSpace",
     "PalCode",
     "PersistentMemory"
 };

 switch (type) {
 case 131:
 case 137:
 case 136:
 case 140:
 case 139:
 case 130:
 case 129:
 case 138:
 case 128:
 case 141:
 case 142:
 case 135:
 case 134:
 case 133:
 case 132:
  return (types[type]);
 default:
  return ("Unknown");
 }
}

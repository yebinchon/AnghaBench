
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sysdecode_abi { ____Placeholder_sysdecode_abi } sysdecode_abi ;


 int INT_MAX ;






 int* cloudabi_errno_table ;
 int* linux_errtbl ;
 unsigned int nitems (int*) ;

int
sysdecode_abi_to_freebsd_errno(enum sysdecode_abi abi, int error)
{

 switch (abi) {
 case 131:
 case 130:
  return (error);

 case 129:
 case 128: {
  unsigned int i;





  for (i = 0; i < nitems(linux_errtbl); i++) {
   if (error == linux_errtbl[i])
    return (i);
  }
  break;
 }

 case 133:
 case 132:
  if (error >= 0 &&
      (unsigned int)error < nitems(cloudabi_errno_table))
   return (cloudabi_errno_table[error]);
  break;
 default:
  break;
 }
 return (INT_MAX);
}

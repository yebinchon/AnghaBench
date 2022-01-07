
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sysdecode_abi { ____Placeholder_sysdecode_abi } sysdecode_abi ;


 int ELAST ;
 int INT_MAX ;






 int* cloudabi_errno_table ;
 int* linux_errtbl ;
 unsigned int nitems (int*) ;

int
sysdecode_freebsd_to_abi_errno(enum sysdecode_abi abi, int error)
{

 switch (abi) {
 case 131:
 case 130:
  return (error);

 case 129:
 case 128:
  if (error >= 0 && error <= ELAST)
   return (linux_errtbl[error]);
  break;

 case 133:
 case 132: {
  unsigned int i;

  for (i = 0; i < nitems(cloudabi_errno_table); i++) {
   if (error == cloudabi_errno_table[i])
    return (i);
  }
  break;
 }
 default:
  break;
 }
 return (INT_MAX);
}

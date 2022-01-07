
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;







 int fcntl_fd_arg ;
 int fprintf (int *,char*,void*) ;
 int print_integer (int *,uintptr_t,int) ;
 int print_value (int *,int ,uintptr_t) ;
 int sysdecode_fcntl_fileflags (int *,uintptr_t,int*) ;

void
sysdecode_fcntl_arg(FILE *fp, int cmd, uintptr_t arg, int base)
{
 int rem;

 switch (cmd) {
 case 131:
  if (!print_value(fp, fcntl_fd_arg, arg))
      print_integer(fp, arg, base);
  break;
 case 130:
  if (!sysdecode_fcntl_fileflags(fp, arg, &rem))
   fprintf(fp, "%#x", rem);
  else if (rem != 0)
   fprintf(fp, "|%#x", rem);
  break;
 case 132:
 case 129:
 case 128:
  fprintf(fp, "%p", (void *)arg);
  break;
 default:
  print_integer(fp, arg, base);
  break;
 }
}

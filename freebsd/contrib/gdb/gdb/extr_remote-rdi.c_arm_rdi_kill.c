
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDIError_NoError ;
 int angel_RDI_open (int,int *,int *,int *) ;
 int gdb_config ;
 int printf_filtered (char*,int ) ;
 int rdi_error_message (int) ;

__attribute__((used)) static void
arm_rdi_kill (void)
{
  int rslt;

  rslt = angel_RDI_open (1, &gdb_config, ((void*)0), ((void*)0));
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_open: %s\n", rdi_error_message (rslt));
    }
}

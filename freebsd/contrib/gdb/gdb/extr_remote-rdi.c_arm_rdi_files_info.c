
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int RDIError_NoError ;
 int RDIInfo_Icebreaker ;
 int RDIInfo_Step ;
 int RDIInfo_Target ;
 int angel_RDI_info (int ,unsigned long*,unsigned long*) ;
 int printf_filtered (char*,...) ;
 int rdi_error_message (int) ;

__attribute__((used)) static void
arm_rdi_files_info (struct target_ops *ignore)
{
  char *file = "nothing";
  int rslt;
  unsigned long arg1, arg2;

  rslt = angel_RDI_info (RDIInfo_Target, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }
  if (arg1 & (1 << 15))
    printf_filtered ("Target supports Thumb code.\n");
  if (arg1 & (1 << 14))
    printf_filtered ("Target can do profiling.\n");
  if (arg1 & (1 << 4))
    printf_filtered ("Target is real hardware.\n");

  rslt = angel_RDI_info (RDIInfo_Step, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }
  printf_filtered ("Target can%s single-step.\n", (arg1 & 0x4 ? "" : "not"));

  rslt = angel_RDI_info (RDIInfo_Icebreaker, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }
  else
    printf_filtered ("Target includes an EmbeddedICE.\n");
}

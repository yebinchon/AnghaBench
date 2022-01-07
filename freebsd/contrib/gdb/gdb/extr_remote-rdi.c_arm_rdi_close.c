
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Adp_CloseDevice () ;
 int RDIError_NoError ;
 int angel_RDI_close () ;
 int closed_already ;
 int generic_mourn_inferior () ;
 int inferior_ptid ;
 int null_ptid ;
 int printf_filtered (char*,int ) ;
 int rdi_error_message (int) ;

__attribute__((used)) static void
arm_rdi_close (int quitting)
{
  int rslt;

  if (!closed_already)
    {
      rslt = angel_RDI_close ();
      if (rslt != RDIError_NoError)
 {
   printf_filtered ("RDI_close: %s\n", rdi_error_message (rslt));
 }
      closed_already = 1;
      inferior_ptid = null_ptid;
      Adp_CloseDevice ();
      generic_mourn_inferior ();
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int inferior_ptid ;
 int noprocess () ;
 int null_ptid ;
 scalar_t__ ptid_equal (int ,int ) ;

__attribute__((used)) static void
nosupport_runtime (void)
{
  if (ptid_equal (inferior_ptid, null_ptid))
    noprocess ();
  else
    error ("No run-time support for this");
}

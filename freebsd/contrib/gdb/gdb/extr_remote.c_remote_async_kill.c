
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int catch_errors_ftype ;


 int RETURN_MASK_ERROR ;
 int catch_errors (int *,char*,char*,int ) ;
 scalar_t__ kill_kludge ;
 scalar_t__ putpkt ;
 int remote_desc ;
 int serial_async (int ,int *,int ) ;
 scalar_t__ target_is_async_p () ;
 int target_mourn_inferior () ;

__attribute__((used)) static void
remote_async_kill (void)
{

  if (target_is_async_p ())
    serial_async (remote_desc, ((void*)0), 0);



  if (kill_kludge)
    {
      kill_kludge = 0;
      target_mourn_inferior ();
      return;
    }



  catch_errors ((catch_errors_ftype *) putpkt, "k", "", RETURN_MASK_ERROR);



  target_mourn_inferior ();
}

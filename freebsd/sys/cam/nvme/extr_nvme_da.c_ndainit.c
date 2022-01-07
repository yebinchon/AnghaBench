
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cam_status ;


 int AC_FOUND_DEVICE ;
 scalar_t__ CAM_REQ_CMP ;
 int EVENTHANDLER_PRI_LAST ;
 int * EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int SHUTDOWN_PRI_DEFAULT ;
 scalar_t__ nda_send_ordered ;
 int ndaasync ;
 int ndashutdown ;
 int ndasuspend ;
 int power_suspend ;
 int printf (char*,...) ;
 int shutdown_post_sync ;
 scalar_t__ xpt_register_async (int ,int ,int *,int *) ;

__attribute__((used)) static void
ndainit(void)
{
 cam_status status;





 status = xpt_register_async(AC_FOUND_DEVICE, ndaasync, ((void*)0), ((void*)0));

 if (status != CAM_REQ_CMP) {
  printf("nda: Failed to attach master async callback "
         "due to status 0x%x!\n", status);
 } else if (nda_send_ordered) {


  if ((EVENTHANDLER_REGISTER(power_suspend, ndasuspend,
        ((void*)0), EVENTHANDLER_PRI_LAST)) == ((void*)0))
      printf("ndainit: power event registration failed!\n");
  if ((EVENTHANDLER_REGISTER(shutdown_post_sync, ndashutdown,
        ((void*)0), SHUTDOWN_PRI_DEFAULT)) == ((void*)0))
      printf("ndainit: shutdown event registration failed!\n");
 }
}

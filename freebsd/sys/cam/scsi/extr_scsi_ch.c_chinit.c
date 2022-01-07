
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cam_status ;


 int AC_FOUND_DEVICE ;
 scalar_t__ CAM_REQ_CMP ;
 int chasync ;
 int printf (char*,scalar_t__) ;
 scalar_t__ xpt_register_async (int ,int ,int *,int *) ;

__attribute__((used)) static void
chinit(void)
{
 cam_status status;





 status = xpt_register_async(AC_FOUND_DEVICE, chasync, ((void*)0), ((void*)0));

 if (status != CAM_REQ_CMP) {
  printf("ch: Failed to attach master async callback "
         "due to status 0x%x!\n", status);
 }
}

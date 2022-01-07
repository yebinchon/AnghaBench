
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cam_status ;


 int AC_PATH_DEREGISTERED ;
 int AC_PATH_REGISTERED ;
 scalar_t__ CAM_REQ_CMP ;
 int printf (char*,scalar_t__) ;
 int targbhasync ;
 scalar_t__ xpt_register_async (int,int ,int *,int *) ;

__attribute__((used)) static void
targbhinit(void)
{
 cam_status status;





 status = xpt_register_async(AC_PATH_REGISTERED | AC_PATH_DEREGISTERED,
        targbhasync, ((void*)0), ((void*)0));

 if (status != CAM_REQ_CMP) {
  printf("targbh: Failed to attach master async callback "
         "due to status 0x%x!\n", status);
 }
}

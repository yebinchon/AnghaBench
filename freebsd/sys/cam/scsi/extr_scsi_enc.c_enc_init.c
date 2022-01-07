
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cam_status ;


 int AC_FOUND_DEVICE ;
 scalar_t__ CAM_REQ_CMP ;
 int enc_async ;
 int printf (char*,scalar_t__) ;
 scalar_t__ xpt_register_async (int ,int ,int *,int *) ;

__attribute__((used)) static void
enc_init(void)
{
 cam_status status;





 status = xpt_register_async(AC_FOUND_DEVICE, enc_async, ((void*)0), ((void*)0));

 if (status != CAM_REQ_CMP) {
  printf("enc: Failed to attach master async callback "
         "due to status 0x%x!\n", status);
 }
}

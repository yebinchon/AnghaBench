
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int wpa_drv_set_current_cipher_suite (void*,int ) ;

__attribute__((used)) static int wpas_set_current_cipher_suite(void *wpa_s, u64 cs)
{
 return wpa_drv_set_current_cipher_suite(wpa_s, cs);
}

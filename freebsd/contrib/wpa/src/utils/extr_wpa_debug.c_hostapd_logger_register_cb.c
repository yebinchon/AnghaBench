
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hostapd_logger_cb_func ;


 int hostapd_logger_cb ;

void hostapd_logger_register_cb(hostapd_logger_cb_func func)
{
 hostapd_logger_cb = func;
}

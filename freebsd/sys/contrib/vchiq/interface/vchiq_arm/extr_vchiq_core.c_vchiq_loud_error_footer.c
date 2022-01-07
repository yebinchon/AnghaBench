
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vchiq_core_log_level ;
 int vchiq_log_error (int ,char*) ;

void
vchiq_loud_error_footer(void)
{
 vchiq_log_error(vchiq_core_log_level, "=====");
 vchiq_log_error(vchiq_core_log_level,
  "============================================================"
  "================");
 vchiq_log_error(vchiq_core_log_level,
  "============================================================"
  "================");
}

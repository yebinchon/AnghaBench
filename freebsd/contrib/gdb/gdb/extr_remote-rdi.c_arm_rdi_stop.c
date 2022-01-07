
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int angel_RDI_stop_request () ;

__attribute__((used)) static void
arm_rdi_stop(void)
{
  angel_RDI_stop_request();
}

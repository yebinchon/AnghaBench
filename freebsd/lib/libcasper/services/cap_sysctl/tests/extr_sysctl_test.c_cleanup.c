
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSCTL0_FILE ;
 int SYSCTL0_NAME ;
 int SYSCTL1_FILE ;
 int SYSCTL1_NAME ;
 int restore_int_sysctl (int ,int ) ;

__attribute__((used)) static void
cleanup(void)
{

 restore_int_sysctl(SYSCTL0_NAME, SYSCTL0_FILE);
 restore_int_sysctl(SYSCTL1_NAME, SYSCTL1_FILE);
}

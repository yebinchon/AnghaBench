
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int rump_sys_sync () ;

__attribute__((used)) static void
tsync(const atf_tc_t *tc, const char *path)
{

 rump_sys_sync();
}

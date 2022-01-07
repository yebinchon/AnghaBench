
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void suite_setup(void)
{
extern int change_logfile(const char*, int);
change_logfile("stderr", 0);
}

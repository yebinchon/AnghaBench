
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int pid_t ;


 int ITT_ANDROID_LOGE (char*,...) ;
 int ITT_ANDROID_LOGI (char*,...) ;
 int ITT_TO_STR (int ) ;
 int LIB_VAR_NAME ;
 int O_RDONLY ;
 int PATH_MAX ;
 char* __itt_get_env_var (int ) ;
 int close (int) ;
 int getpid () ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int setenv (int ,char*,int ) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static const char* __itt_get_lib_name(void)
{
    const char* lib_name = __itt_get_env_var(ITT_TO_STR(LIB_VAR_NAME));
    return lib_name;
}

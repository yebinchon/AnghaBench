
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PATH ;
 int PATH_MAX ;
 int * _getcwd (char*,int) ;
 int assert (int ) ;
 int cygwin_conv_to_full_win32_path (char*,char*) ;
 int * getcwd (char*,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
compute_loop_max(void)
{
 return 200;

}

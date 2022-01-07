
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int veriexec_check_path_mode (char const*,int ) ;

int
veriexec_check_path(const char *file)
{
 return veriexec_check_path_mode(file, 0);
}

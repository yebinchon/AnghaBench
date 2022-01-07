
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ViceIoctl {int dummy; } ;


 int lpioctl (char*,int,struct ViceIoctl*,int) ;

int
aix_pioctl(char *a_path,
    int o_opcode,
    struct ViceIoctl *a_paramsP,
    int a_followSymlinks)
{
    return lpioctl(a_path, o_opcode, a_paramsP, a_followSymlinks);
}

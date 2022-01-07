
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ViceIoctl {int dummy; } ;
typedef int parms ;


 int VIOCUNLOG ;
 int k_pioctl (int ,int ,struct ViceIoctl*,int ) ;
 int memset (struct ViceIoctl*,int ,int) ;

int
k_unlog(void)
{
    struct ViceIoctl parms;
    memset(&parms, 0, sizeof(parms));
    return k_pioctl(0, VIOCUNLOG, &parms, 0);
}

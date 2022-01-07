
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 int KERN_SECURELVL ;
 int emergency (char*,int ) ;
 int errno ;
 int strerror (int ) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

__attribute__((used)) static int
getsecuritylevel(void)
{
 return (-1);

}

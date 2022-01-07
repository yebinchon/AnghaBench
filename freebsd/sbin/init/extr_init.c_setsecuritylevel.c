
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 int KERN_SECURELVL ;
 int emergency (char*,int,int,int ) ;
 int errno ;
 int getsecuritylevel () ;
 int strerror (int ) ;
 int sysctl (int*,int,int *,int *,int*,int) ;
 int warning (char*,int,int) ;

__attribute__((used)) static void
setsecuritylevel(int newlevel)
{
}

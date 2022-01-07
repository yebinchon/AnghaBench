
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ com_data ;
 scalar_t__ comc_ischar () ;
 scalar_t__ comc_port ;
 int inb (scalar_t__) ;

__attribute__((used)) static int
comc_getchar(void)
{
 return (comc_ischar() ? inb(comc_port + com_data) : -1);
}

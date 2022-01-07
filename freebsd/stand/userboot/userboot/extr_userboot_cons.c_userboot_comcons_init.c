
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_flags; } ;


 int C_PRESENTIN ;
 int C_PRESENTOUT ;
 TYPE_1__* userboot_comconsp ;

__attribute__((used)) static int
userboot_comcons_init(int arg)
{





 userboot_comconsp->c_flags |= (C_PRESENTIN | C_PRESENTOUT);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dos_partition {int dummy; } ;
struct TYPE_2__ {struct dos_partition* parts; } ;


 int bzero (struct dos_partition*,int) ;
 int init_boot () ;
 TYPE_1__ mboot ;

__attribute__((used)) static void
reset_boot(void)
{
    int i;
    struct dos_partition *partp;

    init_boot();
    for (i = 0; i < 4; ++i) {
 partp = &mboot.parts[i];
 bzero(partp, sizeof(*partp));
    }
}

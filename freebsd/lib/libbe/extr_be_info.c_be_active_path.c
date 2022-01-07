
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* rootfs; } ;
typedef TYPE_1__ libbe_handle_t ;



const char *
be_active_path(libbe_handle_t *lbh)
{

 return (lbh->rootfs);
}

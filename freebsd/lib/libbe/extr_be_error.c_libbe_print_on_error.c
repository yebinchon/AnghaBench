
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int print_on_err; int lzh; } ;
typedef TYPE_1__ libbe_handle_t ;


 int libzfs_print_on_error (int ,int) ;

void
libbe_print_on_error(libbe_handle_t *lbh, bool val)
{

 lbh->print_on_err = val;
 libzfs_print_on_error(lbh->lzh, val);
}

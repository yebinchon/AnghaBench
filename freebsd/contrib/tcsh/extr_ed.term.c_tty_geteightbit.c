
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c_cflag; } ;
struct TYPE_5__ {int d_lb; TYPE_1__ d_t; } ;
typedef TYPE_2__ ttydata_t ;


 int CS8 ;
 int CSIZE ;
 int LLITOUT ;
 int LPASS8 ;

int
tty_geteightbit(ttydata_t *td)
{



    return td->d_lb & (LPASS8 | LLITOUT);

}

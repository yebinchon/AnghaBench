
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c_lflag; int sg_flags; } ;
struct TYPE_5__ {TYPE_1__ d_t; } ;
typedef TYPE_2__ ttydata_t ;


 int CBREAK ;
 int ICANON ;
 int RAW ;

int
tty_cooked_mode(ttydata_t *td)
{



    return !(td->d_t.sg_flags & (RAW | CBREAK));

}

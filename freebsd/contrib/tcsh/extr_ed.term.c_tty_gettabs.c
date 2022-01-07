
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c_oflag; int sg_flags; } ;
struct TYPE_5__ {TYPE_1__ d_t; } ;
typedef TYPE_2__ ttydata_t ;


 int TAB3 ;
 int XTABS ;

int
tty_gettabs(ttydata_t *td)
{



    return (td->d_t.sg_flags & XTABS) == XTABS ? 0 : 1;

}

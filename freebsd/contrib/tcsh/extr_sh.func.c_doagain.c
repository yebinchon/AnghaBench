
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ w_fename; int w_start; int * w_fe; } ;


 int Strsave (int ) ;
 int VAR_READWRITE ;
 int bseek (int *) ;
 int dobreak (int *,int *) ;
 int quote (int ) ;
 int setv (scalar_t__,int ,int ) ;
 TYPE_1__* whyles ;

__attribute__((used)) static void
doagain(void)
{

    if (whyles->w_fename == 0) {
 bseek(&whyles->w_start);
 return;
    }





    if (!whyles->w_fe[1]) {
 dobreak(((void*)0), ((void*)0));
 return;
    }
    setv(whyles->w_fename, quote(Strsave(*whyles->w_fe++)), VAR_READWRITE);
    bseek(&whyles->w_start);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UI_METHOD ;
struct TYPE_3__ {int const* meth; } ;
typedef TYPE_1__ UI ;



const UI_METHOD *UI_set_method(UI *ui, const UI_METHOD *meth)
{
    ui->meth = meth;
    return ui->meth;
}

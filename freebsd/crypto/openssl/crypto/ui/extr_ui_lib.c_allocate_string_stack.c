
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * strings; } ;
typedef TYPE_1__ UI ;


 int * sk_UI_STRING_new_null () ;

__attribute__((used)) static int allocate_string_stack(UI *ui)
{
    if (ui->strings == ((void*)0)) {
        ui->strings = sk_UI_STRING_new_null();
        if (ui->strings == ((void*)0)) {
            return -1;
        }
    }
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int srcSizeHint; } ;
typedef TYPE_1__ FIO_prefs_t ;


 scalar_t__ INT_MAX ;
 scalar_t__ MIN (size_t,size_t) ;

void FIO_setSrcSizeHint(FIO_prefs_t* const prefs, size_t srcSizeHint) {
    prefs->srcSizeHint = (int)MIN((size_t)INT_MAX, srcSizeHint);
}

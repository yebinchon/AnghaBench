
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ COVER_dictSelection_t ;



COVER_dictSelection_t COVER_dictSelectionError(size_t error) {
    COVER_dictSelection_t selection = { ((void*)0), 0, error };
    return selection;
}

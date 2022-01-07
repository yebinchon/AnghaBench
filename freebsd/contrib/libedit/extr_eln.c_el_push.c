
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int el_lgcyconv; } ;
typedef TYPE_1__ EditLine ;


 int ct_decode_string (char const*,int *) ;
 int el_wpush (TYPE_1__*,int ) ;

void
el_push(EditLine *el, const char *str)
{


 el_wpush(el, ct_decode_string(str, &el->el_lgcyconv));
}

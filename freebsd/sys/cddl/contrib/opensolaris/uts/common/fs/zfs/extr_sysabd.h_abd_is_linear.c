
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_3__ {int abd_flags; } ;
typedef TYPE_1__ abd_t ;


 int ABD_FLAG_LINEAR ;
 int B_FALSE ;
 int B_TRUE ;

inline boolean_t
abd_is_linear(abd_t *abd)
{
 return ((abd->abd_flags & ABD_FLAG_LINEAR) != 0 ? B_TRUE : B_FALSE);
}

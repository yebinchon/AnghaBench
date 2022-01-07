
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* abd_buf; } ;
struct TYPE_8__ {TYPE_1__ abd_linear; } ;
struct TYPE_9__ {TYPE_2__ abd_u; } ;
typedef TYPE_3__ abd_t ;


 int ASSERT (int ) ;
 int abd_is_linear (TYPE_3__*) ;
 int abd_verify (TYPE_3__*) ;

void *
abd_to_buf(abd_t *abd)
{
 ASSERT(abd_is_linear(abd));
 abd_verify(abd);
 return (abd->abd_u.abd_linear.abd_buf);
}

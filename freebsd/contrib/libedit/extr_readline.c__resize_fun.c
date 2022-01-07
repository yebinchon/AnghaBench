
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buffer; } ;
typedef TYPE_1__ LineInfo ;
typedef int EditLine ;


 TYPE_1__* el_line (int *) ;
 char* memchr (int *,int ,size_t) ;

__attribute__((used)) static void
_resize_fun(EditLine *el, void *a)
{
 const LineInfo *li;
 char **ap = a;

 li = el_line(el);

 *ap = memchr(li->buffer, *li->buffer, (size_t)1);
}

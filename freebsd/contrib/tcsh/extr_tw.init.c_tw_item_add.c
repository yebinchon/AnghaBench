
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int s; scalar_t__ len; } ;
typedef int Char ;


 int Strcpy (int *,int ) ;
 int tw_item ;
 int * tw_str_add (int *,scalar_t__) ;

void
tw_item_add(const struct Strbuf *s)
{
    Char *p;

    p = tw_str_add(&tw_item, s->len + 1);
    Strcpy(p, s->s);
}

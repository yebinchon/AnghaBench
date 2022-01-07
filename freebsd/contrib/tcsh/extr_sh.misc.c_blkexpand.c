
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int dummy; } ;
typedef int Char ;


 struct Strbuf Strbuf_INIT ;
 int Strbuf_append (struct Strbuf*,int * const) ;
 int Strbuf_append1 (struct Strbuf*,char) ;
 int * Strbuf_finish (struct Strbuf*) ;

Char *
blkexpand(Char *const *av)
{
    struct Strbuf buf = Strbuf_INIT;

    for (; *av; av++) {
 Strbuf_append(&buf, *av);
 if (av[1])
     Strbuf_append1(&buf, ' ');
    }
    return Strbuf_finish(&buf);
}

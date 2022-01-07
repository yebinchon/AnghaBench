
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {scalar_t__ len; scalar_t__ s; } ;
typedef int Char ;


 int Strbuf_append (struct Strbuf*,int *) ;
 int Strbuf_appendn (struct Strbuf*,scalar_t__,scalar_t__) ;
 int Strbuf_terminate (struct Strbuf*) ;
 struct Strbuf labuf ;
 scalar_t__ lap ;
 int xfree (int *) ;

void
addla(Char *cp)
{
    static struct Strbuf buf;

    buf.len = 0;
    Strbuf_appendn(&buf, labuf.s + lap, labuf.len - lap);
    labuf.len = 0;
    Strbuf_append(&labuf, cp);
    Strbuf_terminate(&labuf);
    Strbuf_appendn(&labuf, buf.s, buf.len);
    xfree(cp);
    lap = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int s; } ;
typedef char Char ;


 int QUOTE ;
 struct Strbuf Strbuf_INIT ;
 int Strbuf_append1 (struct Strbuf*,int ) ;
 char* Strbuf_finish (struct Strbuf*) ;
 scalar_t__ expdollar (struct Strbuf*,char const**,int ) ;
 int xfree (int ) ;

Char *
dollar(const Char *old)
{
    struct Strbuf buf = Strbuf_INIT;

    while (*old) {
 if (*old != '$')
     Strbuf_append1(&buf, *old++);
 else {
     if (expdollar(&buf, &old, QUOTE) == 0) {
  xfree(buf.s);
  return ((void*)0);
     }
 }
    }
    return Strbuf_finish(&buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int dummy; } ;
typedef int Char ;


 int MB_LEN_MAX ;
 int Strbuf_append1 (struct Strbuf*,int) ;
 int one_mbtowc (int*,char const*,int ) ;

__attribute__((used)) static void
tprintf_append_mbs(struct Strbuf *buf, const char *mbs, Char attributes)
{
    while (*mbs != 0) {
 Char wc;

 mbs += one_mbtowc(&wc, mbs, MB_LEN_MAX);
 Strbuf_append1(buf, wc | attributes);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_buf {int dummy; } ;
struct Strbuf {int dummy; } ;
typedef int Char ;


 int * Strbuf_finish (struct Strbuf*) ;
 struct Strbuf Strbuf_init ;
 int bb_append (struct blk_buf*,int *) ;

__attribute__((used)) static void
pword(struct blk_buf *bb, struct Strbuf *word)
{
    Char *s;

    s = Strbuf_finish(word);
    bb_append(bb, s);
    *word = Strbuf_init;
}

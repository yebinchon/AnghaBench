
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_buf {int* s; int len; } ;
struct Strbuf {int* s; int len; } ;
typedef int eChar ;
typedef char Char ;



 int DODOL ;
 int DgetC (int) ;
 scalar_t__ Dpack (struct blk_buf*) ;
 int ERR_UNMATCHED ;
 int QUOTE ;
 struct blk_buf* Strbuf_alloc () ;
 int Strbuf_append1 (struct blk_buf*,char) ;
 char* Strbuf_finish (struct blk_buf*) ;
 int Strbuf_free ;
 int TRIM ;
 int bb_append (struct blk_buf*,char*) ;
 int cleanup_ignore (struct blk_buf*) ;
 int cleanup_push (struct blk_buf*,int ) ;
 int cleanup_until (struct blk_buf*) ;
 int stderror (int ,int) ;
 int unDgetC (int) ;
 int unDredc (int) ;
 int xfree (struct blk_buf*) ;

__attribute__((used)) static int
Dword(struct blk_buf *bb)
{
    eChar c, c1;
    struct Strbuf *wbuf = Strbuf_alloc();
    int dolflg;
    int sofar = 0;
    Char *str;

    cleanup_push(wbuf, Strbuf_free);
    for (;;) {
 c = DgetC(DODOL);
 switch (c) {

 case 128:
     if (sofar == 0) {
  cleanup_until(wbuf);
  return (0);
     }

     unDredc(c);


 case '\n':
     goto end;

 case ' ':
 case '\t':
     continue;

 case '`':

     Strbuf_append1(wbuf, (Char) c);

 case '\'':
 case '"':




     c1 = c;
     dolflg = c1 == '"' ? DODOL : 0;
     for (;;) {
  c = DgetC(dolflg);
  if (c == c1)
      break;
  if (c == '\n' || c == 128) {
      cleanup_until(bb);
      stderror(ERR_UNMATCHED, (int)c1);
  }
  if ((c & (QUOTE | TRIM)) == ('\n' | QUOTE)) {
      if (wbuf->len != 0 && (wbuf->s[wbuf->len - 1] & TRIM) == '\\')
   wbuf->len--;
  }
  switch (c1) {

  case '"':




      Strbuf_append1(wbuf, c == '`' ? '`' : c | QUOTE);
      break;

  case '\'':

      Strbuf_append1(wbuf, c | QUOTE);
      break;

  case '`':

      Strbuf_append1(wbuf, (Char) c);
      break;

  default:
      break;
  }
     }
     if (c1 == '`')
  Strbuf_append1(wbuf, '`');
     sofar = 1;
     if (Dpack(wbuf) != 0)
  goto end;
     continue;

 case '\\':
     c = DgetC(0);
     if (c == '\n' || c == 128)
  continue;
     c |= QUOTE;
     break;

 default:
     break;
 }
 unDgetC(c);
 sofar = 1;
 if (Dpack(wbuf) != 0)
     goto end;
    }

 end:
    cleanup_ignore(wbuf);
    cleanup_until(wbuf);
    str = Strbuf_finish(wbuf);
    bb_append(bb, str);
    xfree(wbuf);
    return 1;
}

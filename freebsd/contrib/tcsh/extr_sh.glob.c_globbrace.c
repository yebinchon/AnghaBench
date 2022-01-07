
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_buf {int len; } ;
struct Strbuf {size_t len; int s; } ;
typedef scalar_t__ Char ;


 struct blk_buf BLK_BUF_INIT ;
 scalar_t__ const EOS ;



 scalar_t__ const RBRK ;
 struct Strbuf Strbuf_INIT ;
 int Strbuf_append (struct Strbuf*,scalar_t__ const*) ;
 int Strbuf_appendn (struct Strbuf*,scalar_t__ const*,int) ;
 int Strbuf_terminate (struct Strbuf*) ;
 int Strsave (int ) ;
 int bb_append (struct blk_buf*,int ) ;
 int bb_cleanup (struct blk_buf*) ;
 scalar_t__** bb_finish (struct blk_buf*) ;
 int xfree (int ) ;

__attribute__((used)) static int
globbrace(const Char *s, Char ***bl)
{
    struct Strbuf gbuf = Strbuf_INIT;
    struct blk_buf bb = BLK_BUF_INIT;
    int i;
    const Char *p, *pm, *pe, *pl;
    size_t prefix_len;


    for (p = s; *p != 130; p++)
 ;
    prefix_len = p - s;


    for (i = 0, pe = ++p; *pe; pe++)
 if (*pe == 129) {

     for (++pe; *pe != RBRK && *pe != EOS; pe++)
  continue;
     if (*pe == EOS)
  return (-RBRK);
 }
 else if (*pe == 130)
     i++;
 else if (*pe == 128) {
     if (i == 0)
  break;
     i--;
 }

    if (i != 0 || *pe == '\0')
 return (-128);

    Strbuf_appendn(&gbuf, s, prefix_len);

    for (i = 0, pl = pm = p; pm <= pe; pm++)
 switch (*pm) {
 case 129:
     for (++pm; *pm != RBRK && *pm != EOS; pm++)
  continue;
     if (*pm == EOS) {
  bb_cleanup(&bb);
  xfree(gbuf.s);
  return (-RBRK);
     }
     break;
 case 130:
     i++;
     break;
 case 128:
     if (i) {
  i--;
  break;
     }

 case ',':
     if (i && *pm == ',')
  break;
     else {
  gbuf.len = prefix_len;
  Strbuf_appendn(&gbuf, pl, pm - pl);
  Strbuf_append(&gbuf, pe + 1);
  Strbuf_terminate(&gbuf);
  bb_append(&bb, Strsave(gbuf.s));
  pl = pm + 1;
     }
     break;
 default:
     break;
 }
    *bl = bb_finish(&bb);
    xfree(gbuf.s);
    return bb.len;
}

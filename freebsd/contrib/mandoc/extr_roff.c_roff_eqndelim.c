
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff {int * eqn; int eqn_inline; TYPE_1__* last_eqn; } ;
struct buf {char* buf; scalar_t__ sz; } ;
struct TYPE_2__ {int cdelim; int odelim; } ;


 int ROFF_CONT ;
 int ROFF_REPARSE ;
 int free (char*) ;
 scalar_t__ mandoc_asprintf (char**,char*,char*,char const*,char const*,char const*,char const*,char const*,char*) ;
 char* strchr (char*,int ) ;

__attribute__((used)) static int
roff_eqndelim(struct roff *r, struct buf *buf, int pos)
{
 char *cp1, *cp2;
 const char *bef_pr, *bef_nl, *mac, *aft_nl, *aft_pr;
 cp1 = buf->buf + pos;
 cp2 = strchr(cp1, r->eqn == ((void*)0) ?
     r->last_eqn->odelim : r->last_eqn->cdelim);
 if (cp2 == ((void*)0))
  return ROFF_CONT;

 *cp2++ = '\0';
 bef_pr = bef_nl = aft_nl = aft_pr = "";



 if (*buf->buf != '\0') {
  if (r->eqn == ((void*)0))
   bef_pr = "\\&";
  bef_nl = "\n";
 }






 if (r->eqn == ((void*)0)) {
  while (*cp2 == ' ')
   cp2++;
  mac = ".EQ";
 } else
  mac = ".EN";



 if (*cp2 != '\0') {
  aft_nl = "\n";
  if (r->eqn != ((void*)0))
   aft_pr = "\\&";
 }



 buf->sz = mandoc_asprintf(&cp1, "%s%s%s%s%s%s%s", buf->buf,
     bef_pr, bef_nl, mac, aft_nl, aft_pr, cp2) + 1;
 free(buf->buf);
 buf->buf = cp1;



 r->eqn_inline = r->eqn == ((void*)0);
 return ROFF_REPARSE;
}

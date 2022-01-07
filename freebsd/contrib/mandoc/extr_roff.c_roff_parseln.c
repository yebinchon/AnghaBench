
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct roff {TYPE_4__* man; int * tbl; TYPE_2__* last; int * eqn; int escape; scalar_t__ eqn_inline; TYPE_1__* last_eqn; } ;
struct buf {char* buf; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
struct TYPE_8__ {int next; int * last; } ;
struct TYPE_7__ {int (* text ) (struct roff*,int,struct buf*,int,int,int,int*) ;int (* sub ) (struct roff*,int,struct buf*,int,int,int,int*) ;int (* proc ) (struct roff*,int,struct buf*,int,int,int,int*) ;} ;
struct TYPE_6__ {int tok; } ;
struct TYPE_5__ {scalar_t__ delim; } ;


 int MANDOCERR_COMMENT_BAD ;
 int MANDOCERR_TBLMACRO ;
 int ROFF_CONT ;
 int ROFF_Dd ;
 int ROFF_EQ ;
 int ROFF_IGN ;
 int ROFF_MASK ;
 int ROFF_NEXT_SIBLING ;
 int ROFF_REPARSE ;
 int ROFF_TH ;
 int ROFF_TS ;
 int ROFF_br ;
 int ROFF_ce ;
 int ROFF_rj ;
 int ROFF_sp ;
 int TOKEN_NONE ;
 int assert (int) ;
 int eqn_read (int *,char*) ;
 int mandoc_msg (int ,int,int,char*,...) ;
 int roff_addtbl (TYPE_4__*,int,int *) ;
 int roff_eqndelim (struct roff*,struct buf*,int) ;
 int roff_expand (struct roff*,struct buf*,int,int,int ) ;
 int roff_getcontrol (struct roff*,char*,int*) ;
 int roff_parse (struct roff*,char*,int*,int,int) ;
 int roff_parsetext (struct roff*,struct buf*,int,int*) ;
 scalar_t__ roffce_lines ;
 int * roffce_node ;
 TYPE_3__* roffs ;
 scalar_t__ strncmp (char*,char*,int) ;
 int stub1 (struct roff*,int,struct buf*,int,int,int,int*) ;
 int stub2 (struct roff*,int,struct buf*,int,int,int,int*) ;
 int stub3 (struct roff*,int,struct buf*,int,int,int,int*) ;
 int tbl_read (int *,int,char*,int) ;

int
roff_parseln(struct roff *r, int ln, struct buf *buf, int *offs)
{
 enum roff_tok t;
 int e;
 int pos;
 int spos;
 int ppos;
 int ctl;

 ppos = pos = *offs;



 if (r->tbl == ((void*)0) &&
     r->last_eqn != ((void*)0) && r->last_eqn->delim &&
     (r->eqn == ((void*)0) || r->eqn_inline)) {
  e = roff_eqndelim(r, buf, pos);
  if (e == ROFF_REPARSE)
   return e;
  assert(e == ROFF_CONT);
 }



 e = roff_expand(r, buf, ln, pos, r->escape);
 if ((e & ROFF_MASK) == ROFF_IGN)
  return e;
 assert(e == ROFF_CONT);

 ctl = roff_getcontrol(r, buf->buf, &pos);
 if (r->last != ((void*)0) && ! ctl) {
  t = r->last->tok;
  e = (*roffs[t].text)(r, t, buf, ln, pos, pos, offs);
  if ((e & ROFF_MASK) == ROFF_IGN)
   return e;
  e &= ~ROFF_MASK;
 } else
  e = ROFF_IGN;
 if (r->eqn != ((void*)0) && strncmp(buf->buf + ppos, ".EN", 3)) {
  eqn_read(r->eqn, buf->buf + ppos);
  return e;
 }
 if (r->tbl != ((void*)0) && (ctl == 0 || buf->buf[pos] == '\0')) {
  tbl_read(r->tbl, ln, buf->buf, ppos);
  roff_addtbl(r->man, ln, r->tbl);
  return e;
 }
 if ( ! ctl)
  return roff_parsetext(r, buf, pos, offs) | e;



 if (buf->buf[pos] == '"') {
  mandoc_msg(MANDOCERR_COMMENT_BAD, ln, pos, ((void*)0));
  return ROFF_IGN;
 } else if (buf->buf[pos] == '\0')
  return ROFF_IGN;







 if (r->last) {
  t = r->last->tok;
  return (*roffs[t].sub)(r, t, buf, ln, ppos, pos, offs);
 }



 spos = pos;
 t = roff_parse(r, buf->buf, &pos, ln, ppos);



 if (r->tbl != ((void*)0) && (t == TOKEN_NONE || t == ROFF_TS ||
     t == ROFF_br || t == ROFF_ce || t == ROFF_rj || t == ROFF_sp)) {
  mandoc_msg(MANDOCERR_TBLMACRO,
      ln, pos, "%s", buf->buf + spos);
  if (t != TOKEN_NONE)
   return ROFF_IGN;
  while (buf->buf[pos] != '\0' && buf->buf[pos] != ' ')
   pos++;
  while (buf->buf[pos] == ' ')
   pos++;
  tbl_read(r->tbl, ln, buf->buf, pos);
  roff_addtbl(r->man, ln, r->tbl);
  return ROFF_IGN;
 }



 if (ctl && roffce_node != ((void*)0) &&
     (t == TOKEN_NONE || t == ROFF_Dd || t == ROFF_EQ ||
      t == ROFF_TH || t == ROFF_TS)) {
  r->man->last = roffce_node;
  r->man->next = ROFF_NEXT_SIBLING;
  roffce_lines = 0;
  roffce_node = ((void*)0);
 }






 if (t == TOKEN_NONE)
  return ROFF_CONT;



 return (*roffs[t].proc)(r, t, buf, ln, spos, pos, offs);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_man {int flags; TYPE_1__* last; int next; } ;
struct TYPE_2__ {scalar_t__ tok; scalar_t__ type; int flags; int string; } ;


 int MANDOCERR_BLK_BLANK ;
 int MANDOCERR_SPACE_EOL ;
 int MAN_BLINE ;
 int MAN_ELINE ;
 scalar_t__ MAN_SH ;
 scalar_t__ MAN_SS ;
 int NODE_EOS ;
 scalar_t__ ROFFT_TEXT ;
 int ROFF_NEXT_SIBLING ;
 int ROFF_NOFILL ;
 int ROFF_sp ;
 int assert (int) ;
 int man_descope (struct roff_man*,int,int,char*) ;
 char* man_hasc (int ) ;
 scalar_t__ mandoc_eos (char*,size_t) ;
 int mandoc_msg (int ,int,int,int *) ;
 int roff_elem_alloc (struct roff_man*,int,int,int ) ;
 int roff_word_alloc (struct roff_man*,int,int,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
man_ptext(struct roff_man *man, int line, char *buf, int offs)
{
 int i;
 char *ep;



 if (man->flags & ROFF_NOFILL) {
  roff_word_alloc(man, line, offs, buf + offs);
  man_descope(man, line, offs, buf + offs);
  return 1;
 }

 for (i = offs; buf[i] == ' '; i++)
                                 ;







 if (buf[i] == '\0') {
  if (man->flags & (MAN_ELINE | MAN_BLINE)) {
   mandoc_msg(MANDOCERR_BLK_BLANK, line, 0, ((void*)0));
   return 1;
  }
  if (man->last->tok == MAN_SH || man->last->tok == MAN_SS)
   return 1;
  if (man->last->type == ROFFT_TEXT &&
      ((ep = man_hasc(man->last->string)) != ((void*)0))) {
   *ep = '\0';
   return 1;
  }
  roff_elem_alloc(man, line, offs, ROFF_sp);
  man->next = ROFF_NEXT_SIBLING;
  return 1;
 }






 i = (int)strlen(buf);
 assert(i);

 if (' ' == buf[i - 1] || '\t' == buf[i - 1]) {
  if (i > 1 && '\\' != buf[i - 2])
   mandoc_msg(MANDOCERR_SPACE_EOL, line, i - 1, ((void*)0));

  for (--i; i && ' ' == buf[i]; i--)
                                 ;


  i += '\\' == buf[i] ? 2 : 1;

  buf[i] = '\0';
 }
 roff_word_alloc(man, line, offs, buf + offs);







 assert(i);
 if (mandoc_eos(buf, (size_t)i))
  man->last->flags |= NODE_EOS;

 man_descope(man, line, offs, buf + offs);
 return 1;
}

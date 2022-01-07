
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int lno; scalar_t__ cno; } ;
struct TYPE_11__ {scalar_t__ searchdir; int lno; scalar_t__ cno; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ MARK ;
typedef int CHAR_T ;


 scalar_t__ FORWARD ;
 int INT2CHAR (TYPE_1__*,int *,size_t,char*,size_t) ;
 scalar_t__ ISDIGIT (int ) ;
 scalar_t__ NOTSET ;
 int SEARCH_FILE ;
 int SEARCH_TAG ;
 int TAG_BADLNO ;
 int TAG_SEARCH ;
 int atoi (char*) ;
 int db_exist (TYPE_1__*,int) ;
 scalar_t__ f_search (TYPE_1__*,TYPE_2__*,TYPE_2__*,int *,size_t,int *,int) ;
 int nonblank (TYPE_1__*,int,scalar_t__*) ;
 char* strrchr (char*,char) ;
 int tag_msg (TYPE_1__*,int ,char*) ;

__attribute__((used)) static int
ctag_search(SCR *sp, CHAR_T *search, size_t slen, char *tag)
{
 MARK m;
 char *p;
 char *np;
 size_t nlen;







 if (ISDIGIT(search[0])) {
  INT2CHAR(sp, search, slen+1, np, nlen);
  m.lno = atoi(np);
  if (!db_exist(sp, m.lno)) {
   tag_msg(sp, TAG_BADLNO, tag);
   return (1);
  }
 } else {




  m.lno = 1;
  m.cno = 0;
  if (f_search(sp, &m, &m,
      search, slen, ((void*)0), SEARCH_FILE | SEARCH_TAG)) {
   INT2CHAR(sp, search, slen, np, nlen);
   if ((p = strrchr(np, '(')) != ((void*)0)) {
    slen = p - np;
    if (f_search(sp, &m, &m, search, slen,
        ((void*)0), SEARCH_FILE | SEARCH_TAG))
     goto notfound;
   } else {
notfound: tag_msg(sp, TAG_SEARCH, tag);
    return (1);
   }
  }





  if (sp->searchdir == NOTSET)
   sp->searchdir = FORWARD;
 }





 sp->lno = m.lno;
 sp->cno = 0;
 (void)nonblank(sp, sp->lno, &sp->cno);
 return (0);
}

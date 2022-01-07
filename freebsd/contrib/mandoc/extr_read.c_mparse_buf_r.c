
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mparse {int line; int filenc; int options; struct buf* secondary; struct buf* loop; TYPE_2__* man; int roff; scalar_t__ reparse_count; } ;
struct buf {int sz; char* buf; struct buf* next; } ;
struct TYPE_4__ {void* sodest; int macroset; } ;
struct TYPE_5__ {TYPE_1__ meta; } ;


 int MACROSET_MDOC ;
 int MACROSET_NONE ;
 int MANDOCERR_CHAR_BAD ;
 int MANDOCERR_CHAR_UNSUPP ;
 int MANDOCERR_ROFFLOOP ;
 int MANDOCERR_SO_FAIL ;
 int MANDOCERR_WHILE_FAIL ;
 int MANDOCERR_WHILE_INTO ;
 int MANDOCERR_WHILE_NEST ;
 int MANDOCERR_WHILE_OUTOF ;
 int MPARSE_LATIN1 ;
 int MPARSE_SO ;
 int MPARSE_UTF8 ;
 scalar_t__ REPARSE_LIMIT ;
 int ROFF_APPEND ;




 int ROFF_LOOPMASK ;
 int ROFF_MASK ;



 int ROFF_USERCALL ;
 int ROFF_USERRET ;

 int abort () ;
 int assert (int) ;
 int choose_parser (struct mparse*) ;
 int close (int) ;
 int errno ;
 int free (char*) ;
 int free_buf_list (struct buf*) ;
 int man_parseln (TYPE_2__*,int,char*,int) ;
 size_t mandoc_asprintf (char**,char*,char*) ;
 void* mandoc_malloc (int) ;
 int mandoc_msg (int ,int,size_t,char*,...) ;
 void* mandoc_strdup (char*) ;
 int mdoc_parseln (TYPE_2__*,int,char*,int) ;
 int mparse_open (struct mparse*,char*) ;
 int mparse_readfd (struct mparse*,int,char*) ;
 int preconv_cue (struct buf*,size_t) ;
 scalar_t__ preconv_encode (struct buf*,size_t*,struct buf*,size_t*,int*) ;
 int resize_buf (struct buf*,int) ;
 int roff_parseln (int ,int,struct buf*,int*) ;
 int roff_userret (int ) ;
 int strerror (int ) ;
 int strlcat (char*,char*,int) ;
 void* strlen (char*) ;

__attribute__((used)) static int
mparse_buf_r(struct mparse *curp, struct buf blk, size_t i, int start)
{
 struct buf ln;
 struct buf *firstln, *lastln, *thisln, *loop;
 char *cp;
 size_t pos;
 int line_result, result;
 int of;
 int lnn;
 int fd;
 int inloop;
 unsigned char c;

 ln.sz = 256;
 ln.buf = mandoc_malloc(ln.sz);
 ln.next = ((void*)0);
 firstln = lastln = loop = ((void*)0);
 lnn = curp->line;
 pos = 0;
 inloop = 0;
 result = 135;

 while (i < blk.sz && (blk.buf[i] != '\0' || pos != 0)) {
  if (start) {
   curp->line = lnn;
   curp->reparse_count = 0;

   if (lnn < 3 &&
       curp->filenc & MPARSE_UTF8 &&
       curp->filenc & MPARSE_LATIN1)
    curp->filenc = preconv_cue(&blk, i);
  }

  while (i < blk.sz && (start || blk.buf[i] != '\0')) {







   if ('\r' == blk.buf[i] && i + 1 < blk.sz &&
       '\n' == blk.buf[i + 1])
    ++i;
   if ('\n' == blk.buf[i]) {
    ++i;
    ++lnn;
    break;
   }






   if (pos + 12 > ln.sz)
    resize_buf(&ln, 256);





   c = blk.buf[i];
   if (c & 0x80) {
    if ( ! (curp->filenc && preconv_encode(
        &blk, &i, &ln, &pos, &curp->filenc))) {
     mandoc_msg(MANDOCERR_CHAR_BAD,
         curp->line, pos, "0x%x", c);
     ln.buf[pos++] = '?';
     i++;
    }
    continue;
   }





   if (c == 0x7f || (c < 0x20 && c != 0x09)) {
    mandoc_msg(c == 0x00 || c == 0x04 ||
        c > 0x0a ? MANDOCERR_CHAR_BAD :
        MANDOCERR_CHAR_UNSUPP,
        curp->line, pos, "0x%x", c);
    i++;
    if (c != '\r')
     ln.buf[pos++] = '?';
    continue;
   }

   ln.buf[pos++] = blk.buf[i++];
  }
  ln.buf[pos] = '\0';






  thisln = mandoc_malloc(sizeof(*thisln));
  thisln->buf = mandoc_strdup(ln.buf);
  thisln->sz = strlen(ln.buf) + 1;
  thisln->next = ((void*)0);
  if (firstln == ((void*)0)) {
   firstln = lastln = thisln;
   if (curp->secondary == ((void*)0))
    curp->secondary = firstln;
  } else {
   lastln->next = thisln;
   lastln = thisln;
  }



  if (i == blk.sz || blk.buf[i] == '\0') {
   if (pos + 2 > ln.sz)
    resize_buf(&ln, 256);
   ln.buf[pos++] = '\n';
   ln.buf[pos] = '\0';
  }
  of = 0;
rerun:
  line_result = roff_parseln(curp->roff, curp->line, &ln, &of);



  if (line_result & ROFF_APPEND)
   assert(line_result == (134 | ROFF_APPEND));

  if (line_result & ROFF_USERCALL)
   assert((line_result & ROFF_MASK) == 131);

  if (line_result & ROFF_USERRET) {
   assert(line_result == (134 | ROFF_USERRET));
   if (start == 0) {

    result = ROFF_USERRET;
    goto out;
   }
  }

  switch (line_result & ROFF_LOOPMASK) {
  case 134:
   break;
  case 128:
   if (curp->loop != ((void*)0)) {
    if (loop == curp->loop)
     break;
    mandoc_msg(MANDOCERR_WHILE_NEST,
        curp->line, pos, ((void*)0));
   }
   curp->loop = thisln;
   loop = ((void*)0);
   inloop = 1;
   break;
  case 133:
  case 132:
   if (curp->loop == ((void*)0)) {
    mandoc_msg(MANDOCERR_WHILE_FAIL,
        curp->line, pos, ((void*)0));
    break;
   }
   if (inloop == 0) {
    mandoc_msg(MANDOCERR_WHILE_INTO,
        curp->line, pos, ((void*)0));
    curp->loop = loop = ((void*)0);
    break;
   }
   if (line_result & 133)
    loop = curp->loop;
   else {
    curp->loop = loop = ((void*)0);
    inloop = 0;
   }
   break;
  default:
   abort();
  }



  switch (line_result & ROFF_MASK) {
  case 134:
   break;
  case 135:
   if (curp->man->meta.macroset == MACROSET_NONE)
    choose_parser(curp);
   if ((curp->man->meta.macroset == MACROSET_MDOC ?
        mdoc_parseln(curp->man, curp->line, ln.buf, of) :
        man_parseln(curp->man, curp->line, ln.buf, of)
       ) == 2)
    goto out;
   break;
  case 130:
   goto rerun;
  case 131:
   if (++curp->reparse_count > REPARSE_LIMIT) {

    result = 134;
    mandoc_msg(MANDOCERR_ROFFLOOP,
        curp->line, pos, ((void*)0));
    goto out;
   }
   result = mparse_buf_r(curp, ln, of, 0);
   if (line_result & ROFF_USERCALL) {
    roff_userret(curp->roff);

    if (result & ROFF_USERRET)
     result = 135;
   }
   if (start == 0 && result != 135)
    goto out;
   break;
  case 129:
   if ( ! (curp->options & MPARSE_SO) &&
       (i >= blk.sz || blk.buf[i] == '\0')) {
    curp->man->meta.sodest =
        mandoc_strdup(ln.buf + of);
    goto out;
   }
   if ((fd = mparse_open(curp, ln.buf + of)) != -1) {
    mparse_readfd(curp, fd, ln.buf + of);
    close(fd);
   } else {
    mandoc_msg(MANDOCERR_SO_FAIL,
        curp->line, of, ".so %s: %s",
        ln.buf + of, strerror(errno));
    ln.sz = mandoc_asprintf(&cp,
        ".sp\nSee the file %s.\n.sp",
        ln.buf + of);
    free(ln.buf);
    ln.buf = cp;
    of = 0;
    mparse_buf_r(curp, ln, of, 0);
   }
   break;
  default:
   abort();
  }



  if (loop != ((void*)0) &&
      (line_result & ROFF_LOOPMASK) == 134)
   loop = loop->next;

  if (loop != ((void*)0)) {
   if ((line_result & ROFF_APPEND) == 0)
    *ln.buf = '\0';
   if (ln.sz < loop->sz)
    resize_buf(&ln, loop->sz);
   (void)strlcat(ln.buf, loop->buf, ln.sz);
   of = 0;
   goto rerun;
  }

  pos = (line_result & ROFF_APPEND) ? strlen(ln.buf) : 0;
 }
out:
 if (inloop) {
  if (result != ROFF_USERRET)
   mandoc_msg(MANDOCERR_WHILE_OUTOF,
       curp->line, pos, ((void*)0));
  curp->loop = ((void*)0);
 }
 free(ln.buf);
 if (firstln != curp->secondary)
  free_buf_list(firstln);
 return result;
}

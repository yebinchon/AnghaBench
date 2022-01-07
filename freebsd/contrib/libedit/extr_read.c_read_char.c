
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ssize_t ;
typedef int mbstate_t ;
typedef int mbs ;
struct TYPE_7__ {int el_infd; TYPE_1__* el_signal; } ;
struct TYPE_6__ {int sig_no; } ;
typedef TYPE_2__ EditLine ;


 int EILSEQ ;
 int EL_REFRESH ;
 int MB_LEN_MAX ;


 int el_wset (TYPE_2__*,int ) ;
 int errno ;
 int mbrtowc (int*,char*,size_t,int *) ;
 int memset (int *,int ,int) ;
 int read (int ,char*,size_t) ;
 scalar_t__ read__fixio (int ,int) ;
 int sig_set (TYPE_2__*) ;

__attribute__((used)) static int
read_char(EditLine *el, wchar_t *cp)
{
 ssize_t num_read;
 int tried = 0;
 char cbuf[MB_LEN_MAX];
 size_t cbp = 0;
 int save_errno = errno;

 again:
 el->el_signal->sig_no = 0;
 while ((num_read = read(el->el_infd, cbuf + cbp, (size_t)1)) == -1) {
  int e = errno;
  switch (el->el_signal->sig_no) {
  case 129:
   el_wset(el, EL_REFRESH);

  case 128:
   sig_set(el);
   goto again;
  default:
   break;
  }
  if (!tried && read__fixio(el->el_infd, e) == 0) {
   errno = save_errno;
   tried = 1;
  } else {
   errno = e;
   *cp = L'\0';
   return -1;
  }
 }


 if (num_read == 0) {
  *cp = L'\0';
  return 0;
 }

 for (;;) {
  mbstate_t mbs;

  ++cbp;

  memset(&mbs, 0, sizeof(mbs));
  switch (mbrtowc(cp, cbuf, cbp, &mbs)) {
  case (size_t)-1:
   if (cbp > 1) {




    cbuf[0] = cbuf[cbp - 1];
    cbp = 0;
    break;
   } else {

    cbp = 0;
    goto again;
   }
  case (size_t)-2:
   if (cbp >= MB_LEN_MAX) {
    errno = EILSEQ;
    *cp = L'\0';
    return -1;
   }

   goto again;
  default:

   return 1;
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int off_t ;
typedef int cbuf ;
typedef unsigned char Char ;


 int BUFSIZE ;
 unsigned char INVALID_BYTE ;
 int L_INCR ;
 size_t MB_LEN_MAX ;
 int USE (int) ;
 int assert (int) ;
 int errno ;
 int* fclens ;
 int lseek (int,int ,int ) ;
 int memmove (char*,char*,size_t) ;
 int normal_mbtowc (unsigned char*,char*,size_t) ;
 int reset_mbtowc () ;
 size_t xread (int,char*,size_t) ;

ssize_t
wide_read(int fildes, Char *buf, size_t nchars, int use_fclens)
{
    char cbuf[BUFSIZE + 1];
    ssize_t res, r = 0;
    size_t partial;
    int err;

    if (nchars == 0)
 return 0;
    assert (nchars <= sizeof(cbuf) / sizeof(*cbuf));
    USE(use_fclens);
    res = 0;
    partial = 0;
    do {
 size_t i;
 size_t len = nchars > partial ? nchars - partial : 1;

 if (partial + len >= sizeof(cbuf) / sizeof(*cbuf))
     break;

 r = xread(fildes, cbuf + partial, len);

 if (partial == 0 && r <= 0)
     break;
 partial += r;
 i = 0;
 while (i < partial && nchars != 0) {
     int tlen;

     tlen = normal_mbtowc(buf + res, cbuf + i, partial - i);
     if (tlen == -1) {
         reset_mbtowc();
  if ((partial - i) < MB_LEN_MAX && r > 0)


      break;
  buf[res] = (unsigned char)cbuf[i] | INVALID_BYTE;
     }
     if (tlen <= 0)
  tlen = 1;




     i += tlen;
     res++;
     nchars--;
 }
 if (i != partial)
     memmove(cbuf, cbuf + i, partial - i);
 partial -= i;
    } while (partial != 0 && nchars > 0);


    err = errno;
    lseek(fildes, -(off_t)partial, L_INCR);
    errno = err;
    return res != 0 ? res : r;
}

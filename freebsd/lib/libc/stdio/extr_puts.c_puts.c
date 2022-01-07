
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __suio {size_t uio_resid; int uio_iovcnt; struct __siov* uio_iov; } ;
struct __siov {char* iov_base; size_t iov_len; } ;


 char EOF ;
 int FLOCKFILE_CANCELSAFE (int ) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int ORIENT (int ,int) ;
 scalar_t__ __sfvwrite (int ,struct __suio*) ;
 int stdout ;
 size_t strlen (char const*) ;

int
puts(char const *s)
{
 int retval;
 size_t c;
 struct __suio uio;
 struct __siov iov[2];

 iov[0].iov_base = (void *)s;
 iov[0].iov_len = c = strlen(s);
 iov[1].iov_base = "\n";
 iov[1].iov_len = 1;
 uio.uio_resid = c + 1;
 uio.uio_iov = &iov[0];
 uio.uio_iovcnt = 2;
 FLOCKFILE_CANCELSAFE(stdout);
 ORIENT(stdout, -1);
 retval = __sfvwrite(stdout, &uio) ? EOF : '\n';
 FUNLOCKFILE_CANCELSAFE();
 return (retval);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SCR ;


 int M_SYSERR ;
 int O_RDONLY ;
 int msgq_str (int *,int ,char*,char*) ;
 int open (char*,int ,int ) ;
 int read (int,char*,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static int
rcv_copy(
 SCR *sp,
 int wfd,
 char *fname)
{
 int nr, nw, off, rfd;
 char buf[8 * 1024];

 if ((rfd = open(fname, O_RDONLY, 0)) == -1)
  goto err;
 while ((nr = read(rfd, buf, sizeof(buf))) > 0)
  for (off = 0; nr; nr -= nw, off += nw)
   if ((nw = write(wfd, buf + off, nr)) < 0)
    goto err;
 if (nr == 0)
  return (0);

err: msgq_str(sp, M_SYSERR, fname, "%s");
 return (1);
}

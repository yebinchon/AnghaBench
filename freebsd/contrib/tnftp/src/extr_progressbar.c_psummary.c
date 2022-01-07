
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bytes ;
 int errno ;
 int fileno (int ) ;
 scalar_t__ fromatty ;
 int ptransfer (int) ;
 int ttyout ;
 int write (int ,char*,int) ;

void
psummary(int notused)
{
 int oerrno = errno;

 if (bytes > 0) {
  if (fromatty)
   write(fileno(ttyout), "\n", 1);
  ptransfer(1);
 }
 errno = oerrno;
}

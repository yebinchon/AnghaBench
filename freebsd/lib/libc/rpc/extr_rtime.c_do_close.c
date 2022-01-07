
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _close (int) ;
 int errno ;

__attribute__((used)) static void
do_close(int s)
{
 int save;

 save = errno;
 (void)_close(s);
 errno = save;
}

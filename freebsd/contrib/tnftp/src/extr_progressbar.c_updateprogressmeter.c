
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int progressmeter (int ) ;

__attribute__((used)) static void
updateprogressmeter(int dummy)
{
 int oerrno = errno;

 progressmeter(0);
 errno = oerrno;
}

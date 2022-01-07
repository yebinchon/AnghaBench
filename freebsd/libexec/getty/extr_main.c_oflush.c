
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 scalar_t__ obufcnt ;
 int outbuf ;
 int write (int ,int ,scalar_t__) ;

__attribute__((used)) static void
oflush(void)
{
 if (obufcnt)
  write(STDOUT_FILENO, outbuf, obufcnt);
 obufcnt = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAGICSTR ;
 int atf_tc_fail_errno (char*) ;
 int printf (char*) ;
 scalar_t__ rump_sys_write (int,char*,scalar_t__) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void *
dofifow(void *arg)
{
 int fd = (int)(uintptr_t)arg;
 char buf[512];

 printf("writing\n");
 strcpy(buf, MAGICSTR);
 if (rump_sys_write(fd, buf, strlen(buf)+1) != strlen(buf)+1)
  atf_tc_fail_errno("write to fifo");

 return ((void*)0);
}

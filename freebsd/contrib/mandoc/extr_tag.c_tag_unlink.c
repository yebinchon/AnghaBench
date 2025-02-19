
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_2__ {int tcpgid; scalar_t__ pager_pid; char* ofn; char* tfn; int ofd; } ;


 int getpgid (scalar_t__) ;
 TYPE_1__ tag_files ;
 scalar_t__ tcgetpgrp (int ) ;
 int tcsetpgrp (int ,int) ;
 int unlink (char*) ;

void
tag_unlink(void)
{
 pid_t tc_pgid;

 if (tag_files.tcpgid != -1) {
  tc_pgid = tcgetpgrp(tag_files.ofd);
  if (tc_pgid == tag_files.pager_pid ||
      tc_pgid == getpgid(0) ||
      getpgid(tc_pgid) == -1)
   (void)tcsetpgrp(tag_files.ofd, tag_files.tcpgid);
 }
 if (*tag_files.ofn != '\0')
  unlink(tag_files.ofn);
 if (*tag_files.tfn != '\0')
  unlink(tag_files.tfn);
}

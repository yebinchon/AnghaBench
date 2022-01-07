
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int se_flags; int se_device; } ;
typedef TYPE_1__ session_t ;


 scalar_t__ ENOENT ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int SE_IFCONSOLE ;
 int SE_IFEXISTS ;
 int close (int) ;
 scalar_t__ errno ;
 int open (int ,int,int ) ;

__attribute__((used)) static int
session_has_no_tty(session_t *sp)
{
 int fd;

 if ((sp->se_flags & SE_IFEXISTS) == 0 &&
     (sp->se_flags & SE_IFCONSOLE) == 0)
  return (0);

 fd = open(sp->se_device, O_RDONLY | O_NONBLOCK, 0);
 if (fd < 0) {
  if (errno == ENOENT)
   return (1);
  return (0);
 }

 close(fd);
 return (0);
}

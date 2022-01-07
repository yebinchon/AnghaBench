
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_2__ {int name; scalar_t__ ino; } ;


 scalar_t__ Nflag ;
 TYPE_1__ curfile ;
 int errno ;
 int fprintf (int ,char*,int ,int ,int ) ;
 int ofile ;
 int stderr ;
 int strerror (int ) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
xtrfile(char *buf, size_t size)
{

 if (Nflag)
  return;
 if (write(ofile, buf, (int) size) == -1) {
  fprintf(stderr,
      "write error extracting inode %ju, name %s\nwrite: %s\n",
      (uintmax_t)curfile.ino, curfile.name, strerror(errno));
 }
}

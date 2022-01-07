
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_2__ {int name; scalar_t__ ino; } ;


 int SEEK_CUR ;
 TYPE_1__ curfile ;
 int done (int) ;
 int errno ;
 int fprintf (int ,char*,int ,int ,int ) ;
 int lseek (int ,size_t,int ) ;
 int ofile ;
 int stderr ;
 int strerror (int ) ;

__attribute__((used)) static void
xtrskip(char *buf, size_t size)
{

 if (lseek(ofile, size, SEEK_CUR) == -1) {
  fprintf(stderr,
      "seek error extracting inode %ju, name %s\nlseek: %s\n",
      (uintmax_t)curfile.ino, curfile.name, strerror(errno));
  done(1);
 }
}

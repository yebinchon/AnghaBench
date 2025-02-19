
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


union dinodep {TYPE_2__* dp2; TYPE_1__* dp1; } ;
typedef int uintmax_t ;
typedef scalar_t__ ino_t ;
struct TYPE_10__ {int d_error; } ;
struct TYPE_9__ {scalar_t__ fs_magic; } ;
struct TYPE_8__ {scalar_t__ di_flags; } ;
struct TYPE_7__ {scalar_t__ di_flags; } ;


 scalar_t__ FS_UFS1_MAGIC ;
 TYPE_4__ disk ;
 scalar_t__ getinode (TYPE_4__*,union dinodep*,scalar_t__) ;
 scalar_t__ journal_findfile () ;
 int printf (char*,int ) ;
 scalar_t__ putinode (TYPE_4__*) ;
 TYPE_3__ sblock ;
 int warn (char*,int ) ;
 int warnx (char*) ;

__attribute__((used)) static void
journal_clear(void)
{
 union dinodep dp;
 ino_t ino;

 ino = journal_findfile();
 if (ino == (ino_t)-1 || ino == 0) {
  warnx("Journal file does not exist");
  return;
 }
 printf("Clearing journal flags from inode %ju\n", (uintmax_t)ino);
 if (getinode(&disk, &dp, ino) != 0) {
  warn("Failed to get journal inode: %s", disk.d_error);
  return;
 }
 if (sblock.fs_magic == FS_UFS1_MAGIC)
  dp.dp1->di_flags = 0;
 else
  dp.dp2->di_flags = 0;
 if (putinode(&disk) < 0) {
  warn("Failed to write journal inode: %s", disk.d_error);
  return;
 }
}

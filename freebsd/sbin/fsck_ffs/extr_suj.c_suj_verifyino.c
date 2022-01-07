
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef int uintmax_t ;
struct TYPE_2__ {int fs_mtime; } ;


 int DIP (union dinode*,int ) ;
 int IFREG ;
 int IREAD ;
 int SF_IMMUTABLE ;
 int SF_NOUNLINK ;
 int SUJ_MIN ;
 int di_flags ;
 int di_mode ;
 int di_modrev ;
 int di_nlink ;
 int di_size ;
 TYPE_1__* fs ;
 int printf (char*,...) ;
 scalar_t__ sujino ;

__attribute__((used)) static int
suj_verifyino(union dinode *ip)
{

 if (DIP(ip, di_nlink) != 1) {
  printf("Invalid link count %d for journal inode %ju\n",
      DIP(ip, di_nlink), (uintmax_t)sujino);
  return (-1);
 }

 if ((DIP(ip, di_flags) & (SF_IMMUTABLE | SF_NOUNLINK)) !=
     (SF_IMMUTABLE | SF_NOUNLINK)) {
  printf("Invalid flags 0x%X for journal inode %ju\n",
      DIP(ip, di_flags), (uintmax_t)sujino);
  return (-1);
 }

 if (DIP(ip, di_mode) != (IFREG | IREAD)) {
  printf("Invalid mode %o for journal inode %ju\n",
      DIP(ip, di_mode), (uintmax_t)sujino);
  return (-1);
 }

 if (DIP(ip, di_size) < SUJ_MIN) {
  printf("Invalid size %jd for journal inode %ju\n",
      DIP(ip, di_size), (uintmax_t)sujino);
  return (-1);
 }

 if (DIP(ip, di_modrev) != fs->fs_mtime) {
  printf("Journal timestamp does not match fs mount time\n");
  return (-1);
 }

 return (0);
}

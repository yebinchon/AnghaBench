
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs_ino_t ;


 scalar_t__ fsread (int ,void*,size_t) ;
 int printf (char*,char*) ;

__attribute__((used)) static inline int
xfsread(ufs_ino_t inode, void *buf, size_t nbyte)
{

 if ((size_t)fsread(inode, buf, nbyte) != nbyte) {
  printf("Invalid %s\n", "format");
  return (-1);
 }
 return (0);
}

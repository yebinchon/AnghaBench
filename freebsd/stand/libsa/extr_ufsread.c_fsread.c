
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs_ino_t ;
typedef int ssize_t ;


 int fsread_size (int ,void*,size_t,int *) ;

__attribute__((used)) static ssize_t
fsread(ufs_ino_t inode, void *buf, size_t nbyte)
{

 return fsread_size(inode, buf, nbyte, ((void*)0));
}

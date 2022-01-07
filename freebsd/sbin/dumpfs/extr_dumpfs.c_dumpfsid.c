
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* fs_id; } ;


 char* _PATH_DEV ;
 TYPE_1__ afs ;
 int printf (char*,char*,int,int) ;

__attribute__((used)) static int
dumpfsid(void)
{

 printf("%sufsid/%08x%08x\n", _PATH_DEV, afs.fs_id[0], afs.fs_id[1]);
 return 0;
}

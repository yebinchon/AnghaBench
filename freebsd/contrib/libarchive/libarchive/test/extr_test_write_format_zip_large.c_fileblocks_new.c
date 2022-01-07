
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileblocks {int dummy; } ;


 struct fileblocks* calloc (int,int) ;

__attribute__((used)) static struct fileblocks *
fileblocks_new(void)
{
 struct fileblocks *fileblocks;

 fileblocks = calloc(1, sizeof(struct fileblocks));
 return fileblocks;
}

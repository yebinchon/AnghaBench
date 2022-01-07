
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;


 struct block* BLOCK_SUPERBLOCK (struct block*) ;

__attribute__((used)) static int
block_depth (struct block *block)
{
  int i = 0;
  while ((block = BLOCK_SUPERBLOCK (block)) != ((void*)0))
    {
      i++;
    }
  return i;
}

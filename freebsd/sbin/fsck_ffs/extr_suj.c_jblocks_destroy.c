
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jblocks {struct jblocks* jb_extent; } ;


 int free (struct jblocks*) ;

__attribute__((used)) static void
jblocks_destroy(struct jblocks *jblocks)
{

 free(jblocks->jb_extent);
 free(jblocks);
}

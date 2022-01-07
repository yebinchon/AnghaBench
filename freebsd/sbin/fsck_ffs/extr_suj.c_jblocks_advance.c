
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jblocks {int jb_off; } ;
struct TYPE_2__ {int d_bsize; } ;


 TYPE_1__ disk ;

__attribute__((used)) static void
jblocks_advance(struct jblocks *jblocks, int bytes)
{

 jblocks->jb_off += bytes / disk.d_bsize;
}

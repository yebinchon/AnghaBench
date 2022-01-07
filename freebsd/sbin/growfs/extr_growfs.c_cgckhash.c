
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cg {scalar_t__ cg_ckhash; } ;
struct TYPE_2__ {int fs_metackhash; int fs_cgsize; } ;


 int CK_CYLGRP ;
 scalar_t__ calculate_crc32c (long,void*,int ) ;
 TYPE_1__ sblock ;

__attribute__((used)) static void
cgckhash(struct cg *cgp)
{

 if ((sblock.fs_metackhash & CK_CYLGRP) == 0)
  return;
 cgp->cg_ckhash = 0;
 cgp->cg_ckhash = calculate_crc32c(~0L, (void *)cgp, sblock.fs_cgsize);
}

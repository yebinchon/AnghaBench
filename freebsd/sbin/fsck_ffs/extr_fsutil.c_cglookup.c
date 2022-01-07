
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cg {int dummy; } ;
struct TYPE_4__ {struct cg* b_cg; } ;
struct bufarea {TYPE_1__ b_un; } ;
struct TYPE_5__ {scalar_t__ fs_cgsize; int fs_ncg; } ;


 int BT_CYLGRP ;
 int EEXIT ;
 struct bufarea* calloc (int ,int) ;
 struct bufarea cgblk ;
 struct bufarea* cgbufs ;
 int cgtod (TYPE_2__*,int) ;
 int errx (int ,char*) ;
 scalar_t__ flushtries ;
 int getblk (struct bufarea*,int ,scalar_t__) ;
 int initbarea (struct bufarea*,int ) ;
 struct cg* malloc (unsigned int) ;
 TYPE_2__ sblock ;

struct bufarea *
cglookup(int cg)
{
 struct bufarea *cgbp;
 struct cg *cgp;

 if (cgbufs == ((void*)0)) {
  cgbufs = calloc(sblock.fs_ncg, sizeof(struct bufarea));
  if (cgbufs == ((void*)0))
   errx(EEXIT, "cannot allocate cylinder group buffers");
 }
 cgbp = &cgbufs[cg];
 if (cgbp->b_un.b_cg != ((void*)0))
  return (cgbp);
 cgp = ((void*)0);
 if (flushtries == 0)
  cgp = malloc((unsigned int)sblock.fs_cgsize);
 if (cgp == ((void*)0)) {
  getblk(&cgblk, cgtod(&sblock, cg), sblock.fs_cgsize);
  return (&cgblk);
 }
 cgbp->b_un.b_cg = cgp;
 initbarea(cgbp, BT_CYLGRP);
 getblk(cgbp, cgtod(&sblock, cg), sblock.fs_cgsize);
 return (cgbp);
}

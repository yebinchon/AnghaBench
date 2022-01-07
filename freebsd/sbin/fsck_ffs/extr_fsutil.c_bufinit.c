
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* b_buf; } ;
struct bufarea {TYPE_1__ b_un; } ;
struct TYPE_8__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {scalar_t__ fs_bsize; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 int BT_CYLGRP ;
 long BT_NUMBUFTYPES ;
 int BT_UNKNOWN ;
 int EEXIT ;
 long MAXBUFS ;
 long MINBUFS ;
 char* Malloc (unsigned int) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct bufarea*,int ) ;
 int b_list ;
 int bufhead ;
 struct bufarea cgblk ;
 int errx (int ,char*) ;
 int initbarea (struct bufarea*,int ) ;
 long numbufs ;
 struct bufarea* pbp ;
 struct bufarea* pdirbp ;
 scalar_t__* readcnt ;
 TYPE_4__* readtime ;
 TYPE_3__ sblock ;
 scalar_t__* totalreadcnt ;
 TYPE_2__* totalreadtime ;

void
bufinit(void)
{
 struct bufarea *bp;
 long bufcnt, i;
 char *bufp;

 pbp = pdirbp = (struct bufarea *)0;
 bufp = Malloc((unsigned int)sblock.fs_bsize);
 if (bufp == ((void*)0))
  errx(EEXIT, "cannot allocate buffer pool");
 cgblk.b_un.b_buf = bufp;
 initbarea(&cgblk, BT_CYLGRP);
 TAILQ_INIT(&bufhead);
 bufcnt = MAXBUFS;
 if (bufcnt < MINBUFS)
  bufcnt = MINBUFS;
 for (i = 0; i < bufcnt; i++) {
  bp = (struct bufarea *)Malloc(sizeof(struct bufarea));
  bufp = Malloc((unsigned int)sblock.fs_bsize);
  if (bp == ((void*)0) || bufp == ((void*)0)) {
   if (i >= MINBUFS)
    break;
   errx(EEXIT, "cannot allocate buffer pool");
  }
  bp->b_un.b_buf = bufp;
  TAILQ_INSERT_HEAD(&bufhead, bp, b_list);
  initbarea(bp, BT_UNKNOWN);
 }
 numbufs = i;
 for (i = 0; i < BT_NUMBUFTYPES; i++) {
  readtime[i].tv_sec = totalreadtime[i].tv_sec = 0;
  readtime[i].tv_nsec = totalreadtime[i].tv_nsec = 0;
  readcnt[i] = totalreadcnt[i] = 0;
 }
}

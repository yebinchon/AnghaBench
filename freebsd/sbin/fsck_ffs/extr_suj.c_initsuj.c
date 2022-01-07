
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int SUJ_HASHSIZE ;
 int TAILQ_INIT (int *) ;
 int allsegs ;
 int * cghash ;
 int * dbhash ;
 scalar_t__ freeblocks ;
 scalar_t__ freedir ;
 scalar_t__ freefrags ;
 scalar_t__ freeinos ;
 int * fs ;
 scalar_t__ jbytes ;
 scalar_t__ jrecs ;
 int * lastblk ;
 int * lastcg ;
 scalar_t__ oldseq ;
 int * suj_jblocks ;
 scalar_t__ sujino ;

__attribute__((used)) static void
initsuj(void)
{
 int i;

 for (i = 0; i < SUJ_HASHSIZE; i++) {
  LIST_INIT(&cghash[i]);
  LIST_INIT(&dbhash[i]);
 }
 lastcg = ((void*)0);
 lastblk = ((void*)0);
 TAILQ_INIT(&allsegs);
 oldseq = 0;
 fs = ((void*)0);
 sujino = 0;
 freefrags = 0;
 freeblocks = 0;
 freeinos = 0;
 freedir = 0;
 jbytes = 0;
 jrecs = 0;
 suj_jblocks = ((void*)0);
}

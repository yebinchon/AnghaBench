
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bde_key {int * lsector; int * mkey; int flags; int keyoffset; int sectorN; int sector0; } ;


 int GBDE_F_SECT0 ;
 int G_BDE_MAXKEYS ;
 int bzero (int *,int) ;

__attribute__((used)) static void
cmd_destroy(struct g_bde_key *gl, int nkey)
{
 int i;

 bzero(&gl->sector0, sizeof gl->sector0);
 bzero(&gl->sectorN, sizeof gl->sectorN);
 bzero(&gl->keyoffset, sizeof gl->keyoffset);
 gl->flags &= GBDE_F_SECT0;
 bzero(gl->mkey, sizeof gl->mkey);
 for (i = 0; i < G_BDE_MAXKEYS; i++)
  if (i != nkey)
   gl->lsector[i] = ~0;
}

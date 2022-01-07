
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs2_daddr_t ;
struct suj_cg {int sc_cgp; } ;


 int cg_blksfree (int ) ;
 struct suj_cg* cg_lookup (int ) ;
 int dtog (int ,int ) ;
 int dtogd (int ,int ) ;
 int ffs_isblock (int ,int ,int ) ;
 int fs ;

__attribute__((used)) static int
blk_isfree(ufs2_daddr_t bno)
{
 struct suj_cg *sc;

 sc = cg_lookup(dtog(fs, bno));
 return ffs_isblock(fs, cg_blksfree(sc->sc_cgp), dtogd(fs, bno));
}

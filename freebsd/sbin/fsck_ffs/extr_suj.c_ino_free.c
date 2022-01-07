
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct suj_cg {int sc_dirty; struct cg* sc_cgp; } ;
struct TYPE_4__ {int cs_ndir; int cs_nifree; } ;
struct cg {int cg_irotor; TYPE_1__ cg_cs; } ;
typedef int ino_t ;
struct TYPE_5__ {int fs_ipg; } ;


 int IFDIR ;
 int IFMT ;
 int * cg_inosused (struct cg*) ;
 struct suj_cg* cg_lookup (int) ;
 int clrbit (int *,int) ;
 int freedir ;
 int freeinos ;
 TYPE_2__* fs ;
 int ino_to_cg (TYPE_2__*,int) ;
 scalar_t__ isclr (int *,int) ;

__attribute__((used)) static int
ino_free(ino_t ino, int mode)
{
 struct suj_cg *sc;
 uint8_t *inosused;
 struct cg *cgp;
 int cg;

 cg = ino_to_cg(fs, ino);
 ino = ino % fs->fs_ipg;
 sc = cg_lookup(cg);
 cgp = sc->sc_cgp;
 inosused = cg_inosused(cgp);




 if (isclr(inosused, ino))
  return (0);
 freeinos++;
 clrbit(inosused, ino);
 if (ino < cgp->cg_irotor)
  cgp->cg_irotor = ino;
 cgp->cg_cs.cs_nifree++;
 if ((mode & IFMT) == IFDIR) {
  freedir++;
  cgp->cg_cs.cs_ndir--;
 }
 sc->sc_dirty = 1;

 return (1);
}

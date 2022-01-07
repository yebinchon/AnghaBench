
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shminfo {int shmall; int shmseg; int shmmni; int shmmin; int shmmax; } ;
struct l_shminfo64 {int shmall; int shmseg; int shmmni; int shmmin; int shmmax; } ;



__attribute__((used)) static void
bsd_to_linux_shminfo( struct shminfo *bpp, struct l_shminfo64 *lpp)
{

 lpp->shmmax = bpp->shmmax;
 lpp->shmmin = bpp->shmmin;
 lpp->shmmni = bpp->shmmni;
 lpp->shmseg = bpp->shmseg;
 lpp->shmall = bpp->shmall;
}

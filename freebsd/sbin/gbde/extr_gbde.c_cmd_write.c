
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;
struct g_bde_softc {scalar_t__ sha2; } ;
struct g_bde_key {int sectorsize; int* lsector; int flags; int* spare; scalar_t__ keyoffset; scalar_t__ sectorN; scalar_t__ sector0; } ;
typedef int off_t ;
typedef int intmax_t ;


 int GBDE_F_SECT0 ;
 int G_BDE_LOCKSIZE ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SEEK_SET ;
 int close (int) ;
 int encrypt_sector (int*,int,int,scalar_t__) ;
 int err (int,char*,...) ;
 int errx (int,char*) ;
 int free (int*) ;
 int g_bde_encode_lock (scalar_t__,struct g_bde_key*,int*) ;
 int g_bde_keyloc_encrypt (scalar_t__,int,int,int*) ;
 int lseek (int,int,int ) ;
 int* malloc (int) ;
 int memcpy (int*,int*,int) ;
 int open (char const*,int,int) ;
 int printf (char*,int,...) ;
 int random_bits (int*,int) ;
 int read (int,int*,int) ;
 int write (int,int*,int) ;

__attribute__((used)) static void
cmd_write(struct g_bde_key *gl, struct g_bde_softc *sc, int dfd , int key, const char *l_opt)
{
 int i, ffd;
 uint64_t off[2];
 u_char keyloc[16];
 u_char *sbuf, *q;
 off_t offset, offset2;

 sbuf = malloc(gl->sectorsize);





 for(;;) {
  random_bits(off, sizeof off);
  off[0] &= (gl->sectorsize - 1);
  if (off[0] + G_BDE_LOCKSIZE > gl->sectorsize)
   continue;
  break;
 }


 off[0] += (gl->lsector[key] & ~(gl->sectorsize - 1));
 gl->lsector[key] = off[0];

 i = g_bde_keyloc_encrypt(sc->sha2, off[0], off[1], keyloc);
 if (i)
  errx(1, "g_bde_keyloc_encrypt()");
 if (l_opt != ((void*)0)) {
  ffd = open(l_opt, O_WRONLY | O_CREAT | O_TRUNC, 0600);
  if (ffd < 0)
   err(1, "%s", l_opt);
  write(ffd, keyloc, sizeof keyloc);
  close(ffd);
 } else if (gl->flags & GBDE_F_SECT0) {
  offset2 = lseek(dfd, 0, SEEK_SET);
  if (offset2 != 0)
   err(1, "lseek");
  i = read(dfd, sbuf, gl->sectorsize);
  if (i != (int)gl->sectorsize)
   err(1, "read");
  memcpy(sbuf + key * 16, keyloc, sizeof keyloc);
  offset2 = lseek(dfd, 0, SEEK_SET);
  if (offset2 != 0)
   err(1, "lseek");
  i = write(dfd, sbuf, gl->sectorsize);
  if (i != (int)gl->sectorsize)
   err(1, "write");
 } else {
  errx(1, "No -L option and no space in sector 0 for lockfile");
 }


 if (sbuf == ((void*)0))
  err(1, "malloc");
 random_bits(sbuf, gl->sectorsize);


 random_bits(gl->spare, sizeof(gl->spare));


 q = sbuf + (off[0] % gl->sectorsize);
 i = g_bde_encode_lock(sc->sha2, gl, q);
 if (i < 0)
  errx(1, "programming error encoding lock");

 encrypt_sector(q, G_BDE_LOCKSIZE, 256, sc->sha2 + 16);
 offset = gl->lsector[key] & ~(gl->sectorsize - 1);
 offset2 = lseek(dfd, offset, SEEK_SET);
 if (offset2 != offset)
  err(1, "lseek");
 i = write(dfd, sbuf, gl->sectorsize);
 if (i != (int)gl->sectorsize)
  err(1, "write");
 free(sbuf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct stat {int st_size; int st_mode; } ;
struct g_bde_softc {int sha2; } ;
typedef int off_t ;


 int DIOCGMEDIASIZE ;
 int DIOCGSECTORSIZE ;
 int ENOENT ;
 int ENOTDIR ;
 int ESRCH ;
 int O_RDONLY ;
 scalar_t__ S_ISREG (int ) ;
 int close (int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,...) ;
 int fstat (int,struct stat*) ;
 int g_bde_decrypt_lock (struct g_bde_softc*,int ,int *,int,int,int*) ;
 int ioctl (int,int ,int*) ;
 int memset (int *,int ,int) ;
 int open (char const*,int ,int ) ;
 int printf (char*,int) ;
 int read (int,int *,int) ;

__attribute__((used)) static void
cmd_open(struct g_bde_softc *sc, int dfd , const char *l_opt, u_int *nkey)
{
 int error;
 int ffd;
 u_char keyloc[16];
 u_int sectorsize;
 off_t mediasize;
 struct stat st;

 error = ioctl(dfd, DIOCGSECTORSIZE, &sectorsize);
 if (error)
  sectorsize = 512;
 error = ioctl(dfd, DIOCGMEDIASIZE, &mediasize);
 if (error) {
  error = fstat(dfd, &st);
  if (error == 0 && S_ISREG(st.st_mode))
   mediasize = st.st_size;
  else
   error = ENOENT;
 }
 if (error)
  mediasize = (off_t)-1;
 if (l_opt != ((void*)0)) {
  ffd = open(l_opt, O_RDONLY, 0);
  if (ffd < 0)
   err(1, "%s", l_opt);
  read(ffd, keyloc, sizeof keyloc);
  close(ffd);
 } else {
  memset(keyloc, 0, sizeof keyloc);
 }

 error = g_bde_decrypt_lock(sc, sc->sha2, keyloc, mediasize,
     sectorsize, nkey);
 if (error == ENOENT)
  errx(1, "Lock was destroyed.");
 if (error == ESRCH)
  errx(1, "Lock was nuked.");
 if (error == ENOTDIR)
  errx(1, "Lock not found");
 if (error != 0)
  errx(1, "Error %d decrypting lock", error);
 if (nkey)
  printf("Opened with key %u\n", 1 + *nkey);
 return;
}

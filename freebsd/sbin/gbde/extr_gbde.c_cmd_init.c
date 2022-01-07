
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;
struct g_bde_key {unsigned int sectorsize; int flags; int sector0; int sectorN; int keyoffset; int* lsector; int* mkey; int* salt; } ;
typedef scalar_t__ ssize_t ;
typedef int properties ;
typedef unsigned int off_t ;
typedef int cbuf ;


 int BUFSIZ ;
 int DIOCGMEDIASIZE ;
 int DIOCGSECTORSIZE ;
 int GBDE_F_SECT0 ;
 unsigned int G_BDE_MAXKEYS ;
 int O_RDONLY ;
 int SEEK_SET ;
 char* _PATH_DEVNULL ;
 int _PATH_TMP ;
 int asprintf (char**,char*,int ) ;
 int bzero (struct g_bde_key*,int) ;
 int close (int) ;
 int err (int,char*,...) ;
 int errx (int,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int ioctl (int,int ,unsigned int*) ;
 unsigned int lseek (int,unsigned int,int ) ;
 int* malloc (unsigned int) ;
 int mkstemp (char*) ;
 int open (char const*,int ) ;
 int properties_read (int) ;
 char* property_find (int ,char*) ;
 int qsort (int*,unsigned int,int,int ) ;
 int random_bits (int*,int) ;
 scalar_t__ snprintf (char*,int,char*,char const*,char*) ;
 int sorthelp ;
 unsigned int strlen (int*) ;
 void* strtoul (char const*,char**,int ) ;
 int system (char*) ;
 int* template ;
 int unlink (char*) ;
 int write (int,int*,unsigned int) ;

__attribute__((used)) static void
cmd_init(struct g_bde_key *gl, int dfd, const char *f_opt, int i_opt, const char *l_opt)
{
 int i;
 u_char *buf;
 unsigned sector_size;
 uint64_t first_sector;
 uint64_t last_sector;
 uint64_t total_sectors;
 off_t off, off2;
 unsigned nkeys;
 const char *p;
 char *q, cbuf[BUFSIZ];
 unsigned u, u2;
 uint64_t o;
 properties params;

 bzero(gl, sizeof *gl);
 if (f_opt != ((void*)0)) {
  i = open(f_opt, O_RDONLY);
  if (i < 0)
   err(1, "%s", f_opt);
  params = properties_read(i);
  close (i);
 } else if (i_opt) {

  asprintf(&q, "%stemp.XXXXXXXXXX", _PATH_TMP);
  if (q == ((void*)0))
   err(1, "asprintf");
  i = mkstemp(q);
  if (i < 0)
   err(1, "%s", q);
  write(i, template, strlen(template));
  close (i);
  p = getenv("EDITOR");
  if (p == ((void*)0))
   p = "vi";
  if (snprintf(cbuf, sizeof(cbuf), "%s %s\n", p, q) >=
      (ssize_t)sizeof(cbuf)) {
   unlink(q);
   errx(1, "EDITOR is too long");
  }
  system(cbuf);
  i = open(q, O_RDONLY);
  if (i < 0)
   err(1, "%s", f_opt);
  params = properties_read(i);
  close (i);
  unlink(q);
  free(q);
 } else {

  i = open(_PATH_DEVNULL, O_RDONLY);
  if (i < 0)
   err(1, "%s", _PATH_DEVNULL);
  params = properties_read(i);
  close (i);
 }


 p = property_find(params, "sector_size");
 i = ioctl(dfd, DIOCGSECTORSIZE, &u);
 if (p != ((void*)0)) {
  sector_size = strtoul(p, &q, 0);
  if (!*p || *q)
   errx(1, "sector_size not a proper number");
 } else if (i == 0) {
  sector_size = u;
 } else {
  errx(1, "Missing sector_size property");
 }
 if (sector_size & (sector_size - 1))
  errx(1, "sector_size not a power of 2");
 if (sector_size < 512)
  errx(1, "sector_size is smaller than 512");
 buf = malloc(sector_size);
 if (buf == ((void*)0))
  err(1, "Failed to malloc sector buffer");
 gl->sectorsize = sector_size;

 i = ioctl(dfd, DIOCGMEDIASIZE, &off);
 if (i == 0) {
  first_sector = 0;
  total_sectors = off / sector_size;
  last_sector = total_sectors - 1;
 } else {
  first_sector = 0;
  last_sector = 0;
  total_sectors = 0;
 }


 p = property_find(params, "first_sector");
 if (p != ((void*)0)) {
  first_sector = strtoul(p, &q, 0);
  if (!*p || *q)
   errx(1, "first_sector not a proper number");
 }


 p = property_find(params, "last_sector");
 if (p != ((void*)0)) {
  last_sector = strtoul(p, &q, 0);
  if (!*p || *q)
   errx(1, "last_sector not a proper number");
  if (last_sector <= first_sector)
   errx(1, "last_sector not larger than first_sector");
  total_sectors = last_sector + 1;
 }


 p = property_find(params, "total_sectors");
 if (p != ((void*)0)) {
  total_sectors = strtoul(p, &q, 0);
  if (!*p || *q)
   errx(1, "total_sectors not a proper number");
  if (last_sector == 0)
   last_sector = first_sector + total_sectors - 1;
 }

 if (l_opt == ((void*)0) && first_sector != 0)
  errx(1, "No -L new-lockfile argument and first_sector != 0");
 else if (l_opt == ((void*)0)) {
  first_sector++;
  total_sectors--;
  gl->flags |= GBDE_F_SECT0;
 }
 gl->sector0 = first_sector * gl->sectorsize;

 if (total_sectors != (last_sector - first_sector) + 1)
  errx(1, "total_sectors disagree with first_sector and last_sector");
 if (total_sectors == 0)
  errx(1, "missing last_sector or total_sectors");

 gl->sectorN = (last_sector + 1) * gl->sectorsize;


 random_bits(&o, sizeof o);
 o %= (gl->sectorN - gl->sector0);
 o &= ~(gl->sectorsize - 1);
 gl->keyoffset = o;


 p = property_find(params, "number_of_keys");
 if (p != ((void*)0)) {
  nkeys = strtoul(p, &q, 0);
  if (!*p || *q)
   errx(1, "number_of_keys not a proper number");
  if (nkeys < 1 || nkeys > G_BDE_MAXKEYS)
   errx(1, "number_of_keys out of range");
 } else {
  nkeys = 4;
 }
 for (u = 0; u < nkeys; u++) {
  for(;;) {
   do {
    random_bits(&o, sizeof o);
    o %= gl->sectorN;
    o &= ~(gl->sectorsize - 1);
   } while(o < gl->sector0);
   for (u2 = 0; u2 < u; u2++)
    if (o == gl->lsector[u2])
     break;
   if (u2 < u)
    continue;
   break;
  }
  gl->lsector[u] = o;
 }
 for (; u < G_BDE_MAXKEYS; u++) {
  do
   random_bits(&o, sizeof o);
  while (o < gl->sectorN);
  gl->lsector[u] = o;
 }
 qsort(gl->lsector, G_BDE_MAXKEYS, sizeof gl->lsector[0], sorthelp);


 if (gl->flags & GBDE_F_SECT0) {
  off2 = lseek(dfd, 0, SEEK_SET);
  if (off2 != 0)
   err(1, "lseek(2) to sector 0");
  random_bits(buf, sector_size);
  i = write(dfd, buf, sector_size);
  if (i != (int)sector_size)
   err(1, "write sector 0");
 }


 p = property_find(params, "random_flush");
 if (p != ((void*)0)) {
  off = first_sector * sector_size;
  off2 = lseek(dfd, off, SEEK_SET);
  if (off2 != off)
   err(1, "lseek(2) to first_sector");
  off2 = last_sector * sector_size;
  while (off <= off2) {
   random_bits(buf, sector_size);
   i = write(dfd, buf, sector_size);
   if (i != (int)sector_size)
    err(1, "write to $device_name");
   off += sector_size;
  }
 }

 random_bits(gl->mkey, sizeof gl->mkey);
 random_bits(gl->salt, sizeof gl->salt);

 return;
}

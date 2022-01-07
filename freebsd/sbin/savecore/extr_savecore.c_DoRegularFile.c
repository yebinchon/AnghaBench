
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int off_t ;
typedef int FILE ;


 int BLOCKMASK ;
 int BLOCKSIZE ;
 int BUFFERSIZE ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int SEEK_CUR ;
 int fflush (int ) ;
 int fseeko (int *,int,int ) ;
 int fwrite (char*,int,int,int *) ;
 scalar_t__ got_siginfo ;
 int logmsg (int ,char*,...) ;
 int nerr ;
 int printf (char*,...) ;
 int read (int,char*,scalar_t__) ;
 scalar_t__ roundup (int,int ) ;
 int stdout ;
 scalar_t__ verbose ;

__attribute__((used)) static int
DoRegularFile(int fd, off_t dumpsize, u_int sectorsize, bool sparse, char *buf,
    const char *device, const char *filename, FILE *fp)
{
 int he, hs, nr, nw, wl;
 off_t dmpcnt, origsize;

 dmpcnt = 0;
 origsize = dumpsize;
 he = 0;
 while (dumpsize > 0) {
  wl = BUFFERSIZE;
  if (wl > dumpsize)
   wl = dumpsize;
  nr = read(fd, buf, roundup(wl, sectorsize));
  if (nr != (int)roundup(wl, sectorsize)) {
   if (nr == 0)
    logmsg(LOG_WARNING,
        "WARNING: EOF on dump device");
   else
    logmsg(LOG_ERR, "read error on %s: %m", device);
   nerr++;
   return (-1);
  }
  if (!sparse) {
   nw = fwrite(buf, 1, wl, fp);
  } else {
   for (nw = 0; nw < nr; nw = he) {

    for (hs = nw; hs < nr; hs += BLOCKSIZE) {
     for (he = hs; he < nr && buf[he] == 0;
         ++he)
                    ;

     if (he >= hs + BLOCKSIZE)
      break;
    }


    he &= BLOCKMASK;







    if (hs + BLOCKSIZE > nr)
     hs = he = nr;







    if (hs > nw)
     if (fwrite(buf + nw, hs - nw, 1, fp)
         != 1)
     break;
    if (he > hs)
     if (fseeko(fp, he - hs, SEEK_CUR) == -1)
      break;
   }
  }
  if (nw != wl) {
   logmsg(LOG_ERR,
       "write error on %s file: %m", filename);
   logmsg(LOG_WARNING,
       "WARNING: vmcore may be incomplete");
   nerr++;
   return (-1);
  }
  if (verbose) {
   dmpcnt += wl;
   printf("%llu\r", (unsigned long long)dmpcnt);
   fflush(stdout);
  }
  dumpsize -= wl;
  if (got_siginfo) {
   printf("%s %.1lf%%\n", filename, (100.0 - (100.0 *
       (double)dumpsize / (double)origsize)));
   got_siginfo = 0;
  }
 }
 return (0);
}

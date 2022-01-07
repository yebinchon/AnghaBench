
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int pbuf ;
typedef int off_t ;
typedef int buf ;
struct TYPE_6__ {scalar_t__ (* close ) (TYPE_1__*) ;} ;
typedef TYPE_1__ DB ;


 size_t BFRAG ;
 int BUFSIZ ;
 int DB_HASH ;
 int ENOMEM ;
 int MAX_RECURSION ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int SEEK_SET ;
 int _POSIX_PATH_MAX ;
 int _close (int) ;
 int _open (char*,int,int ) ;
 int _read (int,char*,int) ;
 int bcopy (char*,char*,int) ;
 int cdbget (TYPE_1__*,char**,char const*) ;
 char* cgetcap (char*,char*,char) ;
 scalar_t__ cgetmatch (char*,char const*) ;
 TYPE_1__* dbopen (char*,int,int ,int ,int ) ;
 int errno ;
 int free (char*) ;
 int lseek (int,int ,int ) ;
 char* malloc (size_t) ;
 int nfcmp (char*,char*) ;
 char* reallocf (char*,size_t) ;
 int snprintf (char*,int,char*,char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ stub1 (TYPE_1__*) ;
 scalar_t__ stub2 (TYPE_1__*) ;
 char* toprec ;
 size_t topreclen ;

__attribute__((used)) static int
getent(char **cap, u_int *len, char **db_array, int fd, const char *name,
    int depth, char *nfield)
{
 DB *capdbp;
 char *r_end, *rp, **db_p;
 int myfd, eof, foundit, retval;
 char *record, *cbuf;
 int tc_not_resolved;
 char pbuf[_POSIX_PATH_MAX];





 if (depth > MAX_RECURSION)
  return (-3);




 if (depth == 0 && toprec != ((void*)0) && cgetmatch(toprec, name) == 0) {
  if ((record = malloc (topreclen + BFRAG)) == ((void*)0)) {
   errno = ENOMEM;
   return (-2);
  }
  (void)strcpy(record, toprec);
  myfd = 0;
  db_p = db_array;
  rp = record + topreclen + 1;
  r_end = rp + BFRAG;
  goto tc_exp;
 }



 if ((record = malloc(BFRAG)) == ((void*)0)) {
  errno = ENOMEM;
  return (-2);
 }
 r_end = record + BFRAG;
 foundit = 0;




 for (db_p = db_array; *db_p != ((void*)0); db_p++) {
  eof = 0;





  if (fd >= 0) {
   (void)lseek(fd, (off_t)0, SEEK_SET);
   myfd = 0;
  } else {
   (void)snprintf(pbuf, sizeof(pbuf), "%s.db", *db_p);
   if ((capdbp = dbopen(pbuf, O_RDONLY, 0, DB_HASH, 0))
        != ((void*)0)) {
    free(record);
    retval = cdbget(capdbp, &record, name);
    if (retval < 0) {

     (void)capdbp->close(capdbp);
     return (retval);
    }

    cbuf = strdup(record);
    if (capdbp->close(capdbp) < 0) {
     free(cbuf);
     return (-2);
    }
    if (cbuf == ((void*)0)) {
     errno = ENOMEM;
     return (-2);
    }
    *len = strlen(cbuf);
    *cap = cbuf;
    return (retval);
   } else {
    fd = _open(*db_p, O_RDONLY | O_CLOEXEC, 0);
    if (fd < 0)
     continue;
    myfd = 1;
   }
  }



  {
  char buf[BUFSIZ];
  char *b_end, *bp;
  int c;
  b_end = buf;
  bp = buf;
  for (;;) {





   rp = record;
   for (;;) {
    if (bp >= b_end) {
     int n;

     n = _read(fd, buf, sizeof(buf));
     if (n <= 0) {
      if (myfd)
       (void)_close(fd);
      if (n < 0) {
       free(record);
       return (-2);
      } else {
       fd = -1;
       eof = 1;
       break;
      }
     }
     b_end = buf+n;
     bp = buf;
    }

    c = *bp++;
    if (c == '\n') {
     if (rp > record && *(rp-1) == '\\') {
      rp--;
      continue;
     } else
      break;
    }
    *rp++ = c;






    if (rp >= r_end) {
     u_int pos;
     size_t newsize;

     pos = rp - record;
     newsize = r_end - record + BFRAG;
     record = reallocf(record, newsize);
     if (record == ((void*)0)) {
      errno = ENOMEM;
      if (myfd)
       (void)_close(fd);
      return (-2);
     }
     r_end = record + newsize;
     rp = record + pos;
    }
   }

   *rp++ = '\0';




   if (eof)
    break;




   if (*record == '\0' || *record == '#')
    continue;




   if (cgetmatch(record, name) == 0) {
    if (nfield == ((void*)0) || !nfcmp(nfield, record)) {
     foundit = 1;
     break;
    }
   }
  }
 }
  if (foundit)
   break;
 }

 if (!foundit) {
  free(record);
  return (-1);
 }





tc_exp: {
  char *newicap, *s;
  int newilen;
  u_int ilen;
  int diff, iret, tclen;
  char *icap, *scan, *tc, *tcstart, *tcend;
  scan = record;
  tc_not_resolved = 0;
  for (;;) {
   if ((tc = cgetcap(scan, "tc", '=')) == ((void*)0))
    break;





   s = tc;
   for (;;)
    if (*s == '\0')
     break;
    else
     if (*s++ == ':') {
      *(s - 1) = '\0';
      break;
     }
   tcstart = tc - 3;
   tclen = s - tcstart;
   tcend = s;

   iret = getent(&icap, &ilen, db_p, fd, tc, depth+1,
          ((void*)0));
   newicap = icap;
   newilen = ilen;
   if (iret != 0) {

    if (iret < -1) {
     if (myfd)
      (void)_close(fd);
     free(record);
     return (iret);
    }
    if (iret == 1)
     tc_not_resolved = 1;

    if (iret == -1) {
     *(s - 1) = ':';
     scan = s - 1;
     tc_not_resolved = 1;
     continue;

    }
   }

   s = newicap;
   for (;;)
    if (*s == '\0')
     break;
    else
     if (*s++ == ':')
      break;
   newilen -= s - newicap;
   newicap = s;


   s += newilen;
   if (*(s-1) != ':') {
    *s = ':';
    newilen++;
   }





   diff = newilen - tclen;
   if (diff >= r_end - rp) {
    u_int pos, tcpos, tcposend;
    size_t newsize;

    pos = rp - record;
    newsize = r_end - record + diff + BFRAG;
    tcpos = tcstart - record;
    tcposend = tcend - record;
    record = reallocf(record, newsize);
    if (record == ((void*)0)) {
     errno = ENOMEM;
     if (myfd)
      (void)_close(fd);
     free(icap);
     return (-2);
    }
    r_end = record + newsize;
    rp = record + pos;
    tcstart = record + tcpos;
    tcend = record + tcposend;
   }




   s = tcstart + newilen;
   bcopy(tcend, s, rp - tcend);
   bcopy(newicap, tcstart, newilen);
   rp += diff;
   free(icap);





   scan = s-1;
  }

 }




 if (myfd)
  (void)_close(fd);
 *len = rp - record - 1;
 if (r_end > rp)
  if ((record =
       reallocf(record, (size_t)(rp - record))) == ((void*)0)) {
   errno = ENOMEM;
   return (-2);
  }

 *cap = record;
 if (tc_not_resolved)
  return (1);
 return (0);
}

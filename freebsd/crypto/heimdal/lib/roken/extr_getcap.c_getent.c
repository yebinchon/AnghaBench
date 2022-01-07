
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
 int O_RDONLY ;
 int SEEK_SET ;
 int _POSIX_PATH_MAX ;
 int cdbget (TYPE_1__*,char**,char const*) ;
 char* cgetcap (char*,char*,char) ;
 scalar_t__ cgetmatch (char*,char const*) ;
 int close (int) ;
 TYPE_1__* dbopen (char*,int ,int ,int ,int ) ;
 int errno ;
 int free (char*) ;
 int lseek (int,int ,int ) ;
 char* malloc (size_t) ;
 int memmove (char*,char*,size_t) ;
 int nfcmp (char*,char*) ;
 int open (char*,int ,int ) ;
 int read (int,char*,int) ;
 char* realloc (char*,size_t) ;
 int snprintf (char*,int,char*,char*) ;
 int strlcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;
 scalar_t__ stub1 (TYPE_1__*) ;
 scalar_t__ stub2 (TYPE_1__*) ;
 char* toprec ;
 size_t topreclen ;

__attribute__((used)) static int
getent(char **cap, size_t *len, char **db_array, int fd,
       const char *name, int depth, char *nfield)
{
    char *r_end, *rp = ((void*)0), **db_p;
    int myfd = 0, eof, foundit;
    char *record;
    int tc_not_resolved;





    if (depth > MAX_RECURSION)
 return (-3);




    if (depth == 0 && toprec != ((void*)0) && cgetmatch(toprec, name) == 0) {
 size_t len = topreclen + BFRAG;
 if ((record = malloc (len)) == ((void*)0)) {
     errno = ENOMEM;
     return (-2);
 }
 (void)strlcpy(record, toprec, len);
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
 } else {
     {
  fd = open(*db_p, O_RDONLY, 0);
  if (fd < 0) {

      continue;
  }
  myfd = 1;
     }
 }



 {
     char buf[BUFSIZ];
     char *b_end, *bp, *cp;
     int c, slash;
     b_end = buf;
     bp = buf;
     cp = 0;
     slash = 0;
     for (;;) {





  rp = record;
  for (;;) {
      if (bp >= b_end) {
   int n;

   n = read(fd, buf, sizeof(buf));
   if (n <= 0) {
       if (myfd)
    (void)close(fd);
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
   if (slash) {
       slash = 0;
       rp--;
       continue;
   } else
       break;
      }
      if (slash) {
   slash = 0;
   cp = 0;
      }
      if (c == ':') {






   if (cp)
       rp = cp;
   else
       cp = rp;
      } else if (c == '\\') {
   slash = 1;
      } else if (c != ' ' && c != '\t') {




   cp = 0;
      }
      *rp++ = c;






      if (rp >= r_end) {
   u_int pos;
   size_t newsize;

   pos = rp - record;
   newsize = r_end - record + BFRAG;
   record = realloc(record, newsize);
   if (record == ((void*)0)) {
       errno = ENOMEM;
       if (myfd)
    (void)close(fd);
       return (-2);
   }
   r_end = record + newsize;
   rp = record + pos;
      }
  }

  if (cp)
      rp = cp + 1;

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

    if (!foundit)
 return (-1);





 tc_exp: {
 char *newicap, *s;
 size_t ilen, newilen;
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
   (void)close(fd);
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
  record = realloc(record, newsize);
  if (record == ((void*)0)) {
      errno = ENOMEM;
      if (myfd)
   (void)close(fd);
      free(icap);
      return (-2);
  }
  r_end = record + newsize;
  rp = record + pos;
  tcstart = record + tcpos;
  tcend = record + tcposend;
     }




     s = tcstart + newilen;
     memmove(s, tcend, (size_t)(rp - tcend));
     memmove(tcstart, newicap, newilen);
     rp += diff;
     free(icap);





     scan = s-1;
 }

    }




    if (myfd)
 (void)close(fd);
    *len = rp - record - 1;
    if (r_end > rp)
 if ((record =
      realloc(record, (size_t)(rp - record))) == ((void*)0)) {
     errno = ENOMEM;
     return (-2);
 }

    *cap = record;
    if (tc_not_resolved)
 return (1);
    return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int u_long ;
typedef scalar_t__ u_int32_t ;
typedef void* time_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_8__ {void* tv_sec; } ;
struct stat {int st_mode; scalar_t__ st_flags; scalar_t__ st_rdev; int st_uid; int st_gid; scalar_t__ st_nlink; scalar_t__ st_size; int st_mtime; TYPE_5__ st_mtimespec; } ;
typedef int mode_t ;
struct TYPE_7__ {char* fts_accpath; struct stat* fts_statp; } ;
struct TYPE_6__ {int type; int flags; scalar_t__ st_rdev; int st_mode; scalar_t__ st_uid; scalar_t__ st_gid; scalar_t__ st_nlink; scalar_t__ st_size; scalar_t__ st_flags; char const* md5digest; char const* rmd160digest; char const* sha1digest; char const* sha256digest; char const* sha384digest; char const* sha512digest; char* slink; scalar_t__ cksum; TYPE_5__ st_mtimespec; } ;
typedef TYPE_1__ NODE ;
typedef TYPE_2__ FTSENT ;


 int CH_MASK ;
 int CLEARFLAGS (scalar_t__,int) ;


 int F_CKSUM ;
 int F_DEV ;



 int F_FLAGS ;
 scalar_t__ F_FREEBSD9 ;
 int F_GID ;
 int F_GNAME ;

 int F_MD5 ;
 int F_MODE ;
 int F_NLINK ;
 int F_RMD160 ;
 int F_SHA1 ;
 int F_SHA256 ;
 int F_SHA384 ;
 int F_SHA512 ;
 int F_SIZE ;
 int F_SLINK ;

 int F_TIME ;
 int F_UID ;
 int F_UNAME ;
 int LABEL ;
 int MBITS ;
 char* MD5File (char*,int *) ;
 char* MD5KEY ;
 int O_RDONLY ;
 char* RMD160File (char*,int *) ;
 char* RMD160KEY ;
 int SETFLAGS (scalar_t__,int) ;
 char* SHA1File (char*,int *) ;
 char* SHA1KEY ;
 char* SHA256KEY ;
 char* SHA256_File (char*,int *) ;
 char* SHA384KEY ;
 char* SHA384_File (char*,int *) ;
 char* SHA512KEY ;
 char* SHA512_File (char*,int *) ;
 int SP_FLGS ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_ISBLK (int) ;
 int S_ISCHR (int) ;
 int S_ISDIR (int) ;
 int S_ISFIFO (int) ;
 int S_ISLNK (int) ;
 int S_ISREG (int) ;
 int S_ISSOCK (int) ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,TYPE_5__*) ;
 int close (int) ;
 scalar_t__ crc (int,scalar_t__*,scalar_t__*) ;
 char* ctime (void**) ;
 int errno ;
 char* flags_to_string (scalar_t__,char*) ;
 scalar_t__ flavor ;
 int free (char*) ;
 scalar_t__ iflag ;
 int inotype (int) ;
 scalar_t__ lchmod (char*,int) ;
 int lchown (char*,int,int) ;
 scalar_t__ lflag ;
 scalar_t__ mflag ;
 int mknod (char*,int,scalar_t__) ;
 scalar_t__ mtree_Wflag ;
 int nodetoino (int const) ;
 int nodetype (int) ;
 int open (char*,int ,int ) ;
 int printf (char*,...) ;
 char* rlink (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strerror (int ) ;
 int symlink (char*,char*) ;
 scalar_t__ tflag ;
 scalar_t__ uflag ;
 int unlink (char*) ;
 scalar_t__ utimes (char*,struct timeval*) ;

int
compare(NODE *s, FTSENT *p)
{
 u_int32_t len, val, flags;
 int fd, label;
 const char *cp, *tab;

 char *digestbuf;


 tab = ((void*)0);
 label = 0;
 switch(s->type) {
 case 134:
  if (!S_ISBLK(p->fts_statp->st_mode))
   goto typeerr;
  break;
 case 133:
  if (!S_ISCHR(p->fts_statp->st_mode))
   goto typeerr;
  break;
 case 132:
  if (!S_ISDIR(p->fts_statp->st_mode))
   goto typeerr;
  break;
 case 131:
  if (!S_ISFIFO(p->fts_statp->st_mode))
   goto typeerr;
  break;
 case 130:
  if (!S_ISREG(p->fts_statp->st_mode))
   goto typeerr;
  break;
 case 129:
  if (!S_ISLNK(p->fts_statp->st_mode))
   goto typeerr;
  break;






typeerr: LABEL;
  printf(flavor == F_FREEBSD9 ?
      "\ttype expected %s found %s\n" : "\ttype (%s, %s)\n",
      nodetype(s->type), inotype(p->fts_statp->st_mode));
  return (label);
 }
 if (mtree_Wflag)
  goto afterpermwhack;
 if (s->flags & F_DEV &&
     (s->type == 134 || s->type == 133) &&
     s->st_rdev != p->fts_statp->st_rdev) {
  LABEL;
  printf(flavor == F_FREEBSD9 ?
      "%sdevice expected %#jx found %#jx" :
      "%sdevice (%#jx, %#jx",
      tab, (uintmax_t)s->st_rdev,
      (uintmax_t)p->fts_statp->st_rdev);
  if (uflag) {
   if ((unlink(p->fts_accpath) == -1) ||
       (mknod(p->fts_accpath,
         s->st_mode | nodetoino(s->type),
         s->st_rdev) == -1) ||
       (lchown(p->fts_accpath, p->fts_statp->st_uid,
         p->fts_statp->st_gid) == -1) )
    printf(", not modified: %s%s\n",
        strerror(errno),
        flavor == F_FREEBSD9 ? "" : ")");
    else
    printf(", modified%s\n",
        flavor == F_FREEBSD9 ? "" : ")");
  } else
   printf(")\n");
  tab = "\t";
 }

 if (s->flags & (F_UID | F_UNAME) && s->st_uid != p->fts_statp->st_uid) {
  LABEL;
  printf(flavor == F_FREEBSD9 ?
      "%suser expected %lu found %lu" : "%suser (%lu, %lu",
      tab, (u_long)s->st_uid, (u_long)p->fts_statp->st_uid);
  if (uflag) {
   if (lchown(p->fts_accpath, s->st_uid, -1))
    printf(", not modified: %s%s\n",
        strerror(errno),
        flavor == F_FREEBSD9 ? "" : ")");
   else
    printf(", modified%s\n",
        flavor == F_FREEBSD9 ? "" : ")");
  } else
   printf(")\n");
  tab = "\t";
 }
 if (s->flags & (F_GID | F_GNAME) && s->st_gid != p->fts_statp->st_gid) {
  LABEL;
  printf(flavor == F_FREEBSD9 ?
      "%sgid expected %lu found %lu" : "%sgid (%lu, %lu",
      tab, (u_long)s->st_gid, (u_long)p->fts_statp->st_gid);
  if (uflag) {
   if (lchown(p->fts_accpath, -1, s->st_gid))
    printf(", not modified: %s%s\n",
        strerror(errno),
        flavor == F_FREEBSD9 ? "" : ")");
   else
    printf(", modified%s\n",
        flavor == F_FREEBSD9 ? "" : ")");
  }
  else
   printf(")\n");
  tab = "\t";
 }
 if (s->flags & F_MODE &&
     s->st_mode != (p->fts_statp->st_mode & MBITS)) {
  if (lflag) {
   mode_t tmode, mode;

   tmode = s->st_mode;
   mode = p->fts_statp->st_mode & MBITS;





   if (!((tmode & ~(S_IRWXU|S_IRWXG|S_IRWXO)) ||
       (mode & ~(S_IRWXU|S_IRWXG|S_IRWXO))))
    if ((mode | tmode) == tmode)
     goto skip;
  }

  LABEL;
  printf(flavor == F_FREEBSD9 ?
      "%spermissions expcted %#lo found %#lo" :
      "%spermissions (%#lo, %#lo",
      tab, (u_long)s->st_mode,
      (u_long)p->fts_statp->st_mode & MBITS);
  if (uflag) {
   if (lchmod(p->fts_accpath, s->st_mode))
    printf(", not modified: %s%s\n",
        strerror(errno),
        flavor == F_FREEBSD9 ? "" : ")");
   else
    printf(", modified%s\n",
        flavor == F_FREEBSD9 ? "" : ")");
  }
  else
   printf(")\n");
  tab = "\t";
 skip: ;
 }
 if (s->flags & F_NLINK && s->type != 132 &&
     s->st_nlink != p->fts_statp->st_nlink) {
  LABEL;
  printf(flavor == F_FREEBSD9 ?
      "%slink count expected %lu found %lu\n" :
      "%slink count (%lu, %lu)\n",
      tab, (u_long)s->st_nlink, (u_long)p->fts_statp->st_nlink);
  tab = "\t";
 }
 if (s->flags & F_SIZE && s->st_size != p->fts_statp->st_size) {
  LABEL;
  printf(flavor == F_FREEBSD9 ?
      "%ssize expected %ju found %ju\n" : "%ssize (%ju, %ju)\n",
      tab, (uintmax_t)s->st_size,
      (uintmax_t)p->fts_statp->st_size);
  tab = "\t";
 }
 if (s->flags & F_TIME) {
  struct timeval tv[2];
  struct stat *ps = p->fts_statp;
  time_t smtime = s->st_mtimespec.tv_sec;







  time_t pmtime = (time_t)ps->st_mtime;

  tv[0].tv_sec = smtime;
  tv[0].tv_usec = 0;
  tv[1].tv_sec = pmtime;
  tv[1].tv_usec = 0;


  if (tv[0].tv_sec != tv[1].tv_sec ||
      tv[0].tv_usec != tv[1].tv_usec) {
   LABEL;
   printf(flavor == F_FREEBSD9 ?
       "%smodification time expected %.24s found " :
       "%smodification time (%.24s, ",
       tab, ctime(&smtime));
   printf("%.24s", ctime(&pmtime));
   if (tflag) {
    tv[1] = tv[0];
    if (utimes(p->fts_accpath, tv))
     printf(", not modified: %s%s\n",
         strerror(errno),
         flavor == F_FREEBSD9 ? "" : ")");
    else
     printf(", modified%s\n",
         flavor == F_FREEBSD9 ? "" : ")");
   } else
    printf("%s\n", flavor == F_FREEBSD9 ? "" : ")");
   tab = "\t";
  }
 }
 afterpermwhack:
 if (s->flags & F_CKSUM) {
  if ((fd = open(p->fts_accpath, O_RDONLY, 0)) < 0) {
   LABEL;
   printf("%scksum: %s: %s\n",
       tab, p->fts_accpath, strerror(errno));
   tab = "\t";
  } else if (crc(fd, &val, &len)) {
   close(fd);
   LABEL;
   printf("%scksum: %s: %s\n",
       tab, p->fts_accpath, strerror(errno));
   tab = "\t";
  } else {
   close(fd);
   if (s->cksum != val) {
    LABEL;
    printf(flavor == F_FREEBSD9 ?
        "%scksum expected %lu found %lu\n" :
        "%scksum (%lu, %lu)\n",
        tab, s->cksum, (unsigned long)val);
   }
   tab = "\t";
  }
 }

 if (s->flags & F_MD5) {
  if ((digestbuf = MD5File(p->fts_accpath, ((void*)0))) == ((void*)0)) {
   LABEL;
   printf("%s%s: %s: %s\n",
       tab, MD5KEY, p->fts_accpath, strerror(errno));
   tab = "\t";
  } else {
   if (strcmp(s->md5digest, digestbuf)) {
    LABEL;
    printf(flavor == F_FREEBSD9 ?
        "%s%s expected %s found %s\n" :
        "%s%s (0x%s, 0x%s)\n",
        tab, MD5KEY, s->md5digest, digestbuf);
   }
   tab = "\t";
   free(digestbuf);
  }
 }


 if (s->flags & F_RMD160) {
  if ((digestbuf = RMD160File(p->fts_accpath, ((void*)0))) == ((void*)0)) {
   LABEL;
   printf("%s%s: %s: %s\n",
       tab, RMD160KEY, p->fts_accpath, strerror(errno));
   tab = "\t";
  } else {
   if (strcmp(s->rmd160digest, digestbuf)) {
    LABEL;
    printf(flavor == F_FREEBSD9 ?
        "%s%s expected %s found %s\n" :
        "%s%s (0x%s, 0x%s)\n",
        tab, RMD160KEY, s->rmd160digest, digestbuf);
   }
   tab = "\t";
   free(digestbuf);
  }
 }


 if (s->flags & F_SHA1) {
  if ((digestbuf = SHA1File(p->fts_accpath, ((void*)0))) == ((void*)0)) {
   LABEL;
   printf("%s%s: %s: %s\n",
       tab, SHA1KEY, p->fts_accpath, strerror(errno));
   tab = "\t";
  } else {
   if (strcmp(s->sha1digest, digestbuf)) {
    LABEL;
    printf(flavor == F_FREEBSD9 ?
        "%s%s expected %s found %s\n" :
        "%s%s (0x%s, 0x%s)\n",
        tab, SHA1KEY, s->sha1digest, digestbuf);
   }
   tab = "\t";
   free(digestbuf);
  }
 }


 if (s->flags & F_SHA256) {
  if ((digestbuf = SHA256_File(p->fts_accpath, ((void*)0))) == ((void*)0)) {
   LABEL;
   printf("%s%s: %s: %s\n",
       tab, SHA256KEY, p->fts_accpath, strerror(errno));
   tab = "\t";
  } else {
   if (strcmp(s->sha256digest, digestbuf)) {
    LABEL;
    printf(flavor == F_FREEBSD9 ?
        "%s%s expected %s found %s\n" :
        "%s%s (0x%s, 0x%s)\n",
        tab, SHA256KEY, s->sha256digest, digestbuf);
   }
   tab = "\t";
   free(digestbuf);
  }
 }
 if (s->flags & F_SHA512) {
  if ((digestbuf = SHA512_File(p->fts_accpath, ((void*)0))) == ((void*)0)) {
   LABEL;
   printf("%s%s: %s: %s\n",
       tab, SHA512KEY, p->fts_accpath, strerror(errno));
   tab = "\t";
  } else {
   if (strcmp(s->sha512digest, digestbuf)) {
    LABEL;
    printf(flavor == F_FREEBSD9 ?
        "%s%s expected %s found %s\n" :
        "%s%s (0x%s, 0x%s)\n",
        tab, SHA512KEY, s->sha512digest, digestbuf);
   }
   tab = "\t";
   free(digestbuf);
  }
 }

 if (s->flags & F_SLINK &&
     strcmp(cp = rlink(p->fts_accpath), s->slink)) {
  LABEL;
  printf(flavor == F_FREEBSD9 ?
      "%slink ref expected %s found %s" :
      "%slink ref (%s, %s", tab, cp, s->slink);
  if (uflag) {
   if ((unlink(p->fts_accpath) == -1) ||
       (symlink(s->slink, p->fts_accpath) == -1) )
    printf(", not modified: %s%s\n",
        strerror(errno),
        flavor == F_FREEBSD9 ? "" : ")");
   else
    printf(", modified%s\n",
        flavor == F_FREEBSD9 ? "" : ")");
  } else
   printf("%s\n", flavor == F_FREEBSD9 ? "" : ")");
 }
 return (label);
}

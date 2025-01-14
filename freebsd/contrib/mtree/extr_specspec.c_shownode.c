
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef int intmax_t ;
struct TYPE_3__ {char* name; int st_gid; int st_mode; int st_uid; char* md5digest; char* sha1digest; char* rmd160digest; char* sha256digest; char* sha384digest; char* sha512digest; int st_flags; scalar_t__ st_size; scalar_t__ st_nlink; int cksum; int type; } ;
typedef TYPE_1__ NODE ;


 int F_CKSUM ;
 int F_FLAGS ;
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
 int F_UID ;
 int F_UNAME ;
 char* MD5KEY ;
 char* RMD160KEY ;
 char* SHA1KEY ;
 char* SHA256KEY ;
 char* SHA384KEY ;
 char* SHA512KEY ;
 char* flags_to_string (int ,char*) ;
 struct group* getgrgid (int) ;
 struct passwd* getpwuid (int) ;
 int inotype (int ) ;
 int nodetoino (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
shownode(NODE *n, int f, char const *path)
{
 struct group *gr;
 struct passwd *pw;

 printf("%s%s %s", path, n->name, inotype(nodetoino(n->type)));
 if (f & F_CKSUM)
  printf(" cksum=%lu", n->cksum);
 if (f & F_GID)
  printf(" gid=%d", n->st_gid);
 if (f & F_GNAME) {
  gr = getgrgid(n->st_gid);
  if (gr == ((void*)0))
   printf(" gid=%d", n->st_gid);
  else
   printf(" gname=%s", gr->gr_name);
 }
 if (f & F_MODE)
  printf(" mode=%o", n->st_mode);
 if (f & F_NLINK)
  printf(" nlink=%ju", (uintmax_t)n->st_nlink);
 if (f & F_SIZE)
  printf(" size=%jd", (intmax_t)n->st_size);
 if (f & F_UID)
  printf(" uid=%d", n->st_uid);
 if (f & F_UNAME) {
  pw = getpwuid(n->st_uid);
  if (pw == ((void*)0))
   printf(" uid=%d", n->st_uid);
  else
   printf(" uname=%s", pw->pw_name);
 }
 if (f & F_MD5)
  printf(" %s=%s", MD5KEY, n->md5digest);
 if (f & F_SHA1)
  printf(" %s=%s", SHA1KEY, n->sha1digest);
 if (f & F_RMD160)
  printf(" %s=%s", RMD160KEY, n->rmd160digest);
 if (f & F_SHA256)
  printf(" %s=%s", SHA256KEY, n->sha256digest);
 if (f & F_SHA384)
  printf(" %s=%s", SHA384KEY, n->sha384digest);
 if (f & F_SHA512)
  printf(" %s=%s", SHA512KEY, n->sha512digest);
 if (f & F_FLAGS)
  printf(" flags=%s", flags_to_string(n->st_flags, "none"));
 printf("\n");
}

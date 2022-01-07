
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uid_t ;
typedef int time_t ;
typedef int off_t ;
typedef int nlink_t ;
typedef void* gid_t ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_5__ {int flags; int * sha512digest; int * sha384digest; int * sha256digest; void* st_uid; int type; TYPE_1__ st_mtimespec; int * tags; int * slink; int st_size; int * sha1digest; int * rmd160digest; int st_nlink; int st_mode; int * md5digest; void* st_gid; int st_flags; int st_rdev; int cksum; } ;
typedef TYPE_2__ NODE ;
 int errno ;
 int free (void*) ;
 int getmode (void*,int ) ;
 int gid_from_group (char*,void**) ;
 int * malloc (int) ;
 int mtree_Wflag ;
 int mtree_err (char*,...) ;
 int parsedev (char*) ;
 int parsekey (char*,int*) ;
 int parsetype (char*) ;
 void* setmode (char*) ;
 int snprintf (int *,int,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;
 int strerror (int ) ;
 int string_to_flags (char**,int *,int *) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 int strtol (char*,char**,int) ;
 int strtoll (char*,char**,int) ;
 int strtoul (char*,char**,int) ;
 int strunvis (int *,char*) ;
 int uid_from_user (char*,void**) ;

__attribute__((used)) static void
set(char *t, NODE *ip)
{
 int type, value, len;
 gid_t gid;
 uid_t uid;
 char *kw, *val, *md, *ep;
 void *m;

 while ((kw = strsep(&t, "= \t")) != ((void*)0)) {
  if (*kw == '\0')
   continue;
  if (strcmp(kw, "all") == 0)
   mtree_err("invalid keyword `all'");
  ip->flags |= type = parsekey(kw, &value);
  if (!value)

   continue;
  while ((val = strsep(&t, " \t")) != ((void*)0) && *val == '\0')
   continue;
  if (val == ((void*)0))
   mtree_err("missing value");
  switch (type) {
  case 147:
   ip->cksum = strtoul(val, &ep, 10);
   if (*ep)
    mtree_err("invalid checksum `%s'", val);
   break;
  case 146:
   ip->st_rdev = parsedev(val);
   break;
  case 145:
   if (strcmp("none", val) == 0)
    ip->st_flags = 0;
   else if (string_to_flags(&val, &ip->st_flags, ((void*)0))
       != 0)
    mtree_err("invalid flag `%s'", val);
   break;
  case 144:
   ip->st_gid = (gid_t)strtoul(val, &ep, 10);
   if (*ep)
    mtree_err("invalid gid `%s'", val);
   break;
  case 143:
   if (mtree_Wflag)
    break;
   if (gid_from_group(val, &gid) == -1)
    mtree_err("unknown group `%s'", val);
   ip->st_gid = gid;
   break;
  case 142:
   if (val[0]=='0' && val[1]=='x')
    md=&val[2];
   else
    md=val;
   if ((ip->md5digest = strdup(md)) == ((void*)0))
    mtree_err("memory allocation error");
   break;
  case 141:
   if ((m = setmode(val)) == ((void*)0))
    mtree_err("cannot set file mode `%s' (%s)",
        val, strerror(errno));
   ip->st_mode = getmode(m, 0);
   free(m);
   break;
  case 140:
   ip->st_nlink = (nlink_t)strtoul(val, &ep, 10);
   if (*ep)
    mtree_err("invalid link count `%s'", val);
   break;
  case 139:
   if (val[0]=='0' && val[1]=='x')
    md=&val[2];
   else
    md=val;
   if ((ip->rmd160digest = strdup(md)) == ((void*)0))
    mtree_err("memory allocation error");
   break;
  case 138:
   if (val[0]=='0' && val[1]=='x')
    md=&val[2];
   else
    md=val;
   if ((ip->sha1digest = strdup(md)) == ((void*)0))
    mtree_err("memory allocation error");
   break;
  case 134:
   ip->st_size = (off_t)strtoll(val, &ep, 10);
   if (*ep)
    mtree_err("invalid size `%s'", val);
   break;
  case 133:
   if ((ip->slink = strdup(val)) == ((void*)0))
    mtree_err("memory allocation error");
   if (strunvis(ip->slink, val) == -1)
    mtree_err("strunvis failed on `%s'", val);
   break;
  case 132:
   len = strlen(val) + 3;
   if ((ip->tags = malloc(len)) == ((void*)0))
    mtree_err("memory allocation error");
   snprintf(ip->tags, len, ",%s,", val);
   break;
  case 131:
   ip->st_mtimespec.tv_sec =
       (time_t)strtoll(val, &ep, 10);
   if (*ep != '.')
    mtree_err("invalid time `%s'", val);
   val = ep + 1;
   ip->st_mtimespec.tv_nsec = strtol(val, &ep, 10);
   if (*ep)
    mtree_err("invalid time `%s'", val);
   break;
  case 130:
   ip->type = parsetype(val);
   break;
  case 129:
   ip->st_uid = (uid_t)strtoul(val, &ep, 10);
   if (*ep)
    mtree_err("invalid uid `%s'", val);
   break;
  case 128:
   if (mtree_Wflag)
    break;
   if (uid_from_user(val, &uid) == -1)
    mtree_err("unknown user `%s'", val);
   ip->st_uid = uid;
   break;
  case 137:
   if (val[0]=='0' && val[1]=='x')
    md=&val[2];
   else
    md=val;
   if ((ip->sha256digest = strdup(md)) == ((void*)0))
    mtree_err("memory allocation error");
   break;
  case 136:
   if (val[0]=='0' && val[1]=='x')
    md=&val[2];
   else
    md=val;
   if ((ip->sha384digest = strdup(md)) == ((void*)0))
    mtree_err("memory allocation error");
   break;
  case 135:
   if (val[0]=='0' && val[1]=='x')
    md=&val[2];
   else
    md=val;
   if ((ip->sha512digest = strdup(md)) == ((void*)0))
    mtree_err("memory allocation error");
   break;
  default:
   mtree_err(
       "set(): unsupported key type 0x%x (INTERNAL ERROR)",
       type);

  }
 }
}

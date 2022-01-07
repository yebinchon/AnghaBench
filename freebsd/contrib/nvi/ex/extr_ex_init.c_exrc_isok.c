
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct stat {scalar_t__ st_uid; int st_mode; } ;
typedef enum rc { ____Placeholder_rc } rc ;
typedef int SCR ;


 int FREE_SPACE (int *,char*,int ) ;
 int M_ERR ;
 int M_SYSERR ;
 int NOEXIST ;
 int NOPERM ;
 int RCOK ;
 int S_IWGRP ;
 int S_IWOTH ;
 int free (char*) ;
 char* getcwd (int *,int ) ;
 scalar_t__ geteuid () ;
 char* join (char*,char*) ;
 char* msg_print (int *,char*,int*) ;
 int msgq (int *,int ,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 int * strchr (char*,char) ;

__attribute__((used)) static enum rc
exrc_isok(SCR *sp, struct stat *sbp, char *path, int rootown, int rootid)
{
 enum { ROOTOWN, OWN, WRITER } etype;
 uid_t euid;
 int nf1, nf2;
 char *a, *b, *buf;


 if (stat(path, sbp))
  return (NOEXIST);


 euid = geteuid();
 if (!(rootown && sbp->st_uid == 0) &&
     !(rootid && euid == 0) && sbp->st_uid != euid) {
  etype = rootown ? ROOTOWN : OWN;
  goto denied;
 }


 if (sbp->st_mode & (S_IWGRP | S_IWOTH)) {
  etype = WRITER;
  goto denied;
 }
 return (RCOK);

denied: a = msg_print(sp, path, &nf1);
 if (strchr(path, '/') == ((void*)0) && (buf = getcwd(((void*)0), 0)) != ((void*)0)) {
  char *p;

  b = msg_print(sp, buf, &nf2);
  if ((p = join(b, a)) == ((void*)0)) {
   msgq(sp, M_SYSERR, ((void*)0));
   goto err;
  }
  switch (etype) {
  case ROOTOWN:
   msgq(sp, M_ERR,
       "128|%s: not sourced: not owned by you or root", p);
   break;
  case OWN:
   msgq(sp, M_ERR,
       "129|%s: not sourced: not owned by you", p);
   break;
  case WRITER:
   msgq(sp, M_ERR,
    "130|%s: not sourced: writeable by a user other than the owner", p);
   break;
  }
  free(p);
err: free(buf);
  if (nf2)
   FREE_SPACE(sp, b, 0);
 } else
  switch (etype) {
  case ROOTOWN:
   msgq(sp, M_ERR,
       "128|%s: not sourced: not owned by you or root", a);
   break;
  case OWN:
   msgq(sp, M_ERR,
       "129|%s: not sourced: not owned by you", a);
   break;
  case WRITER:
   msgq(sp, M_ERR,
     "130|%s: not sourced: writeable by a user other than the owner", a);
   break;
  }

 if (nf1)
  FREE_SPACE(sp, a, 0);
 return (NOPERM);
}

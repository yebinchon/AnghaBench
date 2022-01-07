
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_8__ {int* val; } ;
struct statfs {char* f_mntfromname; char* f_mntonname; TYPE_2__ f_fsid; int f_fstypename; } ;
struct nfscl_dumpmntopts {char* ndmnt_fname; char* ndmnt_buf; int ndmnt_blen; } ;
struct addrinfo {int dummy; } ;
typedef int fsidbuf ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int caddr_t ;
typedef int buf ;
struct TYPE_7__ {int cl_auth; } ;
typedef TYPE_1__ CLIENT ;


 int CHECKUNIQUE ;
 scalar_t__ ENOENT ;
 int MNT_BYFSID ;
 int MNT_FORCE ;
 int MOUNTPROC_UMNT ;
 int MOUNTPROG ;
 int MOUNTVERS3 ;
 int NFSSVC_DUMPMNTOPTS ;
 int REMOVE ;
 int RPC_SUCCESS ;
 int auth_destroy (int ) ;
 int authsys_create_default () ;
 int clean_mtab (char*,char*,scalar_t__) ;
 int clnt_call (TYPE_1__*,int ,int ,char*,int ,int ,struct timeval) ;
 TYPE_1__* clnt_create (char*,int ,int ,char const*) ;
 int clnt_destroy (TYPE_1__*) ;
 char* clnt_spcreateerror (char*) ;
 char* clnt_sperror (TYPE_1__*,char*) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int fflag ;
 int free (char*) ;
 int free_mtab () ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int * getmntentry (char*,int *,TYPE_2__*,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int namematch (struct addrinfo*) ;
 scalar_t__ nfssvc (int ,struct nfscl_dumpmntopts*) ;
 int printf (char*,char*,char*) ;
 scalar_t__ read_mtab () ;
 int snprintf (char*,int,char*,int,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int ,char*) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;
 int * strstr (char*,char*) ;
 scalar_t__ unmount (char*,int) ;
 scalar_t__ vflag ;
 int warn (char*,char*) ;
 int warnx (char*,...) ;
 int write_mtab (scalar_t__) ;
 scalar_t__ xdr_dir ;
 scalar_t__ xdr_void ;

int
umountfs(struct statfs *sfs)
{
 char fsidbuf[64];
 enum clnt_stat clnt_stat;
 struct timeval try;
 struct addrinfo *ai, hints;
 int do_rpc;
 CLIENT *clp;
 char *nfsdirname, *orignfsdirname;
 char *hostp, *delimp;
 char buf[1024];
 struct nfscl_dumpmntopts dumpmntopts;
 const char *proto_ptr = ((void*)0);

 ai = ((void*)0);
 do_rpc = 0;
 hostp = ((void*)0);
 nfsdirname = delimp = orignfsdirname = ((void*)0);
 memset(&hints, 0, sizeof hints);

 if (strcmp(sfs->f_fstypename, "nfs") == 0) {
  if ((nfsdirname = strdup(sfs->f_mntfromname)) == ((void*)0))
   err(1, "strdup");
  orignfsdirname = nfsdirname;
  if (*nfsdirname == '[' &&
      (delimp = strchr(nfsdirname + 1, ']')) != ((void*)0) &&
      *(delimp + 1) == ':') {
   hostp = nfsdirname + 1;
   nfsdirname = delimp + 2;
  } else if ((delimp = strrchr(nfsdirname, ':')) != ((void*)0)) {
   hostp = nfsdirname;
   nfsdirname = delimp + 1;
  }
  if (hostp != ((void*)0)) {
   *delimp = '\0';
   getaddrinfo(hostp, ((void*)0), &hints, &ai);
   if (ai == ((void*)0)) {
    warnx("can't get net id for host");
   }
  }
  if (getmntentry(sfs->f_mntfromname, ((void*)0), ((void*)0),
      CHECKUNIQUE) != ((void*)0)) {
   do_rpc = 1;
   proto_ptr = "udp";





   dumpmntopts.ndmnt_fname = sfs->f_mntonname;
   dumpmntopts.ndmnt_buf = buf;
   dumpmntopts.ndmnt_blen = sizeof(buf);
   if (nfssvc(NFSSVC_DUMPMNTOPTS, &dumpmntopts) >= 0) {
    if (strstr(buf, "nfsv4,") != ((void*)0))
     do_rpc = 0;
    else if (strstr(buf, ",tcp,") != ((void*)0))
     proto_ptr = "tcp";
   }
  }
 }

 if (!namematch(ai)) {
  free(orignfsdirname);
  return (1);
 }

 snprintf(fsidbuf, sizeof(fsidbuf), "FSID:%d:%d", sfs->f_fsid.val[0],
     sfs->f_fsid.val[1]);
 if (unmount(fsidbuf, fflag | MNT_BYFSID) != 0) {

  if (errno != ENOENT || sfs->f_fsid.val[0] != 0 ||
      sfs->f_fsid.val[1] != 0)
   warn("unmount of %s failed", sfs->f_mntonname);
  if (errno != ENOENT) {
   free(orignfsdirname);
   return (1);
  }

  if (sfs->f_fsid.val[0] != 0 || sfs->f_fsid.val[1] != 0)
   warnx("retrying using path instead of file system ID");
  if (unmount(sfs->f_mntonname, fflag) != 0) {
   warn("unmount of %s failed", sfs->f_mntonname);
   free(orignfsdirname);
   return (1);
  }
 }

 getmntentry(((void*)0), ((void*)0), &sfs->f_fsid, REMOVE);
 if (vflag)
  (void)printf("%s: unmount from %s\n", sfs->f_mntfromname,
      sfs->f_mntonname);




 if (ai != ((void*)0) && !(fflag & MNT_FORCE) && do_rpc) {
  clp = clnt_create(hostp, MOUNTPROG, MOUNTVERS3, proto_ptr);
  if (clp == ((void*)0)) {
   warnx("%s: %s", hostp,
       clnt_spcreateerror("MOUNTPROG"));
   free(orignfsdirname);
   return (1);
  }
  clp->cl_auth = authsys_create_default();
  try.tv_sec = 20;
  try.tv_usec = 0;
  clnt_stat = clnt_call(clp, MOUNTPROC_UMNT, (xdrproc_t)xdr_dir,
      nfsdirname, (xdrproc_t)xdr_void, (caddr_t)0, try);
  if (clnt_stat != RPC_SUCCESS) {
   warnx("%s: %s", hostp,
       clnt_sperror(clp, "RPCMNT_UMOUNT"));
   free(orignfsdirname);
   return (1);
  }



  if (read_mtab()) {
   clean_mtab(hostp, nfsdirname, vflag);
   if(!write_mtab(vflag))
    warnx("cannot remove mounttab entry %s:%s",
        hostp, nfsdirname);
   free_mtab();
  }
  auth_destroy(clp->cl_auth);
  clnt_destroy(clp);
 }
 free(orignfsdirname);
 return (0);
}

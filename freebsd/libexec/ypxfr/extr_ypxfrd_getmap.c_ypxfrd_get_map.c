
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct ypxfr_mapname {char* xfrmap; char* xfrdomain; char* xfrmap_filename; int xfr_db_type; } ;
struct xfr {int dummy; } ;
struct timeval {int member_1; int member_0; } ;
typedef int resp ;
typedef int CLIENT ;


 int O_CREAT ;
 int O_RDWR ;
 int PERM_SECURE ;
 scalar_t__ RPC_SUCCESS ;
 int XFR_DB_BSD_HASH ;
 int YPXFRD_FREEBSD_PROG ;
 int YPXFRD_FREEBSD_VERS ;
 int YPXFRD_GETMAP ;
 int bzero (char*,int) ;
 scalar_t__ clnt_call (int *,int ,int ,char*,int ,char*,struct timeval) ;
 int * clnt_create (char*,int ,int ,char*) ;
 int clnt_destroy (int *) ;
 int clnt_sperror (int *,char*) ;
 int close (int) ;
 int errno ;
 int fp ;
 int open (char*,int,int ) ;
 int strerror (int ) ;
 int unlink (char*) ;
 scalar_t__ xdr_my_xfr ;
 scalar_t__ xdr_ypxfr_mapname ;
 int yp_error (char*,char*,...) ;

int
ypxfrd_get_map(char *host, char *map, char *domain, char *tmpname)
{
 CLIENT *clnt;
 struct ypxfr_mapname req;
 struct xfr resp;
 struct timeval timeout = { 0, 25 };
 int status = 0;

 req.xfrmap = map;
 req.xfrdomain = domain;
 req.xfrmap_filename = "";
 req.xfr_db_type = XFR_DB_BSD_HASH;




 bzero((char *)&resp, sizeof(resp));

 if ((clnt = clnt_create(host, YPXFRD_FREEBSD_PROG,
    YPXFRD_FREEBSD_VERS, "tcp")) == ((void*)0)) {
  return(1);
 }

 if ((fp = open(tmpname, O_RDWR|O_CREAT, PERM_SECURE)) == -1) {
  clnt_destroy(clnt);
  yp_error("couldn't open %s: %s", tmpname, strerror(errno));
  return(1);
 }

 if (clnt_call(clnt,YPXFRD_GETMAP,
   (xdrproc_t)xdr_ypxfr_mapname, (char *)&req,
   (xdrproc_t)xdr_my_xfr, (char *)&resp,
   timeout) != RPC_SUCCESS) {
  yp_error("%s", clnt_sperror(clnt,"call to rpc.ypxfrd failed"));
  status++;
  unlink(tmpname);
 }

 clnt_destroy(clnt);
 close(fp);
 return(status);
}

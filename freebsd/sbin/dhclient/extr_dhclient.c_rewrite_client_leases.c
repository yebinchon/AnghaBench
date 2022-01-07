
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct client_lease {struct client_lease* next; } ;
typedef int cap_rights_t ;
struct TYPE_5__ {TYPE_1__* client; } ;
struct TYPE_4__ {struct client_lease* active; struct client_lease* leases; } ;


 int CAP_FCNTL ;
 int CAP_FCNTL_GETFL ;
 int CAP_FSTAT ;
 int CAP_FSYNC ;
 int CAP_FTRUNCATE ;
 int CAP_SEEK ;
 int CAP_WRITE ;
 int cap_rights_init (int *,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ caph_fcntls_limit (int ,int ) ;
 scalar_t__ caph_rights_limit (int ,int *) ;
 int error (char*,...) ;
 int fflush (scalar_t__) ;
 int fileno (scalar_t__) ;
 scalar_t__ fopen (int ,char*) ;
 int fsync (int ) ;
 int ftello (scalar_t__) ;
 int ftruncate (int ,int ) ;
 TYPE_2__* ifi ;
 scalar_t__ leaseFile ;
 int path_dhclient_db ;
 int rewind (scalar_t__) ;
 int write_client_lease (TYPE_2__*,struct client_lease*,int) ;

void
rewrite_client_leases(void)
{
 struct client_lease *lp;
 cap_rights_t rights;

 if (!leaseFile) {
  leaseFile = fopen(path_dhclient_db, "w");
  if (!leaseFile)
   error("can't create %s: %m", path_dhclient_db);
  cap_rights_init(&rights, CAP_FCNTL, CAP_FSTAT, CAP_FSYNC,
      CAP_FTRUNCATE, CAP_SEEK, CAP_WRITE);
  if (caph_rights_limit(fileno(leaseFile), &rights) < 0) {
   error("can't limit lease descriptor: %m");
  }
  if (caph_fcntls_limit(fileno(leaseFile), CAP_FCNTL_GETFL) < 0) {
   error("can't limit lease descriptor fcntls: %m");
  }
 } else {
  fflush(leaseFile);
  rewind(leaseFile);
 }

 for (lp = ifi->client->leases; lp; lp = lp->next)
  write_client_lease(ifi, lp, 1);
 if (ifi->client->active)
  write_client_lease(ifi, ifi->client->active, 1);

 fflush(leaseFile);
 ftruncate(fileno(leaseFile), ftello(leaseFile));
 fsync(fileno(leaseFile));
}

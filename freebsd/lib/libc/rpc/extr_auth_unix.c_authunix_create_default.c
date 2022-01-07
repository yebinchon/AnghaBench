
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int machname ;
typedef int gid_t ;
typedef int AUTH ;


 int MAXHOSTNAMELEN ;
 int NGRPS ;
 int _SC_NGROUPS_MAX ;
 int abort () ;
 int * authunix_create (char*,int ,int ,int,int *) ;
 int free (int *) ;
 int getegid () ;
 int geteuid () ;
 int getgroups (long,int *) ;
 int gethostname (char*,int) ;
 int * malloc (int) ;
 int sysconf (int ) ;

AUTH *
authunix_create_default(void)
{
 AUTH *auth;
 int ngids;
 long ngids_max;
 char machname[MAXHOSTNAMELEN + 1];
 uid_t uid;
 gid_t gid;
 gid_t *gids;

 ngids_max = sysconf(_SC_NGROUPS_MAX) + 1;
 gids = malloc(sizeof(gid_t) * ngids_max);
 if (gids == ((void*)0))
  return (((void*)0));

 if (gethostname(machname, sizeof machname) == -1)
  abort();
 machname[sizeof(machname) - 1] = 0;
 uid = geteuid();
 gid = getegid();
 if ((ngids = getgroups(ngids_max, gids)) < 0)
  abort();
 if (ngids > NGRPS)
  ngids = NGRPS;

 auth = authunix_create(machname, uid, gid, ngids, gids);
 free(gids);
 return (auth);
}

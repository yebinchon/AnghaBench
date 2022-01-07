
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int CE_WARN ;
 int EBADF ;
 int SET_ERROR (int ) ;
 int ZPOOL_CONFIG_HOSTID ;
 int ZPOOL_CONFIG_HOSTNAME ;
 int cmn_err (int ,char*,int ,char*,int ) ;
 char* fnvlist_lookup_string (int *,int ) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int spa_is_root (int *) ;
 int spa_load_failed (int *,char*,char*,int ) ;
 int spa_name (int *) ;
 scalar_t__ zone_get_hostid (int *) ;

__attribute__((used)) static int
spa_verify_host(spa_t *spa, nvlist_t *mos_config)
{
 uint64_t hostid;
 char *hostname;
 uint64_t myhostid = 0;

 if (!spa_is_root(spa) && nvlist_lookup_uint64(mos_config,
     ZPOOL_CONFIG_HOSTID, &hostid) == 0) {
  hostname = fnvlist_lookup_string(mos_config,
      ZPOOL_CONFIG_HOSTNAME);

  myhostid = zone_get_hostid(((void*)0));

  if (hostid != 0 && myhostid != 0 && hostid != myhostid) {
   cmn_err(CE_WARN, "pool '%s' could not be "
       "loaded as it was last accessed by "
       "another system (host: %s hostid: 0x%llx). "
       "See: http://illumos.org/msg/ZFS-8000-EY",
       spa_name(spa), hostname, (u_longlong_t)hostid);
   spa_load_failed(spa, "hostid verification failed: pool "
       "last accessed by host: %s (hostid: 0x%llx)",
       hostname, (u_longlong_t)hostid);
   return (SET_ERROR(EBADF));
  }
 }

 return (0);
}

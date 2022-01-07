
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int int32_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int KM_SLEEP ;
 int VERIFY0 (int ) ;
 char* ZCP_ARG_ARGLIST ;
 int ZCP_RET_ERROR ;
 int ZCP_RET_RETURN ;
 int fnvlist_add_boolean_value (int *,char*,int ) ;
 int fnvlist_add_int32 (int *,char*,int) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 int fnvpair_value_int64 (int *) ;
 int nvlist_alloc (int **,int ,int ) ;
 int nvlist_lookup_string (int *,int ,char**) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int zcp_eval (char*,char const*,int ,int ,int ,int *,int *) ;
 int zfs_dbgmsg (char*) ;
 int zfs_lua_max_memlimit ;

int
dsl_destroy_snapshots_nvl(nvlist_t *snaps, boolean_t defer,
    nvlist_t *errlist)
{
 if (nvlist_next_nvpair(snaps, ((void*)0)) == ((void*)0))
  return (0);
 nvlist_t *snaps_normalized;
 VERIFY0(nvlist_alloc(&snaps_normalized, 0, KM_SLEEP));
 for (nvpair_t *pair = nvlist_next_nvpair(snaps, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(snaps, pair)) {
  fnvlist_add_boolean_value(snaps_normalized,
      nvpair_name(pair), B_TRUE);
 }

 nvlist_t *arg;
 VERIFY0(nvlist_alloc(&arg, 0, KM_SLEEP));
 fnvlist_add_nvlist(arg, "snaps", snaps_normalized);
 fnvlist_free(snaps_normalized);
 fnvlist_add_boolean_value(arg, "defer", defer);

 nvlist_t *wrapper;
 VERIFY0(nvlist_alloc(&wrapper, 0, KM_SLEEP));
 fnvlist_add_nvlist(wrapper, ZCP_ARG_ARGLIST, arg);
 fnvlist_free(arg);

 const char *program =
     "arg = ...\n"
     "snaps = arg['snaps']\n"
     "defer = arg['defer']\n"
     "errors = { }\n"
     "has_errors = false\n"
     "for snap, v in pairs(snaps) do\n"
     "    errno = zfs.check.destroy{snap, defer=defer}\n"
     "    zfs.debug('snap: ' .. snap .. ' errno: ' .. errno)\n"
     "    if errno == ENOENT then\n"
     "        snaps[snap] = nil\n"
     "    elseif errno ~= 0 then\n"
     "        errors[snap] = errno\n"
     "        has_errors = true\n"
     "    end\n"
     "end\n"
     "if has_errors then\n"
     "    return errors\n"
     "end\n"
     "for snap, v in pairs(snaps) do\n"
     "    errno = zfs.sync.destroy{snap, defer=defer}\n"
     "    assert(errno == 0)\n"
     "end\n"
     "return { }\n";

 nvlist_t *result = fnvlist_alloc();
 int error = zcp_eval(nvpair_name(nvlist_next_nvpair(snaps, ((void*)0))),
     program,
     B_TRUE,
     0,
     zfs_lua_max_memlimit,
     nvlist_next_nvpair(wrapper, ((void*)0)), result);
 if (error != 0) {
  char *errorstr = ((void*)0);
  (void) nvlist_lookup_string(result, ZCP_RET_ERROR, &errorstr);
  if (errorstr != ((void*)0)) {
   zfs_dbgmsg(errorstr);
  }
  return (error);
 }
 fnvlist_free(wrapper);






 int rv = 0;
 nvlist_t *errlist_raw = fnvlist_lookup_nvlist(result, ZCP_RET_RETURN);
 for (nvpair_t *pair = nvlist_next_nvpair(errlist_raw, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(errlist_raw, pair)) {
  int32_t val = (int32_t)fnvpair_value_int64(pair);
  if (rv == 0)
   rv = val;
  fnvlist_add_int32(errlist, nvpair_name(pair), val);
 }
 fnvlist_free(result);
 return (rv);
}

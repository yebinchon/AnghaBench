
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STAB ;


 int DB_VERSION_MAJOR ;
 int DB_VERSION_MINOR ;
 int DB_VERSION_PATCH ;
 int MAPDEF (char*,char*,int,int ,int ,int ,int ,int ) ;
 int MCF_ALIASOK ;
 int MCF_ALIASONLY ;
 int MCF_NOTPERSIST ;
 int MCF_OPTFILE ;
 int MCF_REBUILDABLE ;
 int arith_map_lookup ;
 int arpa_map_lookup ;
 int bestmx_map_lookup ;
 int bogus_map_lookup ;
 int bt_map_open ;
 int db_map_close ;
 int db_map_lookup ;
 int db_map_store ;
 int db_version (int*,int*,int*) ;
 int dequote_init ;
 int dequote_map ;
 int dns_map_init ;
 int dns_map_lookup ;
 int dns_map_open ;
 int dns_map_parseargs ;
 int dprintf_map_lookup ;
 int dprintf_map_parseargs ;
 scalar_t__ errno ;
 int hash_map_open ;
 int hes_map_close ;
 int hes_map_lookup ;
 int hes_map_open ;
 int host_map_init ;
 int host_map_lookup ;
 int impl_map_close ;
 int impl_map_lookup ;
 int impl_map_open ;
 int impl_map_store ;
 int ldapmap_close ;
 int ldapmap_lookup ;
 int ldapmap_open ;
 int ldapmap_parseargs ;
 int macro_map_lookup ;
 int map_parseargs ;
 int ndbm_map_close ;
 int ndbm_map_lookup ;
 int ndbm_map_open ;
 int ndbm_map_store ;
 int ni_map_lookup ;
 int ni_map_open ;
 int nis_map_lookup ;
 int nis_map_open ;
 int nisplus_map_lookup ;
 int nisplus_map_open ;
 int nsd_map_lookup ;
 int null_map_close ;
 int null_map_lookup ;
 int null_map_open ;
 int null_map_store ;
 int ph_map_close ;
 int ph_map_lookup ;
 int ph_map_open ;
 int ph_map_parseargs ;
 int prog_map_lookup ;
 int regex_map_init ;
 int regex_map_lookup ;
 int seq_map_lookup ;
 int seq_map_parse ;
 int seq_map_store ;
 int socket_map_close ;
 int socket_map_lookup ;
 int socket_map_open ;
 int stab_map_lookup ;
 int stab_map_open ;
 int stab_map_store ;
 int switch_map_open ;
 int syserr (char*,int,int,int ,int,int,int) ;
 int syslog_map_lookup ;
 int syslog_map_parseargs ;
 scalar_t__ tTd (int,int) ;
 int text_map_lookup ;
 int text_map_open ;
 int udb_map_lookup ;
 int user_map_lookup ;
 int user_map_open ;

__attribute__((used)) static void
setupmaps()
{
 register STAB *s;
 MAPDEF("host", ((void*)0), 0,
  host_map_init, null_map_open, null_map_close,
  host_map_lookup, null_map_store);

 MAPDEF("text", ((void*)0), MCF_ALIASOK,
  map_parseargs, text_map_open, null_map_close,
  text_map_lookup, null_map_store);

 MAPDEF("stab", ((void*)0), MCF_ALIASOK|MCF_ALIASONLY,
  map_parseargs, stab_map_open, null_map_close,
  stab_map_lookup, stab_map_store);

 MAPDEF("implicit", ((void*)0), MCF_ALIASOK|MCF_ALIASONLY|MCF_REBUILDABLE,
  map_parseargs, impl_map_open, impl_map_close,
  impl_map_lookup, impl_map_store);


 MAPDEF("user", ((void*)0), MCF_OPTFILE,
  map_parseargs, user_map_open, null_map_close,
  user_map_lookup, null_map_store);


 MAPDEF("dequote", ((void*)0), 0,
  dequote_init, null_map_open, null_map_close,
  dequote_map, null_map_store);
 MAPDEF("program", ((void*)0), MCF_ALIASOK,
  map_parseargs, null_map_open, null_map_close,
  prog_map_lookup, null_map_store);


 MAPDEF("sequence", ((void*)0), MCF_ALIASOK,
  seq_map_parse, null_map_open, null_map_close,
  seq_map_lookup, seq_map_store);


 MAPDEF("switch", ((void*)0), MCF_ALIASOK,
  map_parseargs, switch_map_open, null_map_close,
  seq_map_lookup, seq_map_store);


 MAPDEF("null", ((void*)0), MCF_ALIASOK|MCF_OPTFILE,
  map_parseargs, null_map_open, null_map_close,
  null_map_lookup, null_map_store);


 MAPDEF("syslog", ((void*)0), 0,
  syslog_map_parseargs, null_map_open, null_map_close,
  syslog_map_lookup, null_map_store);


 MAPDEF("macro", ((void*)0), 0,
  dequote_init, null_map_open, null_map_close,
  macro_map_lookup, null_map_store);


 MAPDEF("arith", ((void*)0), 0,
  dequote_init, null_map_open, null_map_close,
  arith_map_lookup, null_map_store);


 MAPDEF("arpa", ((void*)0), 0,
  dequote_init, null_map_open, null_map_close,
  arpa_map_lookup, null_map_store);
 if (tTd(38, 2))
 {

  MAPDEF("bogus", ((void*)0), MCF_ALIASOK|MCF_OPTFILE,
         map_parseargs, null_map_open, null_map_close,
         bogus_map_lookup, null_map_store);
 }
}

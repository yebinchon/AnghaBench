
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_string {int ps_len; int ps_hash; int ps_string; } ;
typedef struct pmcstat_string const* pmcstat_interned_string ;


 int EX_OSERR ;
 int LIST_INSERT_HEAD (int *,struct pmcstat_string*,int ) ;
 int err (int ,char*) ;
 struct pmcstat_string* malloc (int) ;
 int pmcstat_string_compute_hash (char const*) ;
 int * pmcstat_string_hash ;
 struct pmcstat_string* pmcstat_string_lookup (char const*) ;
 int ps_next ;
 int strdup (char const*) ;
 int strlen (char const*) ;

pmcstat_interned_string
pmcstat_string_intern(const char *s)
{
 struct pmcstat_string *ps;
 const struct pmcstat_string *cps;
 int hash, len;

 if ((cps = pmcstat_string_lookup(s)) != ((void*)0))
  return (cps);

 hash = pmcstat_string_compute_hash(s);
 len = strlen(s);

 if ((ps = malloc(sizeof(*ps))) == ((void*)0))
  err(EX_OSERR, "ERROR: Could not intern string");
 ps->ps_len = len;
 ps->ps_hash = hash;
 ps->ps_string = strdup(s);
 LIST_INSERT_HEAD(&pmcstat_string_hash[hash], ps, ps_next);
 return ((pmcstat_interned_string) ps);
}

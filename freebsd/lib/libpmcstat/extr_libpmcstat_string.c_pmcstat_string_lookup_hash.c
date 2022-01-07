
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_string {int ps_hash; } ;
typedef scalar_t__ pmcstat_interned_string ;



int
pmcstat_string_lookup_hash(pmcstat_interned_string s)
{
 const struct pmcstat_string *ps;

 ps = (const struct pmcstat_string *) s;
 return (ps->ps_hash);
}

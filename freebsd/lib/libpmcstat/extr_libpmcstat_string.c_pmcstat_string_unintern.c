
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_string {char* ps_string; } ;
typedef scalar_t__ pmcstat_interned_string ;



const char *
pmcstat_string_unintern(pmcstat_interned_string str)
{
 const char *s;

 s = ((const struct pmcstat_string *) str)->ps_string;
 return (s);
}

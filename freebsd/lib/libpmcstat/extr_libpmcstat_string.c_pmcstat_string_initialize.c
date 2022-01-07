
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int PMCSTAT_NHASH ;
 int * pmcstat_string_hash ;

void
pmcstat_string_initialize(void)
{
 int i;

 for (i = 0; i < PMCSTAT_NHASH; i++)
  LIST_INIT(&pmcstat_string_hash[i]);
}

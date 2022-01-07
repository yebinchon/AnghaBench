
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PMCSTAT_HASH_MASK ;

int
pmcstat_string_compute_hash(const char *s)
{
 unsigned hash;

 for (hash = 2166136261; *s; s++)
  hash = (hash ^ *s) * 16777619;

 return (hash & PMCSTAT_HASH_MASK);
}

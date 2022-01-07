
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASHTABLESIZE ;
 int LOG_ERR ;
 int exit (int) ;
 void* hash_Init (int ) ;
 void* hwhashtable ;
 void* iphashtable ;
 void* nmhashtable ;
 int report (int ,char*) ;

void
rdtab_init()
{
 hwhashtable = hash_Init(HASHTABLESIZE);
 iphashtable = hash_Init(HASHTABLESIZE);
 nmhashtable = hash_Init(HASHTABLESIZE);
 if (!(hwhashtable && iphashtable && nmhashtable)) {
  report(LOG_ERR, "Unable to allocate hash tables.");
  exit(1);
 }
}

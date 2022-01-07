
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kod_entry {int hostname; } ;


 struct kod_entry* eallocarray (int,int) ;
 struct kod_entry** kod_db ;
 int kod_db_cnt ;
 int strcmp (int ,char const*) ;

int
search_entry(
 const char *hostname,
 struct kod_entry **dst
 )
{
 register int a, b, resc = 0;

 for (a = 0; a < kod_db_cnt; a++)
  if (!strcmp(kod_db[a]->hostname, hostname))
   resc++;

 if (!resc) {
  *dst = ((void*)0);
  return 0;
 }

 *dst = eallocarray(resc, sizeof(**dst));

 b = 0;
 for (a = 0; a < kod_db_cnt; a++)
  if (!strcmp(kod_db[a]->hostname, hostname)) {
   (*dst)[b] = *kod_db[a];
   b++;
  }

 return resc;
}

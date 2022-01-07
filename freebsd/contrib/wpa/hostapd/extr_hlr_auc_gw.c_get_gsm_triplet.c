
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_triplet {struct gsm_triplet* next; int imsi; } ;


 struct gsm_triplet* gsm_db ;
 struct gsm_triplet* gsm_db_pos ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct gsm_triplet * get_gsm_triplet(const char *imsi)
{
 struct gsm_triplet *g = gsm_db_pos;

 while (g) {
  if (strcmp(g->imsi, imsi) == 0) {
   gsm_db_pos = g->next;
   return g;
  }
  g = g->next;
 }

 g = gsm_db;
 while (g && g != gsm_db_pos) {
  if (strcmp(g->imsi, imsi) == 0) {
   gsm_db_pos = g->next;
   return g;
  }
  g = g->next;
 }

 return ((void*)0);
}

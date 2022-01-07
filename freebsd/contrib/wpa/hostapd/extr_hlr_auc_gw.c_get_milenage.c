
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct milenage_parameters {struct milenage_parameters* next; int imsi; } ;


 struct milenage_parameters* db_get_milenage (char const*) ;
 struct milenage_parameters* milenage_db ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct milenage_parameters * get_milenage(const char *imsi)
{
 struct milenage_parameters *m = milenage_db;

 while (m) {
  if (strcmp(m->imsi, imsi) == 0)
   break;
  m = m->next;
 }






 return m;
}

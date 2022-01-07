
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct milenage_parameters {struct milenage_parameters* next; } ;
struct gsm_triplet {struct gsm_triplet* next; } ;


 int close (scalar_t__) ;
 struct milenage_parameters* gsm_db ;
 struct milenage_parameters* milenage_db ;
 scalar_t__ milenage_file ;
 int os_free (struct milenage_parameters*) ;
 scalar_t__ serv_sock ;
 scalar_t__ socket_path ;
 int sqlite3_close (int *) ;
 int * sqlite_db ;
 scalar_t__ sqn_changes ;
 int unlink (scalar_t__) ;
 scalar_t__ update_milenage ;
 int update_milenage_file (scalar_t__) ;

__attribute__((used)) static void cleanup(void)
{
 struct gsm_triplet *g, *gprev;
 struct milenage_parameters *m, *prev;

 if (update_milenage && milenage_file && sqn_changes)
  update_milenage_file(milenage_file);

 g = gsm_db;
 while (g) {
  gprev = g;
  g = g->next;
  os_free(gprev);
 }

 m = milenage_db;
 while (m) {
  prev = m;
  m = m->next;
  os_free(prev);
 }

 if (serv_sock >= 0)
  close(serv_sock);
 if (socket_path)
  unlink(socket_path);







}

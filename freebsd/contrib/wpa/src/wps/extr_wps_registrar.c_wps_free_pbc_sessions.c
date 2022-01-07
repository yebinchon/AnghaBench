
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_pbc_session {struct wps_pbc_session* next; } ;


 int os_free (struct wps_pbc_session*) ;

__attribute__((used)) static void wps_free_pbc_sessions(struct wps_pbc_session *pbc)
{
 struct wps_pbc_session *prev;

 while (pbc) {
  prev = pbc;
  pbc = pbc->next;
  os_free(prev);
 }
}

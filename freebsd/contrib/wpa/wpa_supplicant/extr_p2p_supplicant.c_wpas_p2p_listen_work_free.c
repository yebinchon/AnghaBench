
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_p2p_listen_work {int probe_resp_ie; } ;


 int os_free (struct wpas_p2p_listen_work*) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void wpas_p2p_listen_work_free(struct wpas_p2p_listen_work *lwork)
{
 if (lwork == ((void*)0))
  return;
 wpabuf_free(lwork->probe_resp_ie);
 os_free(lwork);
}

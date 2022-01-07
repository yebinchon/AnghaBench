
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dpp_listen_work {int dummy; } ;


 int os_free (struct wpas_dpp_listen_work*) ;

__attribute__((used)) static void wpas_dpp_listen_work_free(struct wpas_dpp_listen_work *lwork)
{
 if (!lwork)
  return;
 os_free(lwork);
}

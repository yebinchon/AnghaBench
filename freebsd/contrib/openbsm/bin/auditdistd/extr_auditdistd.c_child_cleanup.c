
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adist_host {scalar_t__ adh_role; scalar_t__ adh_worker_pid; int * adh_conn; } ;


 scalar_t__ ADIST_ROLE_SENDER ;
 int PJDLOG_ASSERT (int) ;
 int proto_close (int *) ;

__attribute__((used)) static void
child_cleanup(struct adist_host *adhost)
{

 if (adhost->adh_conn != ((void*)0)) {
  PJDLOG_ASSERT(adhost->adh_role == ADIST_ROLE_SENDER);
  proto_close(adhost->adh_conn);
  adhost->adh_conn = ((void*)0);
 }
 adhost->adh_worker_pid = 0;
}

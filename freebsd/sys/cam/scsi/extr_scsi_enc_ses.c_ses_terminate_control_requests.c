
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int result; } ;
typedef TYPE_1__ ses_control_request_t ;
typedef int ses_control_reqlist_t ;


 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int links ;
 int wakeup (TYPE_1__*) ;

__attribute__((used)) static void
ses_terminate_control_requests(ses_control_reqlist_t *reqlist, int result)
{
 ses_control_request_t *req;

 while ((req = TAILQ_FIRST(reqlist)) != ((void*)0)) {
  TAILQ_REMOVE(reqlist, req, links);
  req->result = result;
  wakeup(req);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;
struct kill {int dummy; } ;
struct evrpc_status {scalar_t__ error; } ;


 scalar_t__ EVRPC_STATUS_ERR_TIMEOUT ;
 int event_loopexit (int *) ;
 scalar_t__ kill_complete (struct kill*) ;
 int test_ok ;

__attribute__((used)) static void
GotErrorCb(struct evrpc_status *status,
    struct msg *msg, struct kill *kill, void *arg)
{
 if (status->error != EVRPC_STATUS_ERR_TIMEOUT)
  goto done;


 if (kill_complete(kill) == 0)
  goto done;

 test_ok += 1;

done:
 event_loopexit(((void*)0));
}

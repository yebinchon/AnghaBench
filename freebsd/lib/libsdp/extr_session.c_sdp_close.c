
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sdp_session_p ;
typedef int int32_t ;
struct TYPE_4__ {scalar_t__ s; struct TYPE_4__* rsp; struct TYPE_4__* req; } ;


 int close (scalar_t__) ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

int32_t
sdp_close(void *xss)
{
 sdp_session_p ss = (sdp_session_p) xss;

 if (ss != ((void*)0)) {
  if (ss->s >= 0)
   close(ss->s);

  if (ss->req != ((void*)0))
   free(ss->req);
  if (ss->rsp != ((void*)0))
   free(ss->rsp);

  memset(ss, 0, sizeof(*ss));
  free(ss);
 }

 return (0);
}

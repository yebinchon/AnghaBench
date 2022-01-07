
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_session {scalar_t__ stt_armed; } ;


 scalar_t__ FALSE ;
 int eloop_cancel_timeout (int ,int *,struct fst_session*) ;
 int fst_session_timeout_handler ;

__attribute__((used)) static void fst_session_stt_disarm(struct fst_session *s)
{
 if (s->stt_armed) {
  eloop_cancel_timeout(fst_session_timeout_handler, ((void*)0), s);
  s->stt_armed = FALSE;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_session {int stt_armed; } ;


 int FST_DEFAULT_SESSION_TIMEOUT_TU ;
 int TRUE ;
 int TU_TO_US (int ) ;
 int eloop_register_timeout (int ,int,int ,int *,struct fst_session*) ;
 int fst_session_timeout_handler ;

__attribute__((used)) static void fst_session_stt_arm(struct fst_session *s)
{

 eloop_register_timeout(0, 2 * TU_TO_US(FST_DEFAULT_SESSION_TIMEOUT_TU),
          fst_session_timeout_handler, ((void*)0), s);
 s->stt_armed = TRUE;
}

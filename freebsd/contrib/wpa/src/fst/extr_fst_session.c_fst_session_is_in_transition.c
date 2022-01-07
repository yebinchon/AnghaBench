
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_session {int stt_armed; } ;
typedef int Boolean ;



__attribute__((used)) static Boolean fst_session_is_in_transition(struct fst_session *s)
{

 return s->stt_armed;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_session {int state; } ;
typedef enum fst_session_state { ____Placeholder_fst_session_state } fst_session_state ;



enum fst_session_state fst_session_get_state(struct fst_session *s)
{
 return s->state;
}

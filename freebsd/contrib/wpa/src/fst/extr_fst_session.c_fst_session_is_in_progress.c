
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_session {scalar_t__ state; } ;


 scalar_t__ FST_SESSION_STATE_INITIAL ;

__attribute__((used)) static int fst_session_is_in_progress(struct fst_session *s)
{
 return s->state != FST_SESSION_STATE_INITIAL;
}

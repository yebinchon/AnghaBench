
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_session {int dummy; } ;


 int REASON_RESET ;
 int fst_session_reset_ex (struct fst_session*,int ) ;

void fst_session_reset(struct fst_session *s)
{
 fst_session_reset_ex(s, REASON_RESET);
}

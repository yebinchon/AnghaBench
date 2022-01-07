
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int llt_ms; } ;
struct fst_session {TYPE_1__ data; } ;



void fst_session_set_llt(struct fst_session *s, u32 llt)
{
 s->data.llt_ms = llt;
}

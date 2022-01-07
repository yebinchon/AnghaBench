
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int llt_ms; } ;
struct fst_session {TYPE_1__ data; } ;



u32 fst_session_get_llt(struct fst_session *s)
{
 return s->data.llt_ms;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fst_session {int id; } ;



u32 fst_session_get_id(struct fst_session *s)
{
 return s->id;
}

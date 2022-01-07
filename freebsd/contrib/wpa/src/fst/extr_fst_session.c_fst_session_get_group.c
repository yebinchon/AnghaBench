
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_session {struct fst_group* group; } ;
struct fst_group {int dummy; } ;



struct fst_group * fst_session_get_group(struct fst_session *s)
{
 return s->group;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct slist {TYPE_1__ s; } ;
typedef int compiler_state_t ;


 scalar_t__ newchunk (int *,int) ;

__attribute__((used)) static inline struct slist *
new_stmt(compiler_state_t *cstate, int code)
{
 struct slist *p;

 p = (struct slist *)newchunk(cstate, sizeof(*p));
 p->s.code = code;

 return p;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int k; } ;
struct slist {TYPE_1__ s; } ;
struct arth {int regno; } ;
typedef int compiler_state_t ;


 int BPF_LDX ;
 int BPF_MEM ;
 struct slist* new_stmt (int *,int) ;

__attribute__((used)) static struct slist *
xfer_to_x(compiler_state_t *cstate, struct arth *a)
{
 struct slist *s;

 s = new_stmt(cstate, BPF_LDX|BPF_MEM);
 s->s.k = a->regno;
 return s;
}

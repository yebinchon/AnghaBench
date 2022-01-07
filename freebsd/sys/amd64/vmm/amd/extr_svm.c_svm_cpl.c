
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcb_state {int cpl; } ;



__attribute__((used)) static int
svm_cpl(struct vmcb_state *state)
{






 return (state->cpl);
}

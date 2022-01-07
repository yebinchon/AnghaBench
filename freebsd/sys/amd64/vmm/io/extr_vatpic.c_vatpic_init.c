
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
struct vatpic {int mtx; struct vm* vm; } ;


 int MTX_SPIN ;
 int M_VATPIC ;
 int M_WAITOK ;
 int M_ZERO ;
 struct vatpic* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

struct vatpic *
vatpic_init(struct vm *vm)
{
 struct vatpic *vatpic;

 vatpic = malloc(sizeof(struct vatpic), M_VATPIC, M_WAITOK | M_ZERO);
 vatpic->vm = vm;

 mtx_init(&vatpic->mtx, "vatpic lock", ((void*)0), MTX_SPIN);

 return (vatpic);
}

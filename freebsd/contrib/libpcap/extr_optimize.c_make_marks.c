
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icode {int dummy; } ;
struct TYPE_2__ {int code; } ;
struct block {TYPE_1__ s; } ;


 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_RET ;
 struct block* JF (struct block*) ;
 struct block* JT (struct block*) ;
 int Mark (struct icode*,struct block*) ;
 int isMarked (struct icode*,struct block*) ;

__attribute__((used)) static void
make_marks(struct icode *ic, struct block *p)
{
 if (!isMarked(ic, p)) {
  Mark(ic, p);
  if (BPF_CLASS(p->s.code) != BPF_RET) {
   make_marks(ic, JT(p));
   make_marks(ic, JF(p));
  }
 }
}

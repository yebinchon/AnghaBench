
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmt {int code; int k; } ;


 int AX_ATOM ;
 int A_ATOM ;
 int BPF_A ;

 int BPF_CLASS (int) ;
 int BPF_IND ;



 int BPF_MEM ;

 int BPF_MISCOP (int) ;
 int BPF_MODE (int) ;

 int BPF_RVAL (int) ;
 int BPF_SRC (int) ;


 int BPF_TXA ;
 int BPF_X ;
 int NOP ;
 int X_ATOM ;
 int abort () ;

__attribute__((used)) static int
atomuse(struct stmt *s)
{
 register int c = s->code;

 if (c == NOP)
  return -1;

 switch (BPF_CLASS(c)) {

 case 130:
  return (BPF_RVAL(c) == BPF_A) ? A_ATOM :
   (BPF_RVAL(c) == BPF_X) ? X_ATOM : -1;

 case 133:
 case 132:
  return (BPF_MODE(c) == BPF_IND) ? X_ATOM :
   (BPF_MODE(c) == BPF_MEM) ? s->k : -1;

 case 129:
  return A_ATOM;

 case 128:
  return X_ATOM;

 case 134:
 case 135:
  if (BPF_SRC(c) == BPF_X)
   return AX_ATOM;
  return A_ATOM;

 case 131:
  return BPF_MISCOP(c) == BPF_TXA ? X_ATOM : A_ATOM;
 }
 abort();

}

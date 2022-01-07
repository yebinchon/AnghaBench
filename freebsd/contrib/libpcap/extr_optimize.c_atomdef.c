
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmt {scalar_t__ code; int k; } ;


 int A_ATOM ;

 int BPF_CLASS (scalar_t__) ;



 int BPF_MISCOP (scalar_t__) ;


 int BPF_TAX ;
 scalar_t__ NOP ;
 int X_ATOM ;

__attribute__((used)) static int
atomdef(struct stmt *s)
{
 if (s->code == NOP)
  return -1;

 switch (BPF_CLASS(s->code)) {

 case 132:
 case 133:
  return A_ATOM;

 case 131:
  return X_ATOM;

 case 129:
 case 128:
  return s->k;

 case 130:
  return BPF_MISCOP(s->code) == BPF_TAX ? X_ATOM : A_ATOM;
 }
 return -1;
}

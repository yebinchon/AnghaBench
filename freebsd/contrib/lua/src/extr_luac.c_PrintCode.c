
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sizecode; int * p; scalar_t__* code; } ;
typedef TYPE_1__ Proto ;
typedef size_t OpCode ;
typedef scalar_t__ Instruction ;


 int GETARG_A (scalar_t__) ;
 int GETARG_Ax (scalar_t__) ;
 int GETARG_B (scalar_t__) ;
 int GETARG_Bx (scalar_t__) ;
 int GETARG_C (scalar_t__) ;
 int GETARG_sBx (scalar_t__) ;
 size_t GET_OPCODE (scalar_t__) ;
 int INDEXK (int) ;
 int ISK (int) ;
 int MYK (int) ;
 int OpArgK ;
 int OpArgN ;
 int OpArgU ;
 int PrintConstant (TYPE_1__ const*,int) ;
 char* UPVALNAME (int) ;
 int VOID (int ) ;
 int getBMode (size_t) ;
 int getCMode (size_t) ;
 int getOpMode (size_t) ;
 int getfuncline (TYPE_1__ const*,int) ;




 char** luaP_opnames ;
 int printf (char*,...) ;

__attribute__((used)) static void PrintCode(const Proto* f)
{
 const Instruction* code=f->code;
 int pc,n=f->sizecode;
 for (pc=0; pc<n; pc++)
 {
  Instruction i=code[pc];
  OpCode o=GET_OPCODE(i);
  int a=GETARG_A(i);
  int b=GETARG_B(i);
  int c=GETARG_C(i);
  int ax=GETARG_Ax(i);
  int bx=GETARG_Bx(i);
  int sbx=GETARG_sBx(i);
  int line=getfuncline(f,pc);
  printf("\t%d\t",pc+1);
  if (line>0) printf("[%d]\t",line); else printf("[-]\t");
  printf("%-9s\t",luaP_opnames[o]);
  switch (getOpMode(o))
  {
   case 131:
    printf("%d",a);
    if (getBMode(o)!=OpArgN) printf(" %d",ISK(b) ? (MYK(INDEXK(b))) : b);
    if (getCMode(o)!=OpArgN) printf(" %d",ISK(c) ? (MYK(INDEXK(c))) : c);
    break;
   case 130:
    printf("%d",a);
    if (getBMode(o)==OpArgK) printf(" %d",MYK(bx));
    if (getBMode(o)==OpArgU) printf(" %d",bx);
    break;
   case 129:
    printf("%d %d",a,sbx);
    break;
   case 128:
    printf("%d",MYK(ax));
    break;
  }
  switch (o)
  {
   case 145:
    printf("\t; "); PrintConstant(f,bx);
    break;
   case 149:
   case 136:
    printf("\t; %s",UPVALNAME(b));
    break;
   case 150:
    printf("\t; %s",UPVALNAME(b));
    if (ISK(c)) { printf(" "); PrintConstant(f,INDEXK(c)); }
    break;
   case 137:
    printf("\t; %s",UPVALNAME(a));
    if (ISK(b)) { printf(" "); PrintConstant(f,INDEXK(b)); }
    if (ISK(c)) { printf(" "); PrintConstant(f,INDEXK(c)); }
    break;
   case 151:
   case 140:
    if (ISK(c)) { printf("\t; "); PrintConstant(f,INDEXK(c)); }
    break;
   case 138:
   case 161:
   case 133:
   case 142:
   case 143:
   case 141:
   case 156:
   case 148:
   case 160:
   case 159:
   case 158:
   case 135:
   case 134:
   case 155:
   case 144:
   case 146:
    if (ISK(b) || ISK(c))
    {
     printf("\t; ");
     if (ISK(b)) PrintConstant(f,INDEXK(b)); else printf("-");
     printf(" ");
     if (ISK(c)) PrintConstant(f,INDEXK(c)); else printf("-");
    }
    break;
   case 147:
   case 153:
   case 152:
   case 132:
    printf("\t; to %d",sbx+pc+2);
    break;
   case 157:
    printf("\t; %p",VOID(f->p[bx]));
    break;
   case 139:
    if (c==0) printf("\t; %d",(int)code[++pc]); else printf("\t; %d",c);
    break;
   case 154:
    printf("\t; "); PrintConstant(f,ax);
    break;
   default:
    break;
  }
  printf("\n");
 }
}

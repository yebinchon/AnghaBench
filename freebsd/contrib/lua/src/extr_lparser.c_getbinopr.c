
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BinOpr ;


 int OPR_ADD ;
 int OPR_AND ;
 int OPR_BAND ;
 int OPR_BOR ;
 int OPR_BXOR ;
 int OPR_CONCAT ;
 int OPR_DIV ;
 int OPR_EQ ;
 int OPR_GE ;
 int OPR_GT ;
 int OPR_IDIV ;
 int OPR_LE ;
 int OPR_LT ;
 int OPR_MOD ;
 int OPR_MUL ;
 int OPR_NE ;
 int OPR_NOBINOPR ;
 int OPR_OR ;
 int OPR_POW ;
 int OPR_SHL ;
 int OPR_SHR ;
 int OPR_SUB ;
__attribute__((used)) static BinOpr getbinopr (int op) {
  switch (op) {
    case '+': return OPR_ADD;
    case '-': return OPR_SUB;
    case '*': return OPR_MUL;
    case '%': return OPR_MOD;
    case '^': return OPR_POW;
    case '/': return OPR_DIV;
    case 133: return OPR_IDIV;
    case '&': return OPR_BAND;
    case '|': return OPR_BOR;
    case '~': return OPR_BXOR;
    case 129: return OPR_SHL;
    case 128: return OPR_SHR;
    case 136: return OPR_CONCAT;
    case 131: return OPR_NE;
    case 135: return OPR_EQ;
    case '<': return OPR_LT;
    case 132: return OPR_LE;
    case '>': return OPR_GT;
    case 134: return OPR_GE;
    case 137: return OPR_AND;
    case 130: return OPR_OR;
    default: return OPR_NOBINOPR;
  }
}

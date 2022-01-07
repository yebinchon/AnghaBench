
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int restrict_op ;






 int snprintf (char*,int,char*,int) ;

char *
roptoa(restrict_op op) {
 static char sb[30];

 switch(op) {
     case 131: return "RESTRICT_FLAGS";
     case 128: return "RESTRICT_UNFLAGS";
     case 130: return "RESTRICT_REMOVE";
     case 129: return "RESTRICT_REMOVEIF";
     default:
  snprintf(sb, sizeof sb, "**RESTRICT_#%d**", op);
  return sb;
 }
}

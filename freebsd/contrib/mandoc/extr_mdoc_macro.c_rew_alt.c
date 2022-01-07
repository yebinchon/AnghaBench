
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;



 int MDOC_Ao ;

 int MDOC_Bd ;
 int MDOC_Bf ;
 int MDOC_Bk ;
 int MDOC_Bl ;
 int MDOC_Bo ;

 int MDOC_Bro ;

 int MDOC_Do ;





 int MDOC_Eo ;

 int MDOC_Fo ;

 int MDOC_Oo ;

 int MDOC_Po ;

 int MDOC_Qo ;

 int MDOC_Rs ;

 int MDOC_So ;

 int MDOC_Xo ;

__attribute__((used)) static enum roff_tok
rew_alt(enum roff_tok tok)
{
 switch (tok) {
 case 143:
  return MDOC_Ao;
 case 142:
  return MDOC_Bo;
 case 141:
  return MDOC_Bro;
 case 140:
  return MDOC_Do;
 case 139:
  return MDOC_Eo;
 case 138:
  return MDOC_Bd;
 case 137:
  return MDOC_Bf;
 case 136:
  return MDOC_Bk;
 case 135:
  return MDOC_Bl;
 case 134:
  return MDOC_Fo;
 case 133:
  return MDOC_Oo;
 case 132:
  return MDOC_Po;
 case 131:
  return MDOC_Qo;
 case 130:
  return MDOC_Rs;
 case 129:
  return MDOC_So;
 case 128:
  return MDOC_Xo;
 default:
  return tok;
 }
}

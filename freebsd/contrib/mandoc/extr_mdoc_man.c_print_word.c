
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMAN_Bk ;
 int MMAN_Bk_susp ;
 int MMAN_PD ;
 int MMAN_PP ;
 int MMAN_Sm ;
 int MMAN_br ;
 int MMAN_nbrword ;
 int MMAN_nl ;
 int MMAN_sp ;
 int MMAN_spc ;
 int MMAN_spc_force ;
 int TPremain ;
 int outflags ;
 int printf (char*) ;
 int putchar (unsigned char) ;
 int * strchr (char*,char const) ;

__attribute__((used)) static void
print_word(const char *s)
{

 if ((MMAN_PP | MMAN_sp | MMAN_br | MMAN_nl) & outflags) {



  if (MMAN_PP & outflags) {
   if (MMAN_sp & outflags) {
    if (MMAN_PD & outflags) {
     printf("\n.PD");
     outflags &= ~MMAN_PD;
    }
   } else if ( ! (MMAN_PD & outflags)) {
    printf("\n.PD 0");
    outflags |= MMAN_PD;
   }
   printf("\n.PP\n");
  } else if (MMAN_sp & outflags)
   printf("\n.sp\n");
  else if (MMAN_br & outflags)
   printf("\n.br\n");
  else if (MMAN_nl & outflags)
   putchar('\n');
  outflags &= ~(MMAN_PP|MMAN_sp|MMAN_br|MMAN_nl|MMAN_spc);
  if (1 == TPremain)
   printf(".br\n");
  TPremain = 0;
 } else if (MMAN_spc & outflags) {






  if (MMAN_spc_force & outflags || '\0' == s[0] ||
      ((void*)0) == strchr(".,:;)]?!", s[0]) || '\0' != s[1]) {
   if (MMAN_Bk & outflags &&
       ! (MMAN_Bk_susp & outflags))
    putchar('\\');
   putchar(' ');
   if (TPremain)
    TPremain--;
  }
 }





 if (MMAN_Sm & outflags && ('\0' == s[0] ||
     (('(' != s[0] && '[' != s[0]) || '\0' != s[1])))
  outflags |= MMAN_spc;
 else
  outflags &= ~MMAN_spc;
 outflags &= ~(MMAN_spc_force | MMAN_Bk_susp);

 for ( ; *s; s++) {
  switch (*s) {
  case 128:
   printf("\\ ");
   break;
  case 129:
   putchar('-');
   break;
  case 130:
   printf("\\:");
   break;
  case ' ':
   if (MMAN_nbrword & outflags) {
    printf("\\ ");
    break;
   }

  default:
   putchar((unsigned char)*s);
   break;
  }
  if (TPremain)
   TPremain--;
 }
 outflags &= ~MMAN_nbrword;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int FDDIFC_CLFF ;
 int FDDIFC_ZZZZ ;
 int ND_PRINT (int *) ;

__attribute__((used)) static inline void
print_fddi_fc(netdissect_options *ndo, u_char fc)
{
 switch (fc) {

 case 128:
  ND_PRINT((ndo, "void "));
  break;

 case 133:
  ND_PRINT((ndo, "nrt "));
  break;

 case 132:
  ND_PRINT((ndo, "rt "));
  break;

 case 130:
  ND_PRINT((ndo, "info "));
  break;

 case 129:
  ND_PRINT((ndo, "nsa "));
  break;

 case 135:
  ND_PRINT((ndo, "beacon "));
  break;

 case 134:
  ND_PRINT((ndo, "claim "));
  break;

 default:
  switch (fc & FDDIFC_CLFF) {

  case 136:
   ND_PRINT((ndo, "mac%1x ", fc & FDDIFC_ZZZZ));
   break;

  case 131:
   ND_PRINT((ndo, "smt%1x ", fc & FDDIFC_ZZZZ));
   break;

  case 138:
   ND_PRINT((ndo, "async%1x ", fc & FDDIFC_ZZZZ));
   break;

  case 137:
   ND_PRINT((ndo, "sync%1x ", fc & FDDIFC_ZZZZ));
   break;

  case 140:
   ND_PRINT((ndo, "imp_async%1x ", fc & FDDIFC_ZZZZ));
   break;

  case 139:
   ND_PRINT((ndo, "imp_sync%1x ", fc & FDDIFC_ZZZZ));
   break;

  default:
   ND_PRINT((ndo, "%02x ", fc));
   break;
  }
 }
}

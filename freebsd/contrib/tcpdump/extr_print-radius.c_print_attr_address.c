
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;


 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int ipaddr_string (int *,int const*) ;
 int tstr ;

__attribute__((used)) static void
print_attr_address(netdissect_options *ndo,
                   register const u_char *data, u_int length, u_short attr_code)
{
   if (length != 4)
   {
       ND_PRINT((ndo, "ERROR: length %u != 4", length));
       return;
   }

   ND_TCHECK2(data[0],4);

   switch(attr_code)
   {
      case 129:
      case 128:
           if (EXTRACT_32BITS(data) == 0xFFFFFFFF )
              ND_PRINT((ndo, "User Selected"));
           else
              if (EXTRACT_32BITS(data) == 0xFFFFFFFE )
                 ND_PRINT((ndo, "NAS Select"));
              else
                 ND_PRINT((ndo, "%s",ipaddr_string(ndo, data)));
      break;

      default:
          ND_PRINT((ndo, "%s", ipaddr_string(ndo, data)));
      break;
   }

   return;

   trunc:
     ND_PRINT((ndo, "%s", tstr));
}

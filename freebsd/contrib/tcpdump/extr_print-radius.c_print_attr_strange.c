
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;





 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int PRINT_HEX (int,int const*) ;
 int tstr ;

__attribute__((used)) static void
print_attr_strange(netdissect_options *ndo,
                   register const u_char *data, u_int length, u_short attr_code)
{
   u_short len_data;

   switch(attr_code)
   {
      case 128:
           if (length != 16)
           {
               ND_PRINT((ndo, "ERROR: length %u != 16", length));
               return;
           }
           ND_PRINT((ndo, "User_challenge ("));
           ND_TCHECK2(data[0],8);
           len_data = 8;
           PRINT_HEX(len_data, data);
           ND_PRINT((ndo, ") User_resp("));
           ND_TCHECK2(data[0],8);
           len_data = 8;
           PRINT_HEX(len_data, data);
           ND_PRINT((ndo, ")"));
        break;

      case 129:
           if (length != 14)
           {
               ND_PRINT((ndo, "ERROR: length %u != 14", length));
               return;
           }
           ND_TCHECK2(data[0],1);
           if (*data)
              ND_PRINT((ndo, "User can change password"));
           else
              ND_PRINT((ndo, "User cannot change password"));
           data++;
           ND_TCHECK2(data[0],1);
           ND_PRINT((ndo, ", Min password length: %d", *data));
           data++;
           ND_PRINT((ndo, ", created at: "));
           ND_TCHECK2(data[0],4);
           len_data = 4;
           PRINT_HEX(len_data, data);
           ND_PRINT((ndo, ", expires in: "));
           ND_TCHECK2(data[0],4);
           len_data = 4;
           PRINT_HEX(len_data, data);
           ND_PRINT((ndo, ", Current Time: "));
           ND_TCHECK2(data[0],4);
           len_data = 4;
           PRINT_HEX(len_data, data);
        break;

      case 130:
           if (length < 8)
           {
               ND_PRINT((ndo, "ERROR: length %u != 8", length));
               return;
           }
           ND_TCHECK2(data[0],8);
           len_data = 8;
           PRINT_HEX(len_data, data);
        break;
   }
   return;

   trunc:
     ND_PRINT((ndo, "%s", tstr));
}

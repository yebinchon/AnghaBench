
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;



 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;







 int rfc4675_tagged ;
 int tok2str (int ,char*,int const) ;
 int tstr ;

__attribute__((used)) static void
print_attr_string(netdissect_options *ndo,
                  register const u_char *data, u_int length, u_short attr_code)
{
   register u_int i;

   ND_TCHECK2(data[0],length);

   switch(attr_code)
   {
      case 131:
           if (length < 3)
              goto trunc;
           if (*data && (*data <=0x1F) )
              ND_PRINT((ndo, "Tag[%u] ", *data));
           else
              ND_PRINT((ndo, "Tag[Unused] "));
           data++;
           length--;
           ND_PRINT((ndo, "Salt %u ", EXTRACT_16BITS(data)));
           data+=2;
           length-=2;
        break;
      case 132:
      case 128:
      case 130:
      case 134:
      case 133:
      case 129:
           if (*data <= 0x1F)
           {
              if (length < 1)
                 goto trunc;
              if (*data)
                ND_PRINT((ndo, "Tag[%u] ", *data));
              else
                ND_PRINT((ndo, "Tag[Unused] "));
              data++;
              length--;
           }
        break;
      case 135:
           if (length < 1)
              goto trunc;
           ND_PRINT((ndo, "%s (0x%02x) ",
                  tok2str(rfc4675_tagged,"Unknown tag",*data),
                  *data));
           data++;
           length--;
        break;
   }

   for (i=0; i < length && *data; i++, data++)
       ND_PRINT((ndo, "%c", (*data < 32 || *data > 126) ? '.' : *data));

   return;

   trunc:
      ND_PRINT((ndo, "%s", tstr));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t u_short ;
typedef int u_int ;
typedef scalar_t__ u_char ;
typedef int netdissect_options ;
struct TYPE_2__ {int siz_subtypes; char** subtypes; int first_subtype; } ;






 size_t EXTRACT_24BITS (scalar_t__ const*) ;
 int EXTRACT_32BITS (scalar_t__ const*) ;




 int ND_PRINT (int *) ;
 int ND_TCHECK2 (scalar_t__ const,int) ;

 size_t TUNNEL_MEDIUM ;

 size_t TUNNEL_TYPE ;
 TYPE_1__* attr_type ;
 int rfc4675_tagged ;
 int tok2str (int ,char*,scalar_t__ const) ;
 int tstr ;

__attribute__((used)) static void
print_attr_num(netdissect_options *ndo,
               register const u_char *data, u_int length, u_short attr_code)
{
   uint32_t timeout;

   if (length != 4)
   {
       ND_PRINT((ndo, "ERROR: length %u != 4", length));
       return;
   }

   ND_TCHECK2(data[0],4);

   if (attr_type[attr_code].siz_subtypes)
   {
      static const char **table;
      uint32_t data_value;
      table = attr_type[attr_code].subtypes;

      if ( (attr_code == TUNNEL_TYPE) || (attr_code == TUNNEL_MEDIUM) )
      {
         if (!*data)
            ND_PRINT((ndo, "Tag[Unused] "));
         else
            ND_PRINT((ndo, "Tag[%d] ", *data));
         data++;
         data_value = EXTRACT_24BITS(data);
      }
      else
      {
         data_value = EXTRACT_32BITS(data);
      }
      if ( data_value <= (uint32_t)(attr_type[attr_code].siz_subtypes - 1 +
            attr_type[attr_code].first_subtype) &&
    data_value >= attr_type[attr_code].first_subtype )
         ND_PRINT((ndo, "%s", table[data_value]));
      else
         ND_PRINT((ndo, "#%u", data_value));
   }
   else
   {
      switch(attr_code)
      {
        case 131:
             if (EXTRACT_32BITS( data) == 0xFFFFFFFE )
                ND_PRINT((ndo, "NAS Select"));
             else
                ND_PRINT((ndo, "%d", EXTRACT_32BITS(data)));
          break;

        case 129:
        case 130:
        case 137:
        case 135:
        case 136:
             timeout = EXTRACT_32BITS( data);
             if ( timeout < 60 )
                ND_PRINT((ndo, "%02d secs", timeout));
             else
             {
                if ( timeout < 3600 )
                   ND_PRINT((ndo, "%02d:%02d min",
                          timeout / 60, timeout % 60));
                else
                   ND_PRINT((ndo, "%02d:%02d:%02d hours",
                          timeout / 3600, (timeout % 3600) / 60,
                          timeout % 60));
             }
          break;

        case 133:
             if (EXTRACT_32BITS(data) )
                ND_PRINT((ndo, "%d", EXTRACT_32BITS(data)));
             else
                ND_PRINT((ndo, "Unnumbered"));
          break;

        case 132:
             if (EXTRACT_32BITS(data) )
                ND_PRINT((ndo, "%d", EXTRACT_32BITS(data)));
             else
                ND_PRINT((ndo, "NAS assigned"));
          break;

        case 128:
            if (*data)
               ND_PRINT((ndo, "Tag[%d] ", *data));
            else
               ND_PRINT((ndo, "Tag[Unused] "));
            data++;
            ND_PRINT((ndo, "%d", EXTRACT_24BITS(data)));
          break;

        case 134:
            ND_PRINT((ndo, "%s (0x%02x) ",
                   tok2str(rfc4675_tagged,"Unknown tag",*data),
                   *data));
            data++;
            ND_PRINT((ndo, "%d", EXTRACT_24BITS(data)));
          break;

        default:
             ND_PRINT((ndo, "%d", EXTRACT_32BITS(data)));
          break;

      }

   }

   return;

   trunc:
     ND_PRINT((ndo, "%s", tstr));
}

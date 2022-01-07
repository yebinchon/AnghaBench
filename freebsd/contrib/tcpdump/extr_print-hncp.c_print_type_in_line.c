
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int tok2str (int ,char*,int ) ;
 int type_values ;

__attribute__((used)) static void
print_type_in_line(netdissect_options *ndo,
                   uint32_t type, int count, int indent, int *first_one)
{
    if (count > 0) {
        if (*first_one) {
            *first_one = 0;
            if (indent > 1) {
                u_int t;
                ND_PRINT((ndo, "\n"));
                for (t = indent; t > 0; t--)
                    ND_PRINT((ndo, "\t"));
            } else {
                ND_PRINT((ndo, " "));
            }
        } else {
            ND_PRINT((ndo, ", "));
        }
        ND_PRINT((ndo, "%s", tok2str(type_values, "Easter Egg", type)));
        if (count > 1)
            ND_PRINT((ndo, " (x%d)", count));
    }
}

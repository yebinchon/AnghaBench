
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;
typedef int buffer ;


 int memset (char*,int ,int) ;
 int parse_q922_addr (int *,int const*,int*,int*,int *,int) ;
 int snprintf (char*,int,char*,int) ;

char *
q922_string(netdissect_options *ndo, const u_char *p, u_int length)
{

    static u_int dlci, addr_len;
    static uint8_t flags[4];
    static char buffer[sizeof("DLCI xxxxxxxxxx")];
    memset(buffer, 0, sizeof(buffer));

    if (parse_q922_addr(ndo, p, &dlci, &addr_len, flags, length) == 1){
        snprintf(buffer, sizeof(buffer), "DLCI %u", dlci);
    }

    return buffer;
}

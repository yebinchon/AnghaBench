
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_TCHECK2 (int const,int) ;

__attribute__((used)) static const u_char *
name_ptr(netdissect_options *ndo,
         const u_char *buf, int ofs, const u_char *maxbuf)
{
    const u_char *p;
    u_char c;

    p = buf + ofs;
    if (p >= maxbuf)
 return(((void*)0));
    ND_TCHECK2(*p, 1);

    c = *p;


    if ((c & 0xC0) == 0xC0) {
 uint16_t l;

 ND_TCHECK2(*p, 2);
 if ((p + 1) >= maxbuf)
     return(((void*)0));
 l = EXTRACT_16BITS(p) & 0x3FFF;
 if (l == 0) {

     return(((void*)0));
 }
 p = buf + l;
 if (p >= maxbuf)
     return(((void*)0));
 ND_TCHECK2(*p, 1);
    }
    return(p);

trunc:
    return(((void*)0));
}

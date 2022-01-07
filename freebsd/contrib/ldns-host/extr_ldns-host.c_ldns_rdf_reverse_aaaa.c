
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_rdf ;


 int LDNS_IP6ADDRLEN ;
 char* alloca (int) ;
 int * ldns_dname_new_frm_str (char*) ;
 int* ldns_rdf_data (int *) ;
 int sprintf (char*,char*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static ldns_rdf *
ldns_rdf_reverse_aaaa(ldns_rdf *addr, const char *base) {
    char *buf;
    int i, len;

    len = strlen(base);
    buf = alloca(LDNS_IP6ADDRLEN*4 + len + 1);
    for (i = 0; i < LDNS_IP6ADDRLEN; i++) {
        uint8_t byte = ldns_rdf_data(addr)[LDNS_IP6ADDRLEN - i - 1];
        sprintf(&buf[i*4], "%x.%x.", byte & 0x0F, byte >> 4);
    }
    sprintf(&buf[LDNS_IP6ADDRLEN*4], "%s", base);
    return ldns_dname_new_frm_str(buf);
}

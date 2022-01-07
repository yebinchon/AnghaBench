
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;


 int LDNS_IP4ADDRLEN ;
 char* alloca (int) ;
 int * ldns_dname_new_frm_str (char*) ;
 scalar_t__* ldns_rdf_data (int *) ;
 scalar_t__ sprintf (char*,char*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static ldns_rdf *
ldns_rdf_reverse_a(ldns_rdf *addr, const char *base) {
    char *buf;
    int i, len;

    len = strlen(base);
    buf = alloca(LDNS_IP4ADDRLEN*4 + len + 1);
    for (len = i = 0; i < LDNS_IP4ADDRLEN; i++)
        len += sprintf(&buf[len], "%d.",
            (int)ldns_rdf_data(addr)[LDNS_IP4ADDRLEN - i - 1]);
    sprintf(&buf[len], "%s", base);
    return ldns_dname_new_frm_str(buf);
}

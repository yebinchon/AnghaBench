
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_addr; int sin6_port; } ;
struct sockaddr_in {int sin_addr; int sin_port; } ;
typedef int ldns_rdf ;




 int LDNS_IP4ADDRLEN ;
 int LDNS_IP6ADDRLEN ;
 int LDNS_RDF_TYPE_A ;
 int LDNS_RDF_TYPE_AAAA ;
 int * ldns_rdf_new_frm_data (int ,int ,int *) ;
 int ntohs (int ) ;

ldns_rdf *
ldns_sockaddr_storage2rdf(const struct sockaddr_storage *sock, uint16_t *port)
{
        ldns_rdf *addr;
        struct sockaddr_in *data_in;
        struct sockaddr_in6 *data_in6;

        switch(sock->ss_family) {
                case 129:
                        data_in = (struct sockaddr_in*)sock;
                        if (port) {
                                *port = ntohs((uint16_t)data_in->sin_port);
                        }
                        addr = ldns_rdf_new_frm_data(LDNS_RDF_TYPE_A,
                                        LDNS_IP4ADDRLEN, &data_in->sin_addr);
                        break;
                case 128:
                        data_in6 = (struct sockaddr_in6*)sock;
                        if (port) {
                                *port = ntohs((uint16_t)data_in6->sin6_port);
                        }
                        addr = ldns_rdf_new_frm_data(LDNS_RDF_TYPE_AAAA,
                                        LDNS_IP6ADDRLEN, &data_in6->sin6_addr);
                        break;
                default:
                        if (port) {
                                *port = 0;
                        }
                        return ((void*)0);
        }
        return addr;
}

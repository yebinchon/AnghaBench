
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct sockaddr_storage {scalar_t__ ss_family; } ;
typedef int socklen_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr_class ;
struct TYPE_11__ {scalar_t__ _axfr_soa_count; int _socket; int * _nameservers; } ;
typedef TYPE_1__ ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;
typedef int ldns_buffer ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int LDNS_FREE (struct sockaddr_storage*) ;
 int LDNS_MAX_PACKETLEN ;
 scalar_t__ LDNS_RESOLV_INET ;
 scalar_t__ LDNS_RESOLV_INET6 ;
 int LDNS_RR_TYPE_AXFR ;
 scalar_t__ LDNS_STATUS_ADDRESS_ERR ;
 scalar_t__ LDNS_STATUS_CRYPTO_TSIG_ERR ;
 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_NETWORK_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int SOCK_INVALID ;
 int close_socket (int ) ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 scalar_t__ ldns_pkt2buffer_wire (int *,int *) ;
 int ldns_pkt_free (int *) ;
 int * ldns_pkt_query_new (int ,int ,int ,int ) ;
 scalar_t__ ldns_pkt_tsig_sign (int *,scalar_t__,scalar_t__,int,int ,int *) ;
 struct sockaddr_storage* ldns_rdf2native_sockaddr_storage (int ,int ,size_t*) ;
 struct sockaddr_storage* ldns_rdf2native_sockaddr_storage_port (scalar_t__,int ,size_t*) ;
 int ldns_rdf_clone (int const*) ;
 scalar_t__ ldns_resolver_ip6 (TYPE_1__*) ;
 size_t ldns_resolver_nameserver_count (TYPE_1__*) ;
 int ldns_resolver_port (TYPE_1__*) ;
 scalar_t__ ldns_resolver_source (TYPE_1__*) ;
 int ldns_resolver_timeout (TYPE_1__*) ;
 int ldns_resolver_tsig_algorithm (TYPE_1__*) ;
 scalar_t__ ldns_resolver_tsig_keydata (TYPE_1__*) ;
 scalar_t__ ldns_resolver_tsig_keyname (TYPE_1__*) ;
 int ldns_tcp_connect_from (struct sockaddr_storage*,int ,struct sockaddr_storage*,int ,int ) ;
 scalar_t__ ldns_tcp_send_query (int *,int ,struct sockaddr_storage*,int ) ;

ldns_status
ldns_axfr_start(ldns_resolver *resolver, const ldns_rdf *domain, ldns_rr_class class)
{
        ldns_pkt *query;
        ldns_buffer *query_wire;

        struct sockaddr_storage *src = ((void*)0);
        size_t src_len = 0;
        struct sockaddr_storage *ns = ((void*)0);
        size_t ns_len = 0;
        size_t ns_i;
        ldns_status status;

        if (!resolver || ldns_resolver_nameserver_count(resolver) < 1) {
                return LDNS_STATUS_ERR;
        }

        query = ldns_pkt_query_new(ldns_rdf_clone(domain), LDNS_RR_TYPE_AXFR, class, 0);

        if (!query) {
                return LDNS_STATUS_ADDRESS_ERR;
        }
 if(ldns_resolver_source(resolver)) {
  src = ldns_rdf2native_sockaddr_storage_port(
    ldns_resolver_source(resolver), 0, &src_len);
 }



        for (ns_i = 0;
             ns_i < ldns_resolver_nameserver_count(resolver) &&
             resolver->_socket == SOCK_INVALID;
             ns_i++) {
  if (ns != ((void*)0)) {
   LDNS_FREE(ns);
  }
         ns = ldns_rdf2native_sockaddr_storage(
          resolver->_nameservers[ns_i],
   ldns_resolver_port(resolver), &ns_len);

  if ((ns->ss_family == AF_INET) &&
   (ldns_resolver_ip6(resolver) == LDNS_RESOLV_INET6)) {

   LDNS_FREE(ns);
   ns = ((void*)0);
   continue;
  }

  if ((ns->ss_family == AF_INET6) &&
    (ldns_resolver_ip6(resolver) == LDNS_RESOLV_INET)) {

   LDNS_FREE(ns);
   ns = ((void*)0);
   continue;
  }


  resolver->_socket = ldns_tcp_connect_from(
    ns, (socklen_t)ns_len,
    src, (socklen_t)src_len,
    ldns_resolver_timeout(resolver));
 }

 if (resolver->_socket == SOCK_INVALID) {
  ldns_pkt_free(query);
  LDNS_FREE(ns);
  return LDNS_STATUS_NETWORK_ERR;
 }
        query_wire = ldns_buffer_new(LDNS_MAX_PACKETLEN);
        if(!query_wire) {
                ldns_pkt_free(query);
                LDNS_FREE(ns);

  close_socket(resolver->_socket);

                return LDNS_STATUS_MEM_ERR;
        }
        status = ldns_pkt2buffer_wire(query_wire, query);
        if (status != LDNS_STATUS_OK) {
                ldns_pkt_free(query);
  ldns_buffer_free(query_wire);
                LDNS_FREE(ns);



  close_socket(resolver->_socket);
  resolver->_socket = 0;

                return status;
        }

        if (ldns_tcp_send_query(query_wire, resolver->_socket, ns,
    (socklen_t)ns_len) == 0) {
                ldns_pkt_free(query);
                ldns_buffer_free(query_wire);
                LDNS_FREE(ns);





  close_socket(resolver->_socket);

                return LDNS_STATUS_NETWORK_ERR;
        }

        ldns_pkt_free(query);
        ldns_buffer_free(query_wire);
        LDNS_FREE(ns);




        resolver->_axfr_soa_count = 0;
        return LDNS_STATUS_OK;
}

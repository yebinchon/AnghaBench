
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int qdcount; int ancount; int nscount; int arcount; } ;
struct dns_response {int * additional; TYPE_1__ header; int * authority; int * answer; int * query; } ;


 int HFIXEDSZ ;
 struct dns_response* calloc (int,int) ;
 int free_dns_response (struct dns_response*) ;
 int memcpy (TYPE_1__*,int const*,int ) ;
 void* ntohs (int) ;
 int * parse_dns_qsection (int const*,int,int const**,int) ;
 void* parse_dns_rrsection (int const*,int,int const**,int) ;

__attribute__((used)) static struct dns_response *
parse_dns_response(const u_char *answer, int size)
{
 struct dns_response *resp;
 const u_char *cp;


 resp = calloc(1, sizeof(*resp));
 if (resp == ((void*)0))
  return (((void*)0));


 cp = answer;


 memcpy(&resp->header, cp, HFIXEDSZ);
 cp += HFIXEDSZ;


 resp->header.qdcount = ntohs(resp->header.qdcount);
 resp->header.ancount = ntohs(resp->header.ancount);
 resp->header.nscount = ntohs(resp->header.nscount);
 resp->header.arcount = ntohs(resp->header.arcount);


 if (resp->header.qdcount < 1) {
  free_dns_response(resp);
  return (((void*)0));
 }


 resp->query = parse_dns_qsection(answer, size, &cp,
     resp->header.qdcount);
 if (resp->header.qdcount && resp->query == ((void*)0)) {
  free_dns_response(resp);
  return (((void*)0));
 }


 resp->answer = parse_dns_rrsection(answer, size, &cp,
     resp->header.ancount);
 if (resp->header.ancount && resp->answer == ((void*)0)) {
  free_dns_response(resp);
  return (((void*)0));
 }


 resp->authority = parse_dns_rrsection(answer, size, &cp,
     resp->header.nscount);
 if (resp->header.nscount && resp->authority == ((void*)0)) {
  free_dns_response(resp);
  return (((void*)0));
 }


 resp->additional = parse_dns_rrsection(answer, size, &cp,
     resp->header.arcount);
 if (resp->header.arcount && resp->additional == ((void*)0)) {
  free_dns_response(resp);
  return (((void*)0));
 }

 return (resp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct in_addr {int s_addr; } ;
struct evdns_server_request {int dummy; } ;
typedef int buf ;
typedef scalar_t__ a ;


 int CLASS_INET ;
 int EVDNS_ANSWER_SECTION ;
 int TYPE_PTR ;
 int evdns_server_request_add_reply (struct evdns_server_request*,int ,char const*,int ,int ,int,int,int,char const*) ;
 int evutil_snprintf (char*,int,char*,int,int,int,int) ;
 int ntohl (int ) ;

int
evdns_server_request_add_ptr_reply(struct evdns_server_request *req, struct in_addr *in, const char *inaddr_name, const char *hostname, int ttl)
{
 u32 a;
 char buf[32];
 if (in && inaddr_name)
  return -1;
 else if (!in && !inaddr_name)
  return -1;
 if (in) {
  a = ntohl(in->s_addr);
  evutil_snprintf(buf, sizeof(buf), "%d.%d.%d.%d.in-addr.arpa",
    (int)(u8)((a )&0xff),
    (int)(u8)((a>>8 )&0xff),
    (int)(u8)((a>>16)&0xff),
    (int)(u8)((a>>24)&0xff));
  inaddr_name = buf;
 }
 return evdns_server_request_add_reply(
    req, EVDNS_ANSWER_SECTION, inaddr_name, TYPE_PTR, CLASS_INET,
    ttl, -1, 1, hostname);
}

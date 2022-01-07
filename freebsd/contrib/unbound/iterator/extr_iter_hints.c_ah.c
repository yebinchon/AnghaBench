
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct delegpt {int dummy; } ;
typedef int socklen_t ;


 int delegpt_add_ns_mlc (struct delegpt*,int *,int ) ;
 int delegpt_add_target_mlc (struct delegpt*,int *,size_t,struct sockaddr_storage*,int ,int ,int ) ;
 int extstrtoaddr (char const*,struct sockaddr_storage*,int *) ;
 int free (int *) ;
 int log_err (char*,char const*) ;
 int * sldns_str2wire_dname (char const*,size_t*) ;

__attribute__((used)) static int
ah(struct delegpt* dp, const char* sv, const char* ip)
{
 struct sockaddr_storage addr;
 socklen_t addrlen;
 size_t dname_len;
 uint8_t* dname = sldns_str2wire_dname(sv, &dname_len);
 if(!dname) {
  log_err("could not parse %s", sv);
  return 0;
 }
 if(!delegpt_add_ns_mlc(dp, dname, 0) ||
    !extstrtoaddr(ip, &addr, &addrlen) ||
    !delegpt_add_target_mlc(dp, dname, dname_len,
  &addr, addrlen, 0, 0)) {
  free(dname);
  return 0;
 }
 free(dname);
 return 1;
}

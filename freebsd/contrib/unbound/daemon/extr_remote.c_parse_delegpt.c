
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct delegpt {int has_parent_side_NS; } ;
typedef int socklen_t ;
typedef int RES ;


 int authextstrtoaddr (char*,struct sockaddr_storage*,int *,char**) ;
 int delegpt_add_addr_mlc (struct delegpt*,struct sockaddr_storage*,int ,int ,int ,char*) ;
 int delegpt_add_ns_mlc (struct delegpt*,int *,int ) ;
 struct delegpt* delegpt_create_mlc (int *) ;
 int delegpt_free_mlc (struct delegpt*) ;
 int free (int *) ;
 int log_err (char*,char*) ;
 int parse_arg_name (int *,char*,int **,size_t*,int*) ;
 char* skipwhite (char*) ;
 int ssl_printf (int *,char*,...) ;
 char* strchr (char*,char) ;

__attribute__((used)) static struct delegpt*
parse_delegpt(RES* ssl, char* args, uint8_t* nm, int allow_names)
{

 char* p = args;
 char* todo;
 struct delegpt* dp = delegpt_create_mlc(nm);
 struct sockaddr_storage addr;
 socklen_t addrlen;
 char* auth_name;
 if(!dp) {
  (void)ssl_printf(ssl, "error out of memory\n");
  return ((void*)0);
 }
 while(p) {
  todo = p;
  p = strchr(p, ' ');
  if(p) {
   *p++ = 0;
   p = skipwhite(p);
  }

  if(!authextstrtoaddr(todo, &addr, &addrlen, &auth_name)) {
   if(allow_names) {
    uint8_t* n = ((void*)0);
    size_t ln;
    int lb;
    if(!parse_arg_name(ssl, todo, &n, &ln, &lb)) {
     (void)ssl_printf(ssl, "error cannot "
      "parse IP address or name "
      "'%s'\n", todo);
     delegpt_free_mlc(dp);
     return ((void*)0);
    }
    if(!delegpt_add_ns_mlc(dp, n, 0)) {
     (void)ssl_printf(ssl, "error out of memory\n");
     free(n);
     delegpt_free_mlc(dp);
     return ((void*)0);
    }
    free(n);

   } else {
    (void)ssl_printf(ssl, "error cannot parse"
     " IP address '%s'\n", todo);
    delegpt_free_mlc(dp);
    return ((void*)0);
   }
  } else {

   if(auth_name)
     log_err("no name verification functionality in "
    "ssl library, ignored name for %s", todo);


   if(!delegpt_add_addr_mlc(dp, &addr, addrlen, 0, 0,
    auth_name)) {
    (void)ssl_printf(ssl, "error out of memory\n");
    delegpt_free_mlc(dp);
    return ((void*)0);
   }
  }
 }
 dp->has_parent_side_NS = 1;
 return dp;
}

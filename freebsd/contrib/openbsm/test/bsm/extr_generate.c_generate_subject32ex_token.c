
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef int token_t ;
struct TYPE_3__ {scalar_t__ at_type; int * at_addr; } ;


 int AF_INET6 ;
 scalar_t__ AU_IPv4 ;
 scalar_t__ AU_IPv6 ;
 int EX_UNAVAILABLE ;
 int * au_to_subject32_ex (int ,int ,int ,int ,int ,int ,int ,TYPE_1__*) ;
 int err (int ,char*) ;
 int free (char*) ;
 int inet_addr (char*) ;
 int inet_pton (int ,char*,int *) ;
 scalar_t__ malloc (scalar_t__) ;
 int sprintf (char*,char*,char const*,char*) ;
 scalar_t__ strlen (char const*) ;
 int subject32_auid ;
 int subject32_egid ;
 int subject32_euid ;
 int subject32_pid ;
 int subject32_rgid ;
 int subject32_ruid ;
 int subject32_sid ;
 TYPE_1__ subject32_tid_addr ;
 int write_token (char const*,char*,int *) ;

__attribute__((used)) static void
generate_subject32ex_token(const char *directory, const char *token_filename,
    u_int32_t type)
{
 token_t *subject32ex_token;
 char *buf;

 buf = (char *)malloc(strlen(token_filename) + 6);
 if (type == AU_IPv6) {
  inet_pton(AF_INET6, "fe80::1", subject32_tid_addr.at_addr);
  subject32_tid_addr.at_type = AU_IPv6;
  sprintf(buf, "%s%s", token_filename, "-IPv6");
 } else {
  subject32_tid_addr.at_addr[0] = inet_addr("127.0.0.1");
  subject32_tid_addr.at_type = AU_IPv4;
  sprintf(buf, "%s%s", token_filename, "-IPv4");
 }

 subject32ex_token = au_to_subject32_ex(subject32_auid, subject32_euid,
     subject32_egid, subject32_ruid, subject32_rgid, subject32_pid,
     subject32_sid, &subject32_tid_addr);
 if (subject32ex_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_subject32_ex");
 write_token(directory, buf, subject32ex_token);
 free(buf);
}

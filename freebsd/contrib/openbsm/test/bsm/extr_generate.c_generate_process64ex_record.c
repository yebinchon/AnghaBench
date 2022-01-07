
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef int token_t ;
struct TYPE_3__ {scalar_t__ at_type; int * at_addr; } ;


 int AF_INET6 ;
 int AUE_NULL ;
 scalar_t__ AU_IPv4 ;
 scalar_t__ AU_IPv6 ;
 int EX_UNAVAILABLE ;
 int * au_to_process64_ex (int ,int ,int ,int ,int ,int ,int ,TYPE_1__*) ;
 int err (int ,char*) ;
 int free (char*) ;
 int inet_addr (char*) ;
 int inet_pton (int ,char*,int *) ;
 scalar_t__ malloc (scalar_t__) ;
 int process64_auid ;
 int process64_egid ;
 int process64_euid ;
 int process64_pid ;
 int process64_rgid ;
 int process64_ruid ;
 int process64_sid ;
 TYPE_1__ process64_tid_addr ;
 int sprintf (char*,char*,char const*,char*) ;
 scalar_t__ strlen (char const*) ;
 int write_record (char const*,char*,int *,int ) ;

__attribute__((used)) static void
generate_process64ex_record(const char *directory, const char *record_filename,
    u_int32_t type)
{
 token_t *process64ex_token;
 char *buf;

 buf = (char *)malloc(strlen(record_filename) + 6);
 if (type == AU_IPv6) {
  inet_pton(AF_INET6, "fe80::1", process64_tid_addr.at_addr);
  process64_tid_addr.at_type = AU_IPv6;
  sprintf(buf, "%s%s", record_filename, "-IPv6");
 } else {
  process64_tid_addr.at_addr[0] = inet_addr("127.0.0.1");
  process64_tid_addr.at_type = AU_IPv4;
  sprintf(buf, "%s%s", record_filename, "-IPv4");
 }

 process64ex_token = au_to_process64_ex(process64_auid, process64_euid,
     process64_egid, process64_ruid, process64_rgid, process64_pid,
     process64_sid, &process64_tid_addr);
 if (process64ex_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_process64_ex");
 write_record(directory, buf, process64ex_token, AUE_NULL);
 free(buf);
}

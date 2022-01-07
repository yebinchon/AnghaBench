
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int token_t ;
struct TYPE_3__ {int machine; } ;


 int EX_UNAVAILABLE ;
 int * au_to_process64 (int ,int ,int ,int ,int ,int ,int ,TYPE_1__*) ;
 int err (int ,char*) ;
 int inet_addr (char*) ;
 int process64_auid ;
 int process64_egid ;
 int process64_euid ;
 int process64_pid ;
 int process64_rgid ;
 int process64_ruid ;
 int process64_sid ;
 TYPE_1__ process64_tid ;
 int write_token (char const*,char const*,int *) ;

__attribute__((used)) static void
generate_process64_token(const char *directory, const char *token_filename)
{
 token_t *process64_token;

 process64_tid.machine = inet_addr("127.0.0.1");

 process64_token = au_to_process64(process64_auid, process64_euid,
     process64_egid, process64_ruid, process64_rgid, process64_pid,
     process64_sid, &process64_tid);
 if (process64_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_process64");
 write_token(directory, token_filename, process64_token);
}

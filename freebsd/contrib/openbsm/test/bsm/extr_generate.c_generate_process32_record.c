
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int token_t ;
struct TYPE_3__ {int machine; } ;


 int AUE_NULL ;
 int EX_UNAVAILABLE ;
 int * au_to_process32 (int ,int ,int ,int ,int ,int ,int ,TYPE_1__*) ;
 int err (int ,char*) ;
 int inet_addr (char*) ;
 int process32_auid ;
 int process32_egid ;
 int process32_euid ;
 int process32_pid ;
 int process32_rgid ;
 int process32_ruid ;
 int process32_sid ;
 TYPE_1__ process32_tid ;
 int write_record (char const*,char const*,int *,int ) ;

__attribute__((used)) static void
generate_process32_record(const char *directory, const char *record_filename)
{
 token_t *process32_token;

 process32_tid.machine = inet_addr("127.0.0.1");

 process32_token = au_to_process32(process32_auid, process32_euid,
     process32_egid, process32_ruid, process32_rgid, process32_pid,
     process32_sid, &process32_tid);
 if (process32_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_ti_process32");
 write_record(directory, record_filename, process32_token, AUE_NULL);
}

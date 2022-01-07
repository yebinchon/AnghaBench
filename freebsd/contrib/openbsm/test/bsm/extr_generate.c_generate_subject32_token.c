
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int token_t ;
struct TYPE_3__ {int machine; } ;


 int EX_UNAVAILABLE ;
 int * au_to_subject32 (int ,int ,int ,int ,int ,int ,int ,TYPE_1__*) ;
 int err (int ,char*) ;
 int inet_addr (char*) ;
 int subject32_auid ;
 int subject32_egid ;
 int subject32_euid ;
 int subject32_pid ;
 int subject32_rgid ;
 int subject32_ruid ;
 int subject32_sid ;
 TYPE_1__ subject32_tid ;
 int write_token (char const*,char const*,int *) ;

__attribute__((used)) static void
generate_subject32_token(const char *directory, const char *token_filename)
{
 token_t *subject32_token;

 subject32_tid.machine = inet_addr("127.0.0.1");

 subject32_token = au_to_subject32(subject32_auid, subject32_euid,
     subject32_egid, subject32_ruid, subject32_rgid, subject32_pid,
     subject32_sid, &subject32_tid);
 if (subject32_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_subject32");
 write_token(directory, token_filename, subject32_token);
}

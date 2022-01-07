
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int AUE_NULL ;
 int EX_UNAVAILABLE ;
 int * au_to_ipc (int ,int ) ;
 int err (int ,char*) ;
 int ipc_id ;
 int ipc_type ;
 int write_record (char const*,char const*,int *,int ) ;

__attribute__((used)) static void
generate_ipc_record(const char *directory, const char *record_filename)
{
 token_t *ipc_token;

 ipc_token = au_to_ipc(ipc_type, ipc_id);
 if (ipc_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_ipc");
 write_record(directory, record_filename, ipc_token, AUE_NULL);
}

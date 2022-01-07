
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int EX_UNAVAILABLE ;
 int * au_to_seq (int ) ;
 int err (int ,char*) ;
 int seq_audit_count ;
 int write_token (char const*,char const*,int *) ;

__attribute__((used)) static void
generate_seq_token(const char *directory, const char *token_filename)
{
 token_t *seq_token;

 seq_token = au_to_seq(seq_audit_count);
 if (seq_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_seq");
 write_token(directory, token_filename, seq_token);
}

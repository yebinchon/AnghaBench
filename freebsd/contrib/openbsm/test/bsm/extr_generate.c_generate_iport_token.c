
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int EX_UNAVAILABLE ;
 int * au_to_iport (int ) ;
 int err (int ,char*) ;
 int htons (int) ;
 int iport_token_iport ;
 int write_token (char const*,char const*,int *) ;

__attribute__((used)) static void
generate_iport_token(const char *directory, const char *token_filename)
{
 token_t *iport_token;

 iport_token_iport = htons(80);

 iport_token = au_to_iport(iport_token_iport);
 if (iport_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_iport");
 write_token(directory, token_filename, iport_token);
}

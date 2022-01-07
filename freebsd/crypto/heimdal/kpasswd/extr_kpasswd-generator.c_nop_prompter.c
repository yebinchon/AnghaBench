
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_prompt ;
typedef int krb5_context ;



__attribute__((used)) static int
nop_prompter (krb5_context context,
       void *data,
       const char *name,
       const char *banner,
       int num_prompts,
       krb5_prompt prompts[])
{
    return 0;
}

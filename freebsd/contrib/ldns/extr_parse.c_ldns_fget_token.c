
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int ldns_fget_token_l (int *,char*,char const*,size_t,int *) ;

ssize_t
ldns_fget_token(FILE *f, char *token, const char *delim, size_t limit)
{
 return ldns_fget_token_l(f, token, delim, limit, ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int sldns_buffer ;


 int sldns_bget_token_par (int *,char*,char const*,size_t,int *,int *) ;

ssize_t
sldns_bget_token(sldns_buffer *b, char *token, const char *delim, size_t limit)
{
 return sldns_bget_token_par(b, token, delim, limit, ((void*)0), ((void*)0));
}

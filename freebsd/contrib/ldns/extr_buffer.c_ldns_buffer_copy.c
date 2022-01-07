
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_buffer ;


 int ldns_buffer_begin (int const*) ;
 size_t ldns_buffer_capacity (int *) ;
 int ldns_buffer_clear (int *) ;
 int ldns_buffer_flip (int *) ;
 size_t ldns_buffer_limit (int const*) ;
 int ldns_buffer_write (int *,int ,size_t) ;

void
ldns_buffer_copy(ldns_buffer* result, const ldns_buffer* from)
{
 size_t tocopy = ldns_buffer_limit(from);

 if(tocopy > ldns_buffer_capacity(result))
  tocopy = ldns_buffer_capacity(result);
 ldns_buffer_clear(result);
 ldns_buffer_write(result, ldns_buffer_begin(from), tocopy);
 ldns_buffer_flip(result);
}

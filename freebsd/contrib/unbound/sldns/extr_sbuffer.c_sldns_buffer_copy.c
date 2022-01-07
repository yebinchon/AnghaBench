
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;


 int sldns_buffer_begin (int *) ;
 size_t sldns_buffer_capacity (int *) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 size_t sldns_buffer_limit (int *) ;
 int sldns_buffer_write (int *,int ,size_t) ;

void
sldns_buffer_copy(sldns_buffer* result, sldns_buffer* from)
{
 size_t tocopy = sldns_buffer_limit(from);

 if(tocopy > sldns_buffer_capacity(result))
  tocopy = sldns_buffer_capacity(result);
 sldns_buffer_clear(result);
 sldns_buffer_write(result, sldns_buffer_begin(from), tocopy);
 sldns_buffer_flip(result);
}

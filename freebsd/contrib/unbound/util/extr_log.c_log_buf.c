
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;
typedef enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;


 int log_hex_f (int,char const*,int ,int ) ;
 int sldns_buffer_begin (int *) ;
 int sldns_buffer_limit (int *) ;
 int verbosity ;

void log_buf(enum verbosity_value level, const char* msg, sldns_buffer* buf)
{
 if(verbosity < level)
  return;
 log_hex_f(level, msg, sldns_buffer_begin(buf), sldns_buffer_limit(buf));
}

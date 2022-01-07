
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_hex_f (int ,char const*,void*,size_t) ;
 int verbosity ;

void
log_hex(const char* msg, void* data, size_t length)
{
 log_hex_f(verbosity, msg, data, length);
}

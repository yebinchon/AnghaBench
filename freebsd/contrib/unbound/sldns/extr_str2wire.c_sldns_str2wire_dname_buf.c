
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sldns_str2wire_dname_buf_rel (char const*,int *,size_t*,int *) ;

int sldns_str2wire_dname_buf(const char* str, uint8_t* buf, size_t* len)
{
 return sldns_str2wire_dname_buf_rel(str, buf, len, ((void*)0));
}

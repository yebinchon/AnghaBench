
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,unsigned int) ;

__attribute__((used)) static size_t _unmarshall_buf(const void *inbuf, void *outbuf, unsigned int len)
{
 memcpy(outbuf, inbuf, len);

 return len;
}

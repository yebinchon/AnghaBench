
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int memcpy (void*,void*,size_t) ;

void*
memdup(void* data, size_t len)
{
 void* d;
 if(!data) return ((void*)0);
 if(len == 0) return ((void*)0);
 d = malloc(len);
 if(!d) return ((void*)0);
 memcpy(d, data, len);
 return d;
}

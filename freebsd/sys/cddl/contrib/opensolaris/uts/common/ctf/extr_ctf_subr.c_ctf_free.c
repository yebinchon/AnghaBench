
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kobj_free (void*,size_t) ;

void
ctf_free(void *buf, size_t size)
{
 kobj_free(buf, size);
}

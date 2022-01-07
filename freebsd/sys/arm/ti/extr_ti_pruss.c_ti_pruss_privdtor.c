
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_DEVBUF ;
 int free (void*,int ) ;

__attribute__((used)) static void
ti_pruss_privdtor(void *data)
{
    free(data, M_DEVBUF);
}

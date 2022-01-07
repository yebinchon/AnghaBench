
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileno_stdin () ;
 int read (int ,void*,int) ;

int raw_read_stdin(void *buf, int siz)
{
    return read(fileno_stdin(), buf, siz);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lzma_end (int *) ;
 int strm ;

extern void
coder_free(void)
{
 lzma_end(&strm);
 return;
}

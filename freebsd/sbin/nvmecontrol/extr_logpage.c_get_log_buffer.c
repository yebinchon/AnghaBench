
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int errx (int,char*,int ) ;
 void* malloc (int ) ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static void *
get_log_buffer(uint32_t size)
{
 void *buf;

 if ((buf = malloc(size)) == ((void*)0))
  errx(1, "unable to malloc %u bytes", size);

 memset(buf, 0, size);
 return (buf);
}

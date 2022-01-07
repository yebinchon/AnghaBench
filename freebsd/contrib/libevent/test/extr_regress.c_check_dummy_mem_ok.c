
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char*,char*,int) ;

__attribute__((used)) static int
check_dummy_mem_ok(void *mem_)
{
 char *mem = mem_;
 mem -= 16;
 return !memcmp(mem, "{[<guardedram>]}", 16);
}

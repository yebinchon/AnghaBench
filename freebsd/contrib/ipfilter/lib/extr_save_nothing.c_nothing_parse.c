
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,int) ;

__attribute__((used)) static void *
nothing_parse(char **strings)
{
 void *ctx;





 ctx = calloc(1, sizeof(void *));

 return ctx;
}

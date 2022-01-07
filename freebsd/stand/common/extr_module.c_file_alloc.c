
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {int dummy; } ;


 struct preloaded_file* calloc (int,int) ;

struct preloaded_file *
file_alloc(void)
{

 return (calloc(1, sizeof(struct preloaded_file)));
}

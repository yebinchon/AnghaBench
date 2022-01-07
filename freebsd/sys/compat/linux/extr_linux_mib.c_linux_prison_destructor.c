
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_PRISON ;
 int free (void*,int ) ;

__attribute__((used)) static void
linux_prison_destructor(void *data)
{

 free(data, M_PRISON);
}

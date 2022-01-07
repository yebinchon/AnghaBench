
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (int *) ;
 int random_close_fd () ;
 int * random_entropy_file ;
 int random_write_entropy () ;

void random_deinit(void)
{

 random_close_fd();

 random_write_entropy();
 os_free(random_entropy_file);
 random_entropy_file = ((void*)0);
}

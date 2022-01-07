
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tube {int dummy; } ;


 int free (struct tube*) ;
 int tube_close_read (struct tube*) ;
 int tube_close_write (struct tube*) ;
 int tube_remove_bg_listen (struct tube*) ;
 int tube_remove_bg_write (struct tube*) ;

void tube_delete(struct tube* tube)
{
 if(!tube) return;
 tube_remove_bg_listen(tube);
 tube_remove_bg_write(tube);


 tube_close_read(tube);
 tube_close_write(tube);
 free(tube);
}

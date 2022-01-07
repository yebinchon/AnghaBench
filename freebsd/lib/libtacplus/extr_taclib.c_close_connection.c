
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int fd; } ;


 int close (int) ;

__attribute__((used)) static void
close_connection(struct tac_handle *h)
{
 if (h->fd != -1) {
  close(h->fd);
  h->fd = -1;
 }
}

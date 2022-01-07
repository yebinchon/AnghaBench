
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int * imsg; } ;
typedef TYPE_1__ unit_t ;
typedef int buf ;


 int find_unit_by_fd (int,int*,int*,TYPE_1__**) ;
 int memcpy (int *,unsigned char*,int) ;
 int * realloc (int *,int) ;
 int recv (int,unsigned char*,int,int ) ;

__attribute__((used)) static int read_client_data (int fd) {
 unsigned char buf[256];
 int chassis, geoslot;
 unit_t *u;
 int len;

 find_unit_by_fd(fd, &chassis, &geoslot, &u);

 if ((len = recv(fd, buf, sizeof(buf), 0)) <= 0) return 0;

 if ((u->imsg = realloc(u->imsg, (u->len + len))) == ((void*)0))
  return 0;
 memcpy((u->imsg + u->len), buf, len);
 u->len += len;
 return 1;
}

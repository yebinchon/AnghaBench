
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unit_t ;


 int find_unit_by_fd (int,int*,int*,int **) ;
 int recv (int,unsigned char*,int,int ) ;

__attribute__((used)) static int read_client_nbytes(int fd, int count, unsigned char *buf) {
 unit_t *u;
 int chassis, geoslot;
 int len;

 find_unit_by_fd(fd, &chassis, &geoslot, &u);
 while (count) {
  if ((len = recv(fd, buf, count, 0)) <= 0) return -1;
  count -= len;
  buf += len;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;


 int _res ;
 int res_ourserver_p (int *,struct sockaddr_in const*) ;

int
res_isourserver(const struct sockaddr_in *inp) {
 return (res_ourserver_p(&_res, inp));
}

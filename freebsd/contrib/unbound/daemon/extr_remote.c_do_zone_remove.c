
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int dummy; } ;
typedef int RES ;


 int perform_zone_remove (int *,struct local_zones*,char*) ;
 int send_ok (int *) ;

__attribute__((used)) static void
do_zone_remove(RES* ssl, struct local_zones* zones, char* arg)
{
 if(!perform_zone_remove(ssl, zones, arg))
  return;
 send_ok(ssl);
}

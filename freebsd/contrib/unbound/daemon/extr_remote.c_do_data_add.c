
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int dummy; } ;
typedef int RES ;


 int perform_data_add (int *,struct local_zones*,char*) ;
 int send_ok (int *) ;

__attribute__((used)) static void
do_data_add(RES* ssl, struct local_zones* zones, char* arg)
{
 if(!perform_data_add(ssl, zones, arg))
  return;
 send_ok(ssl);
}

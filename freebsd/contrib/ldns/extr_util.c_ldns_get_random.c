
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int RAND_bytes (unsigned char*,int) ;
 scalar_t__ random () ;

uint16_t
ldns_get_random(void)
{
        uint16_t rid = 0;





        rid = (uint16_t) random();

 return rid;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 int mad_decode_field (int ,int,unsigned int*) ;
 int thresholds ;

__attribute__((used)) static int exceeds_threshold(int field, unsigned val)
{
 uint32_t thres = 0;
 mad_decode_field(thresholds, field, &thres);
 return (val > thres);
}

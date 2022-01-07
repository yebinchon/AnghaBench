
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ev_uint8_t ;


 scalar_t__* EVUTIL_TOUPPER_TABLE ;

char EVUTIL_TOUPPER_(char c)
{
 return ((char)EVUTIL_TOUPPER_TABLE[(ev_uint8_t)c]);
}

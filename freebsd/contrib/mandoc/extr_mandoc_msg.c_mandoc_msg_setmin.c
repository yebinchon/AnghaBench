
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mandocerr { ____Placeholder_mandocerr } mandocerr ;


 int min_type ;

void
mandoc_msg_setmin(enum mandocerr t)
{
 min_type = t;
}

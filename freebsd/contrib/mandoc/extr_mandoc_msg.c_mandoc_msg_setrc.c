
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mandoclevel { ____Placeholder_mandoclevel } mandoclevel ;


 int rc ;

void
mandoc_msg_setrc(enum mandoclevel level)
{
 if (rc < level)
  rc = level;
}

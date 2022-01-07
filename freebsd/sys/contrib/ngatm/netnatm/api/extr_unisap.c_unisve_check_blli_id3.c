
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unisve_blli_id3 {scalar_t__ tag; } ;


 scalar_t__ UNISVE_ABSENT ;
 scalar_t__ UNISVE_ANY ;
 int UNISVE_ERROR_BAD_TAG ;
 int UNISVE_OK ;
 scalar_t__ UNISVE_PRESENT ;

int
unisve_check_blli_id3(const struct unisve_blli_id3 *sve)
{
 if (sve->tag != UNISVE_PRESENT &&
     sve->tag != UNISVE_ABSENT &&
     sve->tag != UNISVE_ANY)
  return (UNISVE_ERROR_BAD_TAG);
 return (UNISVE_OK);
}

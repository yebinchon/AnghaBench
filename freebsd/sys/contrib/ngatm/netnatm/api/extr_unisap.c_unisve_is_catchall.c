
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ tag; } ;
struct TYPE_9__ {scalar_t__ tag; } ;
struct TYPE_8__ {scalar_t__ tag; } ;
struct TYPE_7__ {scalar_t__ tag; } ;
struct TYPE_6__ {scalar_t__ tag; } ;
struct uni_sap {TYPE_5__ bhli; TYPE_4__ blli_id3; TYPE_3__ blli_id2; TYPE_2__ selector; TYPE_1__ addr; } ;


 scalar_t__ UNISVE_ANY ;

int
unisve_is_catchall(const struct uni_sap *sap)
{
 return (sap->addr.tag == UNISVE_ANY &&
     sap->selector.tag == UNISVE_ANY &&
     sap->blli_id2.tag == UNISVE_ANY &&
     sap->blli_id3.tag == UNISVE_ANY &&
     sap->bhli.tag == UNISVE_ANY);
}

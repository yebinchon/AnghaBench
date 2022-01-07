
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;


 scalar_t__ idr_for_each (struct idr*,int ,int *) ;
 int idr_has_entry ;

bool
idr_is_empty(struct idr *idp)
{

 return (idr_for_each(idp, idr_has_entry, ((void*)0)) == 0);
}

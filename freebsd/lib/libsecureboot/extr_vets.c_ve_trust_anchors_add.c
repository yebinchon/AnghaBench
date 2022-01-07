
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_x509_certificate ;


 int trust_anchors ;
 size_t ve_anchors_add (int *,size_t,int *,char*) ;

size_t
ve_trust_anchors_add(br_x509_certificate *xcs, size_t num)
{
 return (ve_anchors_add(xcs, num, &trust_anchors, "trusted"));
}

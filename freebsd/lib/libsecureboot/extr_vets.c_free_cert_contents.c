
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ br_x509_certificate ;


 int xfree (int ) ;

__attribute__((used)) static void
free_cert_contents(br_x509_certificate *xc)
{
 xfree(xc->data);
}

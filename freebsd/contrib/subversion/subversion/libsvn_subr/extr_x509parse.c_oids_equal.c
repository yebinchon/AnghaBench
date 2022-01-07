
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int p; } ;
typedef TYPE_1__ x509_buf ;
typedef int svn_boolean_t ;


 int equal (int ,int ,int ,int ) ;

__attribute__((used)) static svn_boolean_t
oids_equal(x509_buf *left, x509_buf *right)
{
  return equal(left->p, left->len,
               right->p, right->len);
}

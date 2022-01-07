
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ len; } ;
struct TYPE_8__ {TYPE_1__ rdnSequence; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_10__ {TYPE_3__ subject; } ;
struct TYPE_11__ {TYPE_4__ tbsCertificate; } ;
typedef TYPE_5__ Certificate ;



__attribute__((used)) static int
subject_null_p(const Certificate *c)
{
    return c->tbsCertificate.subject.u.rdnSequence.len == 0;
}

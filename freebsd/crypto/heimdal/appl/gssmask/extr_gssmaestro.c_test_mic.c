
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct client {int moniker; } ;
struct TYPE_8__ {char* data; int length; } ;
typedef TYPE_1__ krb5_data ;
typedef scalar_t__ int32_t ;


 int errx (int,char*,int ) ;
 scalar_t__ get_mic (struct client*,scalar_t__,TYPE_1__*,TYPE_1__*) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_data_zero (TYPE_1__*) ;
 scalar_t__ verify_mic (struct client*,scalar_t__,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void
test_mic(struct client *c1, int32_t hc1, struct client *c2, int32_t hc2)
{
    krb5_data msg, mic;
    int32_t val;

    msg.data = "foo";
    msg.length = 3;

    krb5_data_zero(&mic);

    val = get_mic(c1, hc1, &msg, &mic);
    if (val)
 errx(1, "get_mic failed to host: %s", c1->moniker);
    val = verify_mic(c2, hc2, &msg, &mic);
    if (val)
 errx(1, "verify_mic failed to host: %s", c2->moniker);

    krb5_data_free(&mic);
}

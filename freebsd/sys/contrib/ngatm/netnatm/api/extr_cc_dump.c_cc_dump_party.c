
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dump {int dummy; } ;
struct TYPE_2__ {int epref; int flag; } ;
struct ccparty {int state; TYPE_1__ epref; } ;


 int cc_dumpf (struct dump*,char*,char const*,struct ccparty const*,int ,int ,int ) ;
 int cc_party_state2str (int ) ;

__attribute__((used)) static void
cc_dump_party(struct dump *d, const struct ccparty *party, const char *pfx)
{

 cc_dumpf(d, "%s  party(%p): %u.%u %s\n", pfx, party,
     party->epref.flag, party->epref.epref,
     cc_party_state2str(party->state));
}

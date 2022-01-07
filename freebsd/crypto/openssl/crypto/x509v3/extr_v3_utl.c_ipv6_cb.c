
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total; int zero_pos; scalar_t__ tmp; int zero_cnt; } ;
typedef TYPE_1__ IPV6_STAT ;


 int ipv4_from_asc (scalar_t__,char const*) ;
 int ipv6_hex (scalar_t__,char const*,int) ;

__attribute__((used)) static int ipv6_cb(const char *elem, int len, void *usr)
{
    IPV6_STAT *s = usr;

    if (s->total == 16)
        return 0;
    if (len == 0) {

        if (s->zero_pos == -1)
            s->zero_pos = s->total;

        else if (s->zero_pos != s->total)
            return 0;
        s->zero_cnt++;
    } else {

        if (len > 4) {

            if (s->total > 12)
                return 0;

            if (elem[len])
                return 0;
            if (!ipv4_from_asc(s->tmp + s->total, elem))
                return 0;
            s->total += 4;
        } else {
            if (!ipv6_hex(s->tmp + s->total, elem, len))
                return 0;
            s->total += 2;
        }
    }
    return 1;
}

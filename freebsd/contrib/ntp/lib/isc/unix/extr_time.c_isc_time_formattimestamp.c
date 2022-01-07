
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_3__ {int nanoseconds; scalar_t__ seconds; } ;
typedef TYPE_1__ isc_time_t ;


 int INSIST (int) ;
 int REQUIRE (int) ;
 int localtime (scalar_t__*) ;
 int snprintf (char*,unsigned int,char*,...) ;
 unsigned int strftime (char*,unsigned int,char*,int ) ;

void
isc_time_formattimestamp(const isc_time_t *t, char *buf, unsigned int len) {
 time_t now;
 unsigned int flen;

 REQUIRE(len > 0);

 now = (time_t) t->seconds;
 flen = strftime(buf, len, "%d-%b-%Y %X", localtime(&now));
 INSIST(flen < len);
 if (flen != 0)
  snprintf(buf + flen, len - flen,
    ".%03u", t->nanoseconds / 1000000);
 else
  snprintf(buf, len, "99-Bad-9999 99:99:99.999");
}

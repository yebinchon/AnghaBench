
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_3__ {scalar_t__ seconds; } ;
typedef TYPE_1__ isc_time_t ;


 int INSIST (int) ;
 int REQUIRE (int) ;
 int gmtime (scalar_t__*) ;
 unsigned int strftime (char*,unsigned int,char*,int ) ;

void
isc_time_formathttptimestamp(const isc_time_t *t, char *buf, unsigned int len) {
 time_t now;
 unsigned int flen;

 REQUIRE(len > 0);

 now = (time_t)t->seconds;
 flen = strftime(buf, len, "%a, %d %b %Y %H:%M:%S GMT", gmtime(&now));
 INSIST(flen < len);
}

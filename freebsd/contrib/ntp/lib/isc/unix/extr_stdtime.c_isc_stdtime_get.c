
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef unsigned int isc_stdtime_t ;


 int INSIST (int) ;
 int REQUIRE (int ) ;
 int RUNTIME_CHECK (int) ;
 scalar_t__ US_PER_S ;
 int fix_tv_usec (struct timeval*) ;
 int gettimeofday (struct timeval*,int *) ;

void
isc_stdtime_get(isc_stdtime_t *t) {
 struct timeval tv;






 REQUIRE(t != ((void*)0));

 RUNTIME_CHECK(gettimeofday(&tv, ((void*)0)) != -1);





 INSIST(tv.tv_usec >= 0 && tv.tv_usec < US_PER_S);


 *t = (unsigned int)tv.tv_sec;
}

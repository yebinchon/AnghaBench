
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int LOG_NOTICE ;
 scalar_t__ be64toh (int ) ;
 int syslog (int ,char*,long long,long long,long long,long long) ;

__attribute__((used)) static void dump_cqe(void *arg)
{
 u64 *p = arg;
 syslog(LOG_NOTICE, "cxgb4 err cqe %016llx %016llx %016llx %016llx\n",
        (long long)be64toh(p[0]),
        (long long)be64toh(p[1]),
        (long long)be64toh(p[2]),
        (long long)be64toh(p[3]));
}

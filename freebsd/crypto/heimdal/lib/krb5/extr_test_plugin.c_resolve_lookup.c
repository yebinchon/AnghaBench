
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
typedef struct sockaddr sockaddr ;
typedef int s ;
typedef int krb5_error_code ;
typedef enum locate_service_type { ____Placeholder_locate_service_type } locate_service_type ;


 int AF_INET ;
 int htonl (int) ;
 int htons (int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (void*,int,struct sockaddr*) ;

__attribute__((used)) static krb5_error_code
resolve_lookup(void *ctx,
        enum locate_service_type service,
        const char *realm,
        int domain,
        int type,
        int (*add)(void *,int,struct sockaddr *),
        void *addctx)
{
    struct sockaddr_in s;

    memset(&s, 0, sizeof(s));




    s.sin_family = AF_INET;
    s.sin_port = htons(88);
    s.sin_addr.s_addr = htonl(0x7f000002);

    if (strcmp(realm, "NOTHERE.H5L.SE") == 0)
 (*add)(addctx, type, (struct sockaddr *)&s);

    return 0;
}

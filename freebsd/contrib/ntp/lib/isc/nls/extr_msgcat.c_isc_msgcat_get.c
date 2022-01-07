
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int catalog; } ;
typedef TYPE_1__ isc_msgcat_t ;


 int REQUIRE (int) ;
 scalar_t__ VALID_MSGCAT (TYPE_1__*) ;
 char const* catgets (int ,int,int,char const*) ;

const char *
isc_msgcat_get(isc_msgcat_t *msgcat, int set, int message,
        const char *default_text)
{





 REQUIRE(VALID_MSGCAT(msgcat) || msgcat == ((void*)0));
 REQUIRE(set > 0);
 REQUIRE(message > 0);
 REQUIRE(default_text != ((void*)0));






 return (default_text);

}

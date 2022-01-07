
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resp ;
typedef int krb5_timestamp ;
typedef int buf ;


 scalar_t__ get_response (char const*,char*,char*,int) ;
 scalar_t__ parse_timet (char*,int *,int*,int) ;
 int time_t2str (int ,char*,int,int ) ;

int
edit_timet (const char *prompt, krb5_timestamp *value, int *mask, int bit)
{
    char buf[1024], resp[1024];

    if (mask && (*mask & bit))
 return 0;

    time_t2str (*value, buf, sizeof (buf), 0);

    for (;;) {
 if(get_response(prompt, buf, resp, sizeof(resp)) != 0)
     return 1;
 if (parse_timet (resp, value, mask, bit) == 0)
     break;
    }
    return 0;
}

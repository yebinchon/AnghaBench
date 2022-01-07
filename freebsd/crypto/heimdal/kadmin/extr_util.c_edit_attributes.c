
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resp ;
typedef int krb5_flags ;
typedef int buf ;


 int attributes2str (int ,char*,int) ;
 scalar_t__ get_response (char*,char*,char*,int) ;
 scalar_t__ parse_attributes (char*,int *,int*,int) ;

int
edit_attributes (const char *prompt, krb5_flags *attr, int *mask, int bit)
{
    char buf[1024], resp[1024];

    if (mask && (*mask & bit))
 return 0;

    attributes2str(*attr, buf, sizeof(buf));
    for (;;) {
 if(get_response("Attributes", buf, resp, sizeof(resp)) != 0)
     return 1;
 if (resp[0] == '\0')
     break;
 if (parse_attributes (resp, attr, mask, bit) == 0)
     break;
    }
    return 0;
}

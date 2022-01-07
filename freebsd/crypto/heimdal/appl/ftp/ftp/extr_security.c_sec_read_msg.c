
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* decode ) (int ,char*,int,int) ;} ;


 int app_data ;
 int base64_decode (char*,char*) ;
 int free (char*) ;
 char* malloc (int ) ;
 TYPE_1__* mech ;
 int sscanf (char*,char*,int*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int stub1 (int ,char*,int,int) ;

int
sec_read_msg(char *s, int level)
{
    int len;
    char *buf;
    int return_code;

    buf = malloc(strlen(s));
    len = base64_decode(s + 4, buf);

    len = (*mech->decode)(app_data, buf, len, level);
    if(len < 0)
 return -1;

    buf[len] = '\0';

    if(buf[3] == '-')
 return_code = 0;
    else
 sscanf(buf, "%d", &return_code);
    if(buf[len-1] == '\n')
 buf[len-1] = '\0';
    strcpy(s, buf);
    free(buf);
    return return_code;
}

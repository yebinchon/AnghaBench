
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_2__ {int (* encode ) (int ,char*,int ,scalar_t__,void**) ;} ;
typedef int FILE ;


 int app_data ;
 scalar_t__ base64_encode (void*,int,char**) ;
 scalar_t__ command_prot ;
 int fprintf (int *,char*,char*) ;
 int free (char*) ;
 TYPE_1__* mech ;
 int printf (char*) ;
 scalar_t__ prot_confidential ;
 scalar_t__ prot_private ;
 scalar_t__ prot_safe ;
 int sec_complete ;
 int strlen (char*) ;
 int stub1 (int ,char*,int ,scalar_t__,void**) ;
 int vasprintf (char**,char const*,int ) ;
 int vfprintf (int *,char const*,int ) ;

int
sec_vfprintf(FILE *f, const char *fmt, va_list ap)
{
    char *buf;
    void *enc;
    int len;
    if(!sec_complete)
 return vfprintf(f, fmt, ap);

    if (vasprintf(&buf, fmt, ap) == -1) {
 printf("Failed to allocate command.\n");
 return -1;
    }
    len = (*mech->encode)(app_data, buf, strlen(buf), command_prot, &enc);
    free(buf);
    if(len < 0) {
 printf("Failed to encode command.\n");
 return -1;
    }
    if(base64_encode(enc, len, &buf) < 0){
 free(enc);
 printf("Out of memory base64-encoding.\n");
 return -1;
    }
    free(enc);
    if(command_prot == prot_safe)
 fprintf(f, "MIC %s", buf);
    else if(command_prot == prot_private)
 fprintf(f, "ENC %s", buf);
    else if(command_prot == prot_confidential)
 fprintf(f, "CONF %s", buf);

    free(buf);
    return 0;
}

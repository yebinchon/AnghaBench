
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int time_t ;
typedef int krb5_socket_t ;
struct TYPE_7__ {char* data; int length; } ;
typedef TYPE_1__ krb5_data ;


 int _krb5_get_int (char*,unsigned long*,int) ;
 int asprintf (char**,char*,char const*,char*) ;
 int base64_encode (char*,int,char**) ;
 int free (char*) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_data_zero (TYPE_1__*) ;
 int memmove (char*,char*,unsigned long) ;
 int net_write (int ,char*,int ) ;
 char* realloc (char*,int) ;
 int recv_loop (int ,int ,int ,int ,TYPE_1__*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static int
send_and_recv_http(krb5_socket_t fd,
     time_t tmout,
     const char *prefix,
     const krb5_data *req,
     krb5_data *rep)
{
    char *request = ((void*)0);
    char *str;
    int ret;
    int len = base64_encode(req->data, req->length, &str);

    if(len < 0)
 return -1;
    ret = asprintf(&request, "GET %s%s HTTP/1.0\r\n\r\n", prefix, str);
    free(str);
    if (ret < 0 || request == ((void*)0))
 return -1;
    ret = net_write (fd, request, strlen(request));
    free (request);
    if (ret < 0)
 return ret;
    ret = recv_loop(fd, tmout, 0, 0, rep);
    if(ret)
 return ret;
    {
 unsigned long rep_len;
 char *s, *p;

 s = realloc(rep->data, rep->length + 1);
 if (s == ((void*)0)) {
     krb5_data_free (rep);
     return -1;
 }
 s[rep->length] = 0;
 p = strstr(s, "\r\n\r\n");
 if(p == ((void*)0)) {
     krb5_data_zero(rep);
     free(s);
     return -1;
 }
 p += 4;
 rep->data = s;
 rep->length -= p - s;
 if(rep->length < 4) {
     krb5_data_zero(rep);
     free(s);
     return -1;
 }
 rep->length -= 4;
 _krb5_get_int(p, &rep_len, 4);
 if (rep_len != rep->length) {
     krb5_data_zero(rep);
     free(s);
     return -1;
 }
 memmove(rep->data, p + 4, rep->length);
    }
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gssapi_data {int client_name; } ;


 int gss_userok (int ,char*) ;

int
gssapi_userok(void *app_data, char *username)
{
    struct gssapi_data *data = app_data;


    return !gss_userok(data->client_name, username);
}

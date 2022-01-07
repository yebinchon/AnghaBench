
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_print_options {int dummy; } ;
typedef int hx509_request ;


 int _hx509_request_parse (int ,char*,int *) ;
 int _hx509_request_print (int ,int ,int ) ;
 int context ;
 int hx509_err (int ,int,int,char*,char*) ;
 int hx509_request_free (int *) ;
 int printf (char*) ;
 int stdout ;

int
request_print(struct request_print_options *opt, int argc, char **argv)
{
    int ret, i;

    printf("request print\n");

    for (i = 0; i < argc; i++) {
 hx509_request req;

 ret = _hx509_request_parse(context, argv[i], &req);
 if (ret)
     hx509_err(context, 1, ret, "parse_request: %s", argv[i]);

 ret = _hx509_request_print(context, req, stdout);
 hx509_request_free(&req);
 if (ret)
     hx509_err(context, 1, ret, "Failed to print file %s", argv[i]);
    }

    return 0;
}

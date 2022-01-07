
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_token {int dummy; } ;


 int json_print_token (struct json_token*,int,char*,size_t) ;

void json_print_tree(struct json_token *root, char *buf, size_t buflen)
{
 buf[0] = '\0';
 json_print_token(root, 1, buf, buflen);
}

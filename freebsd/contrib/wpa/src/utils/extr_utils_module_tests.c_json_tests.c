
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_token {int dummy; } ;
struct json_test_data {scalar_t__ tree; int json; } ;
typedef int buf ;


 unsigned int ARRAY_SIZE (struct json_test_data*) ;
 int MSG_INFO ;
 int json_free (struct json_token*) ;
 struct json_token* json_parse (int ,int ) ;
 int json_print_tree (struct json_token*,char*,int) ;
 struct json_test_data* json_test_cases ;
 scalar_t__ os_strcmp (char*,scalar_t__) ;
 int os_strlen (int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int json_tests(void)
{
 return 0;
}

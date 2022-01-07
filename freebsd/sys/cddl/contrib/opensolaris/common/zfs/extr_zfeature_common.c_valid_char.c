
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;



__attribute__((used)) static int
valid_char(char c, boolean_t after_colon)
{
 return ((c >= 'a' && c <= 'z') ||
     (c >= '0' && c <= '9') ||
     (after_colon && c == '_') ||
     (!after_colon && (c == '.' || c == '-')));
}

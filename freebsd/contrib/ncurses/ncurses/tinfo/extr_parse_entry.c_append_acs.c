
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_desc ;


 int append_acs0 (int *,int,char) ;
 int strlen (char*) ;

__attribute__((used)) static void
append_acs(string_desc * dst, int code, char *src)
{
    if (src != 0 && strlen(src) == 1) {
 append_acs0(dst, code, *src);
    }
}

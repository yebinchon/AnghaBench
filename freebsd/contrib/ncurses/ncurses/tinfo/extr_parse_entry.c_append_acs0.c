
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_desc ;


 int _nc_safe_strcat (int *,char*) ;

__attribute__((used)) static void
append_acs0(string_desc * dst, int code, int src)
{
    if (src != 0) {
 char temp[3];
 temp[0] = (char) code;
 temp[1] = (char) src;
 temp[2] = 0;
 _nc_safe_strcat(dst, temp);
    }
}

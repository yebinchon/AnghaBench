
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int int32_t ;


 int put_u32 (int *,int) ;
 int * xmalloc (int) ;

__attribute__((used)) static int
handle_to_string(int handle, u_char **stringp, int *hlenp)
{
 if (stringp == ((void*)0) || hlenp == ((void*)0))
  return -1;
 *stringp = xmalloc(sizeof(int32_t));
 put_u32(*stringp, handle);
 *hlenp = sizeof(int32_t);
 return 0;
}

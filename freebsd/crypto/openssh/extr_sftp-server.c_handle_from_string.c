
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int int32_t ;


 int HANDLE_DIR ;
 int HANDLE_FILE ;
 int get_u32 (int const*) ;
 scalar_t__ handle_is_ok (int,int ) ;

__attribute__((used)) static int
handle_from_string(const u_char *handle, u_int hlen)
{
 int val;

 if (hlen != sizeof(int32_t))
  return -1;
 val = get_u32(handle);
 if (handle_is_ok(val, HANDLE_FILE) ||
     handle_is_ok(val, HANDLE_DIR))
  return val;
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static int
extract_mesh_header_length(const u_char *p)
{
 return (p[0] &~ 3) ? 0 : 6*(1 + (p[0] & 3));
}

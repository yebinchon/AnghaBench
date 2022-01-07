
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int RNDUP (int) ;

__attribute__((used)) static u_int
fix_buf_size(u_int s)
{

 if (s < 100)
  s = 4000;
 return (RNDUP(s));
}

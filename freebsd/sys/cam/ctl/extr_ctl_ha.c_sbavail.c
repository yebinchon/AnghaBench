
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockbuf {int sb_cc; } ;



__attribute__((used)) static u_int
sbavail(struct sockbuf *sb)
{
 return (sb->sb_cc);
}

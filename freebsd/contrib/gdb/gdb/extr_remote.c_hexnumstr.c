
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGEST ;


 int hexnumlen (int ) ;
 int hexnumnstr (char*,int ,int) ;

__attribute__((used)) static int
hexnumstr (char *buf, ULONGEST num)
{
  int len = hexnumlen (num);
  return hexnumnstr (buf, num, len);
}

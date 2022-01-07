
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bracecnt ;
 int brackcnt ;
 int parencnt ;

void bclass(int c)
{
 switch (c) {
 case '{': bracecnt++; break;
 case '}': bracecnt--; break;
 case '[': brackcnt++; break;
 case ']': brackcnt--; break;
 case '(': parencnt++; break;
 case ')': parencnt--; break;
 }
}

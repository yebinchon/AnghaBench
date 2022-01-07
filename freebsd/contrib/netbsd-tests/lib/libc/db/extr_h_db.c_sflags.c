
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
sflags(int xflags)
{
 switch (xflags) {
 case 136: return "R_CURSOR";
 case 135: return "R_FIRST";
 case 134: return "R_IAFTER";
 case 133: return "R_IBEFORE";
 case 132: return "R_LAST";
 case 131: return "R_NEXT";
 case 130: return "R_NOOVERWRITE";
 case 129: return "R_PREV";
 case 128: return "R_SETCURSOR";
 }

 return "UNKNOWN!";
}

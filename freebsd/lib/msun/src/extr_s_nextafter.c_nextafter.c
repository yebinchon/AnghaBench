
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int INSERT_WORDS (double,int,int) ;

double
nextafter(double x, double y)
{
 volatile double t;
 int32_t hx,hy,ix,iy;
 u_int32_t lx,ly;

 EXTRACT_WORDS(hx,lx,x);
 EXTRACT_WORDS(hy,ly,y);
 ix = hx&0x7fffffff;
 iy = hy&0x7fffffff;

 if(((ix>=0x7ff00000)&&((ix-0x7ff00000)|lx)!=0) ||
    ((iy>=0x7ff00000)&&((iy-0x7ff00000)|ly)!=0))
    return x+y;
 if(x==y) return y;
 if((ix|lx)==0) {
     INSERT_WORDS(x,hy&0x80000000,1);
     t = x*x;
     if(t==x) return t; else return x;
 }
 if(hx>=0) {
     if(hx>hy||((hx==hy)&&(lx>ly))) {
  if(lx==0) hx -= 1;
  lx -= 1;
     } else {
  lx += 1;
  if(lx==0) hx += 1;
     }
 } else {
     if(hy>=0||hx>hy||((hx==hy)&&(lx>ly))){
  if(lx==0) hx -= 1;
  lx -= 1;
     } else {
  lx += 1;
  if(lx==0) hx += 1;
     }
 }
 hy = hx&0x7ff00000;
 if(hy>=0x7ff00000) return x+x;
 if(hy<0x00100000) {
     t = x*x;
     if(t!=x) {
         INSERT_WORDS(y,hx,lx);
  return y;
     }
 }
 INSERT_WORDS(x,hx,lx);
 return x;
}

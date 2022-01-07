
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;

float
nextafterf(float x, float y)
{
 volatile float t;
 int32_t hx,hy,ix,iy;

 GET_FLOAT_WORD(hx,x);
 GET_FLOAT_WORD(hy,y);
 ix = hx&0x7fffffff;
 iy = hy&0x7fffffff;

 if((ix>0x7f800000) ||
    (iy>0x7f800000))
    return x+y;
 if(x==y) return y;
 if(ix==0) {
     SET_FLOAT_WORD(x,(hy&0x80000000)|1);
     t = x*x;
     if(t==x) return t; else return x;
 }
 if(hx>=0) {
     if(hx>hy) {
  hx -= 1;
     } else {
  hx += 1;
     }
 } else {
     if(hy>=0||hx>hy){
  hx -= 1;
     } else {
  hx += 1;
     }
 }
 hy = hx&0x7f800000;
 if(hy>=0x7f800000) return x+x;
 if(hy<0x00800000) {
     t = x*x;
     if(t!=x) {
         SET_FLOAT_WORD(y,hx);
  return y;
     }
 }
 SET_FLOAT_WORD(x,hx);
 return x;
}

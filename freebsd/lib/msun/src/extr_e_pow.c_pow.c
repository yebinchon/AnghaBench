
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int GET_HIGH_WORD (int,double) ;
 double L1 ;
 double L2 ;
 double L3 ;
 double L4 ;
 double L5 ;
 double L6 ;
 double P1 ;
 double P2 ;
 double P3 ;
 double P4 ;
 double P5 ;
 int SET_HIGH_WORD (double,int) ;
 int SET_LOW_WORD (double,int ) ;
 double* bp ;
 double cp ;
 double cp_h ;
 double cp_l ;
 double* dp_h ;
 double* dp_l ;
 double fabs (double) ;
 double half ;
 double huge ;
 double ivln2 ;
 double ivln2_h ;
 double ivln2_l ;
 double lg2 ;
 double lg2_h ;
 double lg2_l ;
 double nan_mix (double,double) ;
 double one ;
 double ovt ;
 double qrtr ;
 double scalbn (double,int) ;
 double sqrt (double) ;
 double thrd ;
 double tiny ;
 double two ;
 double two53 ;
 double zero ;

double
__ieee754_pow(double x, double y)
{
 double z,ax,z_h,z_l,p_h,p_l;
 double y1,t1,t2,r,s,t,u,v,w;
 int32_t i,j,k,yisint,n;
 int32_t hx,hy,ix,iy;
 u_int32_t lx,ly;

 EXTRACT_WORDS(hx,lx,x);
 EXTRACT_WORDS(hy,ly,y);
 ix = hx&0x7fffffff; iy = hy&0x7fffffff;


 if((iy|ly)==0) return one;


 if (hx==0x3ff00000 && lx == 0) return one;


 if(ix > 0x7ff00000 || ((ix==0x7ff00000)&&(lx!=0)) ||
    iy > 0x7ff00000 || ((iy==0x7ff00000)&&(ly!=0)))
     return nan_mix(x, y);






 yisint = 0;
 if(hx<0) {
     if(iy>=0x43400000) yisint = 2;
     else if(iy>=0x3ff00000) {
  k = (iy>>20)-0x3ff;
  if(k>20) {
      j = ly>>(52-k);
      if(((u_int32_t)j<<(52-k))==ly) yisint = 2-(j&1);
  } else if(ly==0) {
      j = iy>>(20-k);
      if((j<<(20-k))==iy) yisint = 2-(j&1);
  }
     }
 }


 if(ly==0) {
     if (iy==0x7ff00000) {
         if(((ix-0x3ff00000)|lx)==0)
      return one;
         else if (ix >= 0x3ff00000)
      return (hy>=0)? y: zero;
         else
      return (hy<0)?-y: zero;
     }
     if(iy==0x3ff00000) {
  if(hy<0) return one/x; else return x;
     }
     if(hy==0x40000000) return x*x;
     if(hy==0x3fe00000) {
  if(hx>=0)
  return sqrt(x);
     }
 }

 ax = fabs(x);

 if(lx==0) {
     if(ix==0x7ff00000||ix==0||ix==0x3ff00000){
  z = ax;
  if(hy<0) z = one/z;
  if(hx<0) {
      if(((ix-0x3ff00000)|yisint)==0) {
   z = (z-z)/(z-z);
      } else if(yisint==1)
   z = -z;
  }
  return z;
     }
 }





 n = ((u_int32_t)hx>>31)-1;


 if((n|yisint)==0) return (x-x)/(x-x);

 s = one;
 if((n|(yisint-1))==0) s = -one;


 if(iy>0x41e00000) {
     if(iy>0x43f00000){
  if(ix<=0x3fefffff) return (hy<0)? huge*huge:tiny*tiny;
  if(ix>=0x3ff00000) return (hy>0)? huge*huge:tiny*tiny;
     }

     if(ix<0x3fefffff) return (hy<0)? s*huge*huge:s*tiny*tiny;
     if(ix>0x3ff00000) return (hy>0)? s*huge*huge:s*tiny*tiny;


     t = ax-one;
     w = (t*t)*(half-t*(thrd-t*qrtr));
     u = ivln2_h*t;
     v = t*ivln2_l-w*ivln2;
     t1 = u+v;
     SET_LOW_WORD(t1,0);
     t2 = v-(t1-u);
 } else {
     double ss,s2,s_h,s_l,t_h,t_l;
     n = 0;

     if(ix<0x00100000)
  {ax *= two53; n -= 53; GET_HIGH_WORD(ix,ax); }
     n += ((ix)>>20)-0x3ff;
     j = ix&0x000fffff;

     ix = j|0x3ff00000;
     if(j<=0x3988E) k=0;
     else if(j<0xBB67A) k=1;
     else {k=0;n+=1;ix -= 0x00100000;}
     SET_HIGH_WORD(ax,ix);


     u = ax-bp[k];
     v = one/(ax+bp[k]);
     ss = u*v;
     s_h = ss;
     SET_LOW_WORD(s_h,0);

     t_h = zero;
     SET_HIGH_WORD(t_h,((ix>>1)|0x20000000)+0x00080000+(k<<18));
     t_l = ax - (t_h-bp[k]);
     s_l = v*((u-s_h*t_h)-s_h*t_l);

     s2 = ss*ss;
     r = s2*s2*(L1+s2*(L2+s2*(L3+s2*(L4+s2*(L5+s2*L6)))));
     r += s_l*(s_h+ss);
     s2 = s_h*s_h;
     t_h = 3+s2+r;
     SET_LOW_WORD(t_h,0);
     t_l = r-((t_h-3)-s2);

     u = s_h*t_h;
     v = s_l*t_h+t_l*ss;

     p_h = u+v;
     SET_LOW_WORD(p_h,0);
     p_l = v-(p_h-u);
     z_h = cp_h*p_h;
     z_l = cp_l*p_h+p_l*cp+dp_l[k];

     t = n;
     t1 = (((z_h+z_l)+dp_h[k])+t);
     SET_LOW_WORD(t1,0);
     t2 = z_l-(((t1-t)-dp_h[k])-z_h);
 }


 y1 = y;
 SET_LOW_WORD(y1,0);
 p_l = (y-y1)*t1+y*t2;
 p_h = y1*t1;
 z = p_l+p_h;
 EXTRACT_WORDS(j,i,z);
 if (j>=0x40900000) {
     if(((j-0x40900000)|i)!=0)
  return s*huge*huge;
     else {
  if(p_l+ovt>z-p_h) return s*huge*huge;
     }
 } else if((j&0x7fffffff)>=0x4090cc00 ) {
     if(((j-0xc090cc00)|i)!=0)
  return s*tiny*tiny;
     else {
  if(p_l<=z-p_h) return s*tiny*tiny;
     }
 }



 i = j&0x7fffffff;
 k = (i>>20)-0x3ff;
 n = 0;
 if(i>0x3fe00000) {
     n = j+(0x00100000>>(k+1));
     k = ((n&0x7fffffff)>>20)-0x3ff;
     t = zero;
     SET_HIGH_WORD(t,n&~(0x000fffff>>k));
     n = ((n&0x000fffff)|0x00100000)>>(20-k);
     if(j<0) n = -n;
     p_h -= t;
 }
 t = p_l+p_h;
 SET_LOW_WORD(t,0);
 u = t*lg2_h;
 v = (p_l-(t-p_h))*lg2+t*lg2_l;
 z = u+v;
 w = v-(z-u);
 t = z*z;
 t1 = z - t*(P1+t*(P2+t*(P3+t*(P4+t*P5))));
 r = (z*t1)/(t1-two)-(w+z*w);
 z = one-(r-z);
 GET_HIGH_WORD(j,z);
 j += (n<<20);
 if((j>>20)<=0) z = scalbn(z,n);
 else SET_HIGH_WORD(z,j);
 return s*z;
}

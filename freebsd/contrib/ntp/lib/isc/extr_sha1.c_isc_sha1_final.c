
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* count; int* state; } ;
typedef TYPE_1__ isc_sha1_t ;


 int INSIST (int) ;
 unsigned char final_0 ;
 unsigned char final_200 ;
 int isc_sha1_update (TYPE_1__*,unsigned char*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void
isc_sha1_final(isc_sha1_t *context, unsigned char *digest) {
 unsigned int i;
 unsigned char finalcount[8];

 INSIST(digest != 0);
 INSIST(context != 0);

 for (i = 0; i < 8; i++) {

  finalcount[i] = (unsigned char)
   ((context->count[(i >= 4 ? 0 : 1)]
     >> ((3 - (i & 3)) * 8)) & 255);
 }

 isc_sha1_update(context, &final_200, 1);
 while ((context->count[0] & 504) != 448)
  isc_sha1_update(context, &final_0, 1);

 isc_sha1_update(context, finalcount, 8);

 if (digest) {
  for (i = 0; i < 20; i++)
   digest[i] = (unsigned char)
    ((context->state[i >> 2]
      >> ((3 - (i & 3)) * 8)) & 255);
 }

 memset(context, 0, sizeof(isc_sha1_t));
}

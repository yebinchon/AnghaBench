
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
typedef int tempa ;
struct TYPE_4__ {unsigned char Minor; unsigned char Major; } ;
struct TYPE_5__ {char* Opaque_Handle; TYPE_1__ Fsid_dev; void* fsid_code; } ;
typedef TYPE_2__ my_fsid ;
 int fprintf (int ,char*,...) ;
 scalar_t__ is_UCX (unsigned char const*,int) ;
 void* make_uint16 (unsigned char const,unsigned char const) ;
 int make_uint24 (unsigned char const,unsigned char const,unsigned char const) ;
 void* make_uint32 (unsigned char const,unsigned char const,unsigned char const,unsigned char const) ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,unsigned char const) ;
 int stderr ;

void
Parse_fh(register const unsigned char *fh, u_int len, my_fsid *fsidp,
  uint32_t *inop,
  const char **osnamep,
  const char **fsnamep,
  int ourself)
{
 register const unsigned char *fhp = fh;
 uint32_t temp;
 int fhtype = 129;
 u_int i;





 if (len < 16/4)
  fhtype = 129;
 else {
  if (ourself) {
  }



  else if ((fhp[0] == 0) && (fhp[1] == 0)) {


      if ((fhp[2] == 0) && (fhp[3] == 0)) {


   fhtype = 139;
      }
      else {




   if ((fhp[4] != 0) && (fhp[5] == 0) &&
    (fhp[8] == 12) && (fhp[9] == 0)) {

       fhtype = 137;
   }
   else {


       if ((fhp[4] == 0) && (fhp[5] == 8) && (fhp[6] == 0) &&
           (fhp[7] == 0)) {

    fhtype = 135;
       }
       else {

    fhtype = 132;
       }
   }
      }
  }
  else {





      if ((fhp[2] == 0) && (fhp[3] == 0)) {






   if ((fhp[6] == 0) && (fhp[7] == 0)) {
       fhtype = 138;
   }

   else if ((len >= 24/4) && (fhp[21] == 0) && (fhp[23] == 0)) {
       fhtype = 130;
   }
   else {


       if (fhp[9] == 10)
    fhtype = 131;

   }
      }
      else {




   if ((fhp[8] == 12) && (fhp[9] == 0)) {
       fhtype = 137;
   }
   else if ((fhp[8] == 0) && (fhp[9] == 10)) {

       if ((fhp[7] == 0) && (fhp[6] == 0) &&
    (fhp[5] == 0) && (fhp[4] == 0)) {

    fhtype = 136;
       }
       else if (fhp[7] == 2) {

    fhtype = 131;
       }
       else {






    fhtype = 131;
       }
          }
   else {
       if (is_UCX(fhp, len)) {
    fhtype = 128;
       }
       else {
    fhtype = 129;
       }
   }
      }
  }
 }



 switch (fhtype) {
 case 139:
     fsidp->Fsid_dev.Minor = fhp[7];
     fsidp->Fsid_dev.Major = fhp[6];
     fsidp->fsid_code = 0;

     *inop = make_uint32(fhp[12], fhp[13], fhp[14], fhp[15]);

     if (osnamep)
  *osnamep = "Auspex";
     break;

 case 138:
     fsidp->Fsid_dev.Minor = fhp[0];
     fsidp->Fsid_dev.Major = fhp[1];
     fsidp->fsid_code = 0;

     *inop = make_uint32(fhp[15], fhp[14], fhp[13], fhp[12]);

     if (osnamep)
  *osnamep = "BSD 4.4";
     break;

 case 137:
     fsidp->fsid_code = make_uint32(fhp[7], fhp[6], fhp[5], fhp[4]);


     temp = make_uint32(fhp[3], fhp[2], fhp[1], fhp[0]);
     fsidp->Fsid_dev.Minor = temp & 0xFFFFF;
     fsidp->Fsid_dev.Major = (temp>>20) & 0xFFF;

     *inop = make_uint32(fhp[15], fhp[14], fhp[13], fhp[12]);
     if (osnamep)
  *osnamep = "OSF";
     break;

 case 135:
     fsidp->Fsid_dev.Minor = fhp[3];
     fsidp->Fsid_dev.Major = fhp[2];
     fsidp->fsid_code = 0;

     *inop = make_uint32(fhp[8], fhp[9], fhp[10], fhp[11]);

     if (osnamep)
  *osnamep = "IRIX4";
     break;

 case 134:
     fsidp->Fsid_dev.Minor = make_uint16(fhp[2], fhp[3]);
     fsidp->Fsid_dev.Major = make_uint16(fhp[0], fhp[1]);
     fsidp->fsid_code = make_uint32(fhp[4], fhp[5], fhp[6], fhp[7]);

     *inop = make_uint32(fhp[12], fhp[13], fhp[14], fhp[15]);

     if (osnamep)
  *osnamep = "IRIX5";
     break;
 case 132:
     fsidp->Fsid_dev.Minor = fhp[3];
     fsidp->Fsid_dev.Major = fhp[2];
     fsidp->fsid_code = make_uint32(fhp[4], fhp[5], fhp[6], fhp[7]);

     *inop = make_uint32(fhp[12], fhp[13], fhp[14], fhp[15]);

     if (osnamep)
  *osnamep = "SUNOS4";
     break;

 case 131:
     temp = make_uint16(fhp[0], fhp[1]);
     fsidp->Fsid_dev.Major = (temp>>2) & 0x3FFF;
     temp = make_uint24(fhp[1], fhp[2], fhp[3]);
     fsidp->Fsid_dev.Minor = temp & 0x3FFFF;
     fsidp->fsid_code = make_uint32(fhp[4], fhp[5], fhp[6], fhp[7]);

     *inop = make_uint32(fhp[12], fhp[13], fhp[14], fhp[15]);

     if (osnamep)
  *osnamep = "SUNOS5";
     break;

 case 130:
     fsidp->fsid_code = 0;
     fsidp->Fsid_dev.Minor = fhp[0];
     fsidp->Fsid_dev.Major = fhp[1];

     temp = make_uint32(fhp[7], fhp[6], fhp[5], fhp[4]);
     *inop = temp;
     if (osnamep)
  *osnamep = "Ultrix";
     break;

 case 128:

     if (sizeof(*fsidp) >= 14) {
  if (sizeof(*fsidp) > 14)
      memset((char *)fsidp, 0, sizeof(*fsidp));

  memcpy((char *)fsidp, (const char *)fh, 14);
     }
     else {
  uint32_t tempa[4];

  memset((char *)tempa, 0, sizeof(tempa));
  memcpy((char *)tempa, (const char *)fh, 14);
  fsidp->Fsid_dev.Minor = tempa[0] + (tempa[1]<<1);
  fsidp->Fsid_dev.Major = tempa[2] + (tempa[3]<<1);
  fsidp->fsid_code = 0;
     }


     *inop = make_uint32(fhp[26], fhp[27], fhp[23], fhp[22]);


     if (fsnamep)
  *fsnamep = (const char *)&(fhp[1]);

     if (osnamep)
  *osnamep = "VMS";
     break;

 case 140:
     fsidp->Fsid_dev.Minor = make_uint16(fhp[2], fhp[3]);
     fsidp->Fsid_dev.Major = make_uint16(fhp[0], fhp[1]);
     fsidp->fsid_code = make_uint32(fhp[4], fhp[5], fhp[6], fhp[7]);

     *inop = make_uint32(fhp[12], fhp[13], fhp[14], fhp[15]);

     if (osnamep)
  *osnamep = "AIX32";
     break;

 case 136:
     fsidp->Fsid_dev.Major = fhp[0];
     temp = make_uint24(fhp[1], fhp[2], fhp[3]);
     fsidp->Fsid_dev.Minor = temp;
     fsidp->fsid_code = make_uint32(fhp[4], fhp[5], fhp[6], fhp[7]);

     *inop = make_uint32(fhp[12], fhp[13], fhp[14], fhp[15]);

     if (osnamep)
  *osnamep = "HPUX9";
     break;

 case 129:







     for (i = 0; i < len*4 && i*2 < sizeof(fsidp->Opaque_Handle) - 1; i++)
      (void)snprintf(&(fsidp->Opaque_Handle[i*2]), 3, "%.2X", fhp[i]);
     fsidp->Opaque_Handle[i*2] = '\0';


     fsidp->fsid_code = 0;
     fsidp->Fsid_dev.Minor = 257;
     fsidp->Fsid_dev.Major = 257;
     *inop = 1;


     if (fsnamep)
  *fsnamep = "Unknown";

     if (osnamep)
  *osnamep = "Unknown";
     break;

 }
}

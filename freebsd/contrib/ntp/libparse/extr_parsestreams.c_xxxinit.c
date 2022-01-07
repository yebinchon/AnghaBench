
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vdstat {int dummy; } ;
struct vdlinkage {int dummy; } ;
struct vddrv {struct vdlinkage* vdd_vdtab; } ;
struct streamtab {TYPE_2__* st_rdinit; } ;
struct fmodsw {char* f_name; struct streamtab* f_str; } ;
typedef int addr_t ;
struct TYPE_6__ {char* Drv_name; } ;
struct TYPE_5__ {TYPE_1__* qi_minfo; } ;
struct TYPE_4__ {char* mi_idname; } ;


 int EBUSY ;
 int EIO ;
 int ENOSPC ;
 int ENXIO ;
 size_t FMNAMESZ ;
 int Strlen (char*) ;
 int Strncmp (char*,char*,size_t) ;
 int Strncpy (char*,char*,int) ;



 int parsebusy ;
 struct streamtab parseinfo ;
 TYPE_3__ parsesync_vd ;
 int printf (char*,char*,...) ;
 char* rcsid ;

int
xxxinit(
 unsigned int fc,
 struct vddrv *vdp,
 addr_t vdin,
 struct vdstat *vds
 )
{
 extern struct fmodsw fmodsw[];
 extern int fmodcnt;

 struct fmodsw *fm = fmodsw;
 struct fmodsw *fmend = &fmodsw[fmodcnt];
 struct fmodsw *ifm = (struct fmodsw *)0;
 char *mname = parseinfo.st_rdinit->qi_minfo->mi_idname;

 switch (fc)
 {
     case 130:
  vdp->vdd_vdtab = (struct vdlinkage *)&parsesync_vd;




  while (fm <= fmend)
  {
   if (!Strncmp(fm->f_name, mname, FMNAMESZ))
   {
    printf("vddrinit[%s]: STREAMS module already loaded.\n", mname);
    return(EBUSY);
   }
   else
       if ((ifm == (struct fmodsw *)0) &&
    (fm->f_name[0] == '\0') &&
    (fm->f_str == (struct streamtab *)0))
       {



        ifm = fm;
        break;
       }
   fm++;
  }

  if (ifm == (struct fmodsw *)0)
  {
   printf("vddrinit[%s]: no slot free for STREAMS module\n", mname);
   return (ENOSPC);
  }
  else
  {
   static char revision[] = "4.7";
   char *s, *S, *t;

   s = rcsid;

   Strncpy(ifm->f_name, mname, FMNAMESZ);
   ifm->f_name[FMNAMESZ] = '\0';
   ifm->f_str = &parseinfo;





   s = revision;
   if (*s == '$')
   {




    while (*s && (*s != ' '))
    {
     s++;
    }
    if (*s == ' ') s++;
   }

   t = parsesync_vd.Drv_name;
   while (*t && (*t != ' '))
   {
    t++;
   }
   if (*t == ' ') t++;

   S = s;
   while (*S && (((*S >= '0') && (*S <= '9')) || (*S == '.')))
   {
    S++;
   }

   if (*s && *t && (S > s))
   {
    if (Strlen(t) >= (S - s))
    {
     (void) Strncpy(t, s, S - s);
    }
   }
   return (0);
  }
  break;

     case 128:
  if (parsebusy > 0)
  {
   printf("vddrinit[%s]: STREAMS module has still %d instances active.\n", mname, parsebusy);
   return (EBUSY);
  }
  else
  {
   while (fm <= fmend)
   {
    if (!Strncmp(fm->f_name, mname, FMNAMESZ))
    {



     fm->f_name[0] = '\0';
     fm->f_str = (struct streamtab *)0;
     fm++;

     break;
    }
    fm++;
   }
   if (fm > fmend)
   {
    printf("vddrinit[%s]: cannot find entry for STREAMS module\n", mname);
    return (ENXIO);
   }
   else
       return (0);
  }


     case 129:
  return (0);

     default:
  return (EIO);

 }
 return EIO;
}

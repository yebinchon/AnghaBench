
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tm {int tm_min; int tm_hour; int tm_yday; int tm_year; int tm_sec; } ;
struct timeval {int tv_usec; int tv_sec; } ;
typedef int device ;
typedef int code ;
struct TYPE_7__ {int port; int gain; int sample_rate; int channels; int precision; int encoding; } ;
struct TYPE_8__ {TYPE_1__ play; } ;
typedef TYPE_2__ audio_info_t ;
struct TYPE_11__ {int sw; int arg; } ;
struct TYPE_10__ {int sw; int arg; } ;
struct TYPE_9__ {int sw; int arg; } ;


 int AUDIO_ENCODING_ULAW ;
 int AUDIO_GETINFO ;
 int AUDIO_SETINFO ;
 int AUDIO_SPEAKER ;


 int DATA0 ;
 int DATA1 ;

 int DEVICE ;



 int HIGH ;


 int LOW ;
 int M2 ;
 int M5 ;
 int M8 ;

 int OFF ;
 int O_WRONLY ;
 int SECOND ;

 int abs (int) ;
 int delay (int) ;
 int dst ;
 int dut1 ;
 int encode ;
 int errno ;
 int exit (int) ;
 scalar_t__ fd ;
 int getopt (int,char**,char*) ;
 int gettimeofday (struct timeval*,int *) ;
 struct tm* gmtime (int *) ;
 int ioctl (scalar_t__,int ,TYPE_2__*) ;
 scalar_t__ leap ;
 int level ;
 int memset (char*,int ,int) ;
 scalar_t__ open (char*,int ) ;
 int optarg ;
 int peep (int,int,int ) ;
 int port ;
 int printf (char*,...) ;
 TYPE_5__* progx ;
 TYPE_4__* progy ;
 TYPE_3__* progz ;
 int sec (int) ;
 int second ;
 int snprintf (char*,int,char*,int,int,int,int,int,...) ;
 int sscanf (int ,char*,int*,...) ;
 char* strerror (int ) ;
 int strlcpy (char*,int ,int) ;
 int tone ;
 int utc ;

int
main(
 int argc,
 char **argv
 )
{
 struct timeval tv;
 audio_info_t info;
 struct tm *tm = ((void*)0);
 char device[50];
 char code[100];
 int rval, temp, arg, sw, ptr;
 int minute, hour, day, year;
 int i;




 strlcpy(device, DEVICE, sizeof(device));
 year = 0;
 while ((temp = getopt(argc, argv, "a:dhilsu:v:y:")) != -1) {
  switch (temp) {

  case 'a':
   strlcpy(device, optarg, sizeof(device));
   break;

  case 'd':
   dst++;
   break;

  case 'h':
   tone = 1200;
   break;

  case 'i':
   encode = 131;
   break;

  case 'l':
   leap++;
   break;

  case 's':
   port |= AUDIO_SPEAKER;
   break;

  case 'u':
   sscanf(optarg, "%d", &dut1);
   if (dut1 < 0)
    dut1 = abs(dut1);
   else
    dut1 |= 0x8;
   break;

  case 'v':
   sscanf(optarg, "%d", &level);
   break;

  case 'y':
   sscanf(optarg, "%2d%3d%2d%2d", &year, &day,
       &hour, &minute);
   utc++;
   break;

  defult:
   printf("invalid option %c\n", temp);
   break;
  }
 }




 fd = open("/dev/audio", O_WRONLY);
 if (fd <= 0) {
  printf("audio open %s\n", strerror(errno));
  exit(1);
 }
 rval = ioctl(fd, AUDIO_GETINFO, &info);
 if (rval < 0) {
  printf("audio control %s\n", strerror(errno));
  exit(0);
 }
 info.play.port = port;
 info.play.gain = level;
 info.play.sample_rate = SECOND;
 info.play.channels = 1;
 info.play.precision = 8;
 info.play.encoding = AUDIO_ENCODING_ULAW;
 printf("port %d gain %d rate %d chan %d prec %d encode %d\n",
     info.play.port, info.play.gain, info.play.sample_rate,
     info.play.channels, info.play.precision,
     info.play.encoding);
 ioctl(fd, AUDIO_SETINFO, &info);





 if (!utc) {
  gettimeofday(&tv, ((void*)0));
  tm = gmtime(&tv.tv_sec);
  minute = tm->tm_min;
  hour = tm->tm_hour;
  day = tm->tm_yday + 1;
  year = tm->tm_year % 100;
  second = tm->tm_sec;






  delay(SECOND - tv.tv_usec * 8 / 1000);
 }
 memset(code, 0, sizeof(code));
 switch (encode) {





 case 128:
  printf("year %d day %d time %02d:%02d:%02d tone %d\n",
      year, day, hour, minute, second, tone);
  snprintf(code, sizeof(code), "%01d%03d%02d%02d%01d",
      year / 10, day, hour, minute, year % 10);
  printf("%s\n", code);
  ptr = 8;
  for (i = 0; i <= second; i++) {
   if (progx[i].sw == 135)
    ptr--;
  }
  break;





 case 131:
  printf("sbs %x year %d day %d time %02d:%02d:%02d\n",
      0, year, day, hour, minute, second);
  break;
 }





 while(1) {







  second = (second + 1) % 60;
  if (second == 0) {
   minute++;
   if (minute >= 60) {
    minute = 0;
    hour++;
   }
   if (hour >= 24) {
    hour = 0;
    day++;
   }




   if (day >= (year & 0x3 ? 366 : 367)) {
    if (leap) {
     sec(DATA0);
     printf("\nleap!");
     leap = 0;
    }
    day = 1;
    year++;
   }
   if (encode == 128) {
    snprintf(code, sizeof(code),
        "%01d%03d%02d%02d%01d", year / 10,
        day, hour, minute, year % 10);
    printf("\n%s\n", code);
    ptr = 8;
   }
  }
  if (encode == 131) {
   snprintf(code, sizeof(code),
       "%04x%04d%06d%02d%02d%02d", 0, year, day,
       hour, minute, second);
   printf("%s\n", code);
   ptr = 19;
  }




  switch(encode) {






  case 131:
   for (i = 0; i < 100; i++) {
    if (i < 10) {
     sw = progz[i].sw;
     arg = progz[i].arg;
    } else {
     sw = progy[i % 10].sw;
     arg = progy[i % 10].arg;
    }
    switch(sw) {

    case 137:
     if (code[ptr] & arg) {
      peep(M5, 1000, HIGH);
      peep(M5, 1000, LOW);
      printf("1");
     } else {
      peep(M2, 1000, HIGH);
      peep(M8, 1000, LOW);
      printf("0");
     }
     break;

    case 135:
     ptr--;
     printf(" ");
     peep(arg, 1000, HIGH);
     peep(10 - arg, 1000, LOW);
     break;

    case 129:
     peep(arg, 1000, HIGH);
     peep(10 - arg, 1000, LOW);
     printf("M ");
     break;
    }
    if (ptr < 0)
     break;
   }
   printf("\n");
   break;





  case 128:
   sw = progx[second].sw;
   arg = progx[second].arg;
   switch(sw) {

   case 136:
    sec(arg);
    break;

   case 137:
    if (code[ptr] & arg) {
     sec(DATA1);
     printf("1");
    } else {
     sec(DATA0);
     printf("0");
    }
    break;

   case 130:
    if (leap) {
     sec(DATA1);
     printf("L ");
    } else {
     sec(DATA0);
     printf("  ");
    }
    break;

   case 135:
    ptr--;
    sec(arg);
    printf(" ");
    break;

   case 129:
    peep(arg, tone, HIGH);
    peep(1000 - arg, tone, OFF);
    break;

   case 132:
    if (dut1 & arg)
     sec(DATA1);
    else
     sec(DATA0);
    break;

   case 134:
    ptr--;
    if (dst)
     sec(DATA1);
    else
     sec(DATA0);
    printf(" ");
    break;

   case 133:
    if (dst)
     sec(DATA1);
    else
     sec(DATA0);
    break;
   }
  }
 }
}

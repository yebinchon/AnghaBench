
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulongval ;
typedef int uintval ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u8val ;
typedef int u64val ;
typedef int u32val ;
typedef int u16val ;
typedef int longval ;
typedef int intval ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int i8val ;
typedef int i64val ;
typedef int i32val ;
typedef int i16val ;


 int CTLTYPE ;
 int abort () ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int memcpy (char*,void const*,size_t) ;
 void* realloc (void*,size_t) ;
 int strIKtoi (char const*,char**,char const*) ;
 int strncmp (char const*,char*,int) ;
 int strtoimax (char const*,char**,int ) ;
 long strtol (char const*,char**,int ) ;
 unsigned long strtoul (char const*,char**,int ) ;
 int strtoumax (char const*,char**,int ) ;

__attribute__((used)) static bool
parse_numeric(const char *newvalstr, const char *fmt, u_int kind,
    void **newbufp, size_t *newsizep)
{
 void *newbuf;
 const void *newval;
 int8_t i8val;
 uint8_t u8val;
 int16_t i16val;
 uint16_t u16val;
 int32_t i32val;
 uint32_t u32val;
 int intval;
 unsigned int uintval;
 long longval;
 unsigned long ulongval;
 int64_t i64val;
 uint64_t u64val;
 size_t valsize;
 char *endptr = ((void*)0);

 errno = 0;

 switch (kind & CTLTYPE) {
 case 139:
  if (strncmp(fmt, "IK", 2) == 0)
   intval = strIKtoi(newvalstr, &endptr, fmt);
  else
   intval = (int)strtol(newvalstr, &endptr, 0);
  newval = &intval;
  valsize = sizeof(intval);
  break;
 case 129:
  uintval = (int) strtoul(newvalstr, &endptr, 0);
  newval = &uintval;
  valsize = sizeof(uintval);
  break;
 case 138:
  longval = strtol(newvalstr, &endptr, 0);
  newval = &longval;
  valsize = sizeof(longval);
  break;
 case 128:
  ulongval = strtoul(newvalstr, &endptr, 0);
  newval = &ulongval;
  valsize = sizeof(ulongval);
  break;
 case 134:
  i8val = (int8_t)strtol(newvalstr, &endptr, 0);
  newval = &i8val;
  valsize = sizeof(i8val);
  break;
 case 137:
  i16val = (int16_t)strtol(newvalstr, &endptr, 0);
  newval = &i16val;
  valsize = sizeof(i16val);
  break;
 case 136:
  i32val = (int32_t)strtol(newvalstr, &endptr, 0);
  newval = &i32val;
  valsize = sizeof(i32val);
  break;
 case 135:
  i64val = strtoimax(newvalstr, &endptr, 0);
  newval = &i64val;
  valsize = sizeof(i64val);
  break;
 case 130:
  u8val = (uint8_t)strtoul(newvalstr, &endptr, 0);
  newval = &u8val;
  valsize = sizeof(u8val);
  break;
 case 133:
  u16val = (uint16_t)strtoul(newvalstr, &endptr, 0);
  newval = &u16val;
  valsize = sizeof(u16val);
  break;
 case 132:
  u32val = (uint32_t)strtoul(newvalstr, &endptr, 0);
  newval = &u32val;
  valsize = sizeof(u32val);
  break;
 case 131:
  u64val = strtoumax(newvalstr, &endptr, 0);
  newval = &u64val;
  valsize = sizeof(u64val);
  break;
 default:

  abort();
 }

 if (errno != 0 || endptr == newvalstr ||
     (endptr != ((void*)0) && *endptr != '\0'))
  return (0);

 newbuf = realloc(*newbufp, *newsizep + valsize);
 if (newbuf == ((void*)0))
  err(1, "out of memory");
 memcpy((char *)newbuf + *newsizep, newval, valsize);
 *newbufp = newbuf;
 *newsizep += valsize;

 return (1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int tm ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_TIME ;
 int RET_ERR (int,int) ;
 int memset (struct tm*,int ,int) ;
 scalar_t__ sldns_mktime_from_utc (struct tm*) ;
 int sldns_write_uint32 (int *,int ) ;
 int sscanf (char const*,char*,int*,int*,int*,int*,int*,int*) ;
 int strlen (char const*) ;
 scalar_t__ strtol (char*,char**,int) ;

int sldns_str2wire_time_buf(const char* str, uint8_t* rd, size_t* len)
{

 struct tm tm;
 if(*len < 4)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;


 memset(&tm, 0, sizeof(tm));
 if (strlen(str) == 14 && sscanf(str, "%4d%2d%2d%2d%2d%2d",
  &tm.tm_year, &tm.tm_mon, &tm.tm_mday, &tm.tm_hour,
  &tm.tm_min, &tm.tm_sec) == 6) {
     tm.tm_year -= 1900;
     tm.tm_mon--;

  if (tm.tm_year < 70)
   return LDNS_WIREPARSE_ERR_SYNTAX_TIME;
  if (tm.tm_mon < 0 || tm.tm_mon > 11)
   return LDNS_WIREPARSE_ERR_SYNTAX_TIME;
  if (tm.tm_mday < 1 || tm.tm_mday > 31)
   return LDNS_WIREPARSE_ERR_SYNTAX_TIME;
  if (tm.tm_hour < 0 || tm.tm_hour > 23)
   return LDNS_WIREPARSE_ERR_SYNTAX_TIME;
  if (tm.tm_min < 0 || tm.tm_min > 59)
   return LDNS_WIREPARSE_ERR_SYNTAX_TIME;
  if (tm.tm_sec < 0 || tm.tm_sec > 59)
   return LDNS_WIREPARSE_ERR_SYNTAX_TIME;

  sldns_write_uint32(rd, (uint32_t)sldns_mktime_from_utc(&tm));
 } else {

  char *end;
  uint32_t l = (uint32_t)strtol((char*)str, &end, 10);
  if(*end != 0)
   return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_TIME,
    end-(char*)str);
  sldns_write_uint32(rd, l);
 }
 *len = 4;
 return LDNS_WIREPARSE_ERR_OK;
}

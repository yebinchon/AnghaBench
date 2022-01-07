
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_11__ {scalar_t__ type; } ;
typedef TYPE_2__ isc_logchannel_t ;
struct TYPE_10__ {size_t length; char* name; } ;
struct TYPE_12__ {TYPE_1__ entry; } ;
typedef TYPE_3__ isc_dir_t ;


 int DE_CONST (char*,char*) ;
 char* FILE_NAME (TYPE_2__*) ;
 scalar_t__ ISC_LOG_TOFILE ;
 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int isc_dir_close (TYPE_3__*) ;
 int isc_dir_init (TYPE_3__*) ;
 scalar_t__ isc_dir_open (TYPE_3__*,char const*) ;
 scalar_t__ isc_dir_read (TYPE_3__*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 char* strrchr (char*,char) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static isc_result_t
greatest_version(isc_logchannel_t *channel, int *greatestp) {

 char *basenam, *digit_end;
 const char *dirname;
 int version, greatest = -1;
 size_t basenamelen;
 isc_dir_t dir;
 isc_result_t result;
 char sep = '/';




 REQUIRE(channel->type == ISC_LOG_TOFILE);





 basenam = strrchr(FILE_NAME(channel), sep);
 if (basenam != ((void*)0)) {
  *basenam++ = '\0';
  dirname = FILE_NAME(channel);
 } else {
  DE_CONST(FILE_NAME(channel), basenam);
  dirname = ".";
 }
 basenamelen = strlen(basenam);

 isc_dir_init(&dir);
 result = isc_dir_open(&dir, dirname);




 if (basenam != FILE_NAME(channel))
  *(basenam - 1) = sep;




 if (result != ISC_R_SUCCESS)
  return (result);

 while (isc_dir_read(&dir) == ISC_R_SUCCESS) {
  if (dir.entry.length > basenamelen &&
      strncmp(dir.entry.name, basenam, basenamelen) == 0 &&
      dir.entry.name[basenamelen] == '.') {

   version = strtol(&dir.entry.name[basenamelen + 1],
      &digit_end, 10);
   if (*digit_end == '\0' && version > greatest)
    greatest = version;
  }
 }
 isc_dir_close(&dir);

 *greatestp = ++greatest;

 return (ISC_R_SUCCESS);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* str; int boolean; } ;
struct TYPE_4__ {TYPE_1__ value; } ;


 char* DIALOGRC ;
 int ENOENT ;
 int ENV_DIALOGRC ;
 int ENV_HOME ;
 int FIGPAR_BREAK_ON_EQUALS ;
 int PATH_MAX ;
 int STR_BUFSIZE ;
 int dialogrc_config ;
 TYPE_2__* dialogrc_config_option (char*) ;
 int errno ;
 char* gauge_color ;
 char* getenv (int ) ;
 int parse_config (int ,char*,int *,int ) ;
 int snprintf (char*,int,char*,char*) ;
 size_t strlen (char*) ;
 int use_colors ;
 int use_shadow ;

int
parse_dialogrc(void)
{
 char *cp;
 int res;
 size_t len;
 char path[PATH_MAX];


 if ((cp = getenv(ENV_DIALOGRC)) != ((void*)0) && *cp != '\0')
  snprintf(path, PATH_MAX, "%s", cp);
 else if ((cp = getenv(ENV_HOME)) != ((void*)0)) {

  snprintf(path, PATH_MAX, "%s", cp);
  len = strlen(path);
  cp = path + len;
  if (len > 0 && len < (PATH_MAX - 1) && *(cp - 1) != '/') {
   *cp++ = '/';
   *cp = '\0';
   len++;
  }


  if (len < (PATH_MAX - 1))
   snprintf(cp, PATH_MAX - len, "%s", DIALOGRC);
 } else {

  errno = ENOENT;
  return (-1);
 }


 res = parse_config(dialogrc_config,
  path, ((void*)0), FIGPAR_BREAK_ON_EQUALS);


 use_shadow = dialogrc_config_option("use_shadow")->value.boolean;
 use_colors = dialogrc_config_option("use_colors")->value.boolean;
 snprintf(gauge_color, STR_BUFSIZE, "%s",
     dialogrc_config_option("gauge_color")->value.str);

 return (res);
}

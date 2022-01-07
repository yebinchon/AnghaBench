
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int SENTINEL_KEYTAG_LEN ;
 char* calloc (int,int) ;
 int free (char*) ;
 int memmove (char*,char*,int) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int
sentinel_get_keytag(char* start, uint16_t* keytag) {
 char* keytag_str;
 char* e = ((void*)0);
 keytag_str = calloc(1, SENTINEL_KEYTAG_LEN + 1 );
 if(!keytag_str)
  return 0;
 memmove(keytag_str, start, SENTINEL_KEYTAG_LEN);
 keytag_str[SENTINEL_KEYTAG_LEN] = '\0';
 *keytag = (uint16_t)strtol(keytag_str, &e, 10);
 if(!e || *e != '\0') {
  free(keytag_str);
  return 0;
 }
 free(keytag_str);
 return 1;
}

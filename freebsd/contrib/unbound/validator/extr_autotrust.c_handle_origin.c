
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int free (int *) ;
 scalar_t__ isspace (unsigned char) ;
 int log_warn (char*) ;
 int * sldns_str2wire_dname (char*,size_t*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
handle_origin(char* line, uint8_t** origin, size_t* origin_len)
{
 size_t len = 0;
 while(isspace((unsigned char)*line))
  line++;
 if(strncmp(line, "$ORIGIN", 7) != 0)
  return 0;
 free(*origin);
 line += 7;
 while(isspace((unsigned char)*line))
  line++;
 *origin = sldns_str2wire_dname(line, &len);
 *origin_len = len;
 if(!*origin)
  log_warn("malloc failure or parse error in $ORIGIN");
 return 1;
}

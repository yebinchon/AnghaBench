
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hex_options {scalar_t__ decode_flag; } ;
typedef scalar_t__ ssize_t ;
typedef int buf ;


 int errx (int,char*) ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ fread (char*,int,int,int ) ;
 int free (char*) ;
 size_t fwrite (char*,int,scalar_t__,int ) ;
 scalar_t__ hex_decode (char*,char*,int ) ;
 scalar_t__ hex_encode (char*,scalar_t__,char**) ;
 scalar_t__ isspace (unsigned char) ;
 int stdin ;
 int stdout ;
 size_t strcspn (char*,char*) ;
 int strlen (char*) ;

int
hxtool_hex(struct hex_options *opt, int argc, char **argv)
{

    if (opt->decode_flag) {
 char buf[1024], buf2[1024], *p;
 ssize_t len;

 while(fgets(buf, sizeof(buf), stdin) != ((void*)0)) {
     buf[strcspn(buf, "\r\n")] = '\0';
     p = buf;
     while(isspace(*(unsigned char *)p))
  p++;
     len = hex_decode(p, buf2, strlen(p));
     if (len < 0)
  errx(1, "hex_decode failed");
     if (fwrite(buf2, 1, len, stdout) != (size_t)len)
  errx(1, "fwrite failed");
 }
    } else {
        char buf[28], *p;
 ssize_t len;

 while((len = fread(buf, 1, sizeof(buf), stdin)) != 0) {
     len = hex_encode(buf, len, &p);
     if (len < 0)
         continue;
     fprintf(stdout, "%s\n", p);
     free(p);
 }
    }
    return 0;
}

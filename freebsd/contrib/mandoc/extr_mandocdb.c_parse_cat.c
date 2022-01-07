
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpage {char* sec; void* desc; struct mlink* mlinks; } ;
struct mlink {char* dsec; int file; } ;
typedef int ssize_t ;
typedef int FILE ;


 int close (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int * fopen (int ,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 scalar_t__ isspace (unsigned char) ;
 char* mandoc_realloc (char*,size_t) ;
 void* mandoc_strndup (char*,int) ;
 char* memchr (char*,char,size_t) ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,size_t) ;
 int say (int ,char*,...) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 char* strstr (char*,char*) ;
 scalar_t__ warnings ;

__attribute__((used)) static void
parse_cat(struct mpage *mpage, int fd)
{
 FILE *stream;
 struct mlink *mlink;
 char *line, *p, *title, *sec;
 size_t linesz, plen, titlesz;
 ssize_t len;
 int offs;

 mlink = mpage->mlinks;
 stream = fd == -1 ? fopen(mlink->file, "r") : fdopen(fd, "r");
 if (stream == ((void*)0)) {
  if (fd != -1)
   close(fd);
  if (warnings)
   say(mlink->file, "&fopen");
  return;
 }

 line = ((void*)0);
 linesz = 0;



 while (getline(&line, &linesz, stream) != -1) {
  if (*line == '\n')
   continue;
  if ((sec = strchr(line, '(')) == ((void*)0))
   break;
  if ((p = strchr(++sec, ')')) == ((void*)0))
   break;
  free(mpage->sec);
  mpage->sec = mandoc_strndup(sec, p - sec);
  if (warnings && *mlink->dsec != '\0' &&
      strcasecmp(mpage->sec, mlink->dsec))
   say(mlink->file,
       "Section \"%s\" manual in %s directory",
       mpage->sec, mlink->dsec);
  break;
 }



 while (line == ((void*)0) || *line != '\n')
  if (getline(&line, &linesz, stream) == -1)
   break;






 while (getline(&line, &linesz, stream) != -1)
  if (*line != '\n' && *line != ' ')
   break;
 titlesz = 0;
 title = ((void*)0);

 while ((len = getline(&line, &linesz, stream)) != -1) {
  if (*line != ' ')
   break;
  offs = 0;
  while (isspace((unsigned char)line[offs]))
   offs++;
  if (line[offs] == '\0')
   continue;
  title = mandoc_realloc(title, titlesz + len - offs);
  memcpy(title + titlesz, line + offs, len - offs);
  titlesz += len - offs;
  title[titlesz - 1] = ' ';
 }
 free(line);
 if (((void*)0) == title || '\0' == *title) {
  if (warnings)
   say(mlink->file, "Cannot find NAME section");
  fclose(stream);
  free(title);
  return;
 }

 title[titlesz - 1] = '\0';







 if (((void*)0) != (p = strstr(title, "- "))) {
  for (p += 2; ' ' == *p || '\b' == *p; p++)
                            ;
 } else {
  if (warnings)
   say(mlink->file, "No dash in title line, "
       "reusing \"%s\" as one-line description", title);
  p = title;
 }

 plen = strlen(p);



 while (((void*)0) != (line = memchr(p, '\b', plen))) {
  len = line - p;
  if (0 == len) {
   memmove(line, line + 1, plen--);
   continue;
  }
  memmove(line - 1, line + 1, plen - len);
  plen -= 2;
 }






 mpage->desc = mandoc_strndup(p, 150);
 fclose(stream);
 free(title);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;


 int EFTYPE ;
 int ENOMEM ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int PATH_MAX ;
 int _LDP_CACHE ;
 int _LDP_ERROR ;
 int _LDP_LOADED ;
 char const* _PathLocale ;
 int _close (int) ;
 scalar_t__ _fstat (int,struct stat*) ;
 int _open (char*,int) ;
 size_t _read (int,char*,size_t) ;
 int errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 int split_lines (char*,char const*) ;
 int strcat (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int
__part_load_locale(const char *name,
  int *using_locale,
  char **locale_buf,
  const char *category_filename,
  int locale_buf_size_max,
  int locale_buf_size_min,
  const char **dst_localebuf)
{
 int saverr, fd, i, num_lines;
 char *lbuf, *p;
 const char *plim;
 char filename[PATH_MAX];
 struct stat st;
 size_t namesize, bufsize;


 if (strcmp(name, "C") == 0 || strcmp(name, "POSIX") == 0 ||
     strncmp(name, "C.", 2) == 0) {
  *using_locale = 0;
  return (_LDP_CACHE);
 }




 if (*locale_buf != ((void*)0) && strcmp(name, *locale_buf) == 0) {
  *using_locale = 1;
  return (_LDP_CACHE);
 }




 namesize = strlen(name) + 1;




 strcpy(filename, _PathLocale);
 strcat(filename, "/");
 strcat(filename, name);
 strcat(filename, "/");
 strcat(filename, category_filename);
 if ((fd = _open(filename, O_RDONLY | O_CLOEXEC)) < 0)
  return (_LDP_ERROR);
 if (_fstat(fd, &st) != 0)
  goto bad_locale;
 if (st.st_size <= 0) {
  errno = EFTYPE;
  goto bad_locale;
 }
 bufsize = namesize + st.st_size;
 if ((lbuf = malloc(bufsize)) == ((void*)0)) {
  errno = ENOMEM;
  goto bad_locale;
 }
 (void)strcpy(lbuf, name);
 p = lbuf + namesize;
 plim = p + st.st_size;
 if (_read(fd, p, (size_t) st.st_size) != st.st_size)
  goto bad_lbuf;



 if (plim[-1] != '\n') {
  errno = EFTYPE;
  goto bad_lbuf;
 }
 num_lines = split_lines(p, plim);
 if (num_lines >= locale_buf_size_max)
  num_lines = locale_buf_size_max;
 else if (num_lines >= locale_buf_size_min)
  num_lines = locale_buf_size_min;
 else {
  errno = EFTYPE;
  goto bad_lbuf;
 }
 (void)_close(fd);



 if (*locale_buf != ((void*)0))
  free(*locale_buf);
 *locale_buf = lbuf;
 for (p = *locale_buf, i = 0; i < num_lines; i++)
  dst_localebuf[i] = (p += strlen(p) + 1);
 for (i = num_lines; i < locale_buf_size_max; i++)
  dst_localebuf[i] = ((void*)0);
 *using_locale = 1;

 return (_LDP_LOADED);

bad_lbuf:
 saverr = errno;
 free(lbuf);
 errno = saverr;
bad_locale:
 saverr = errno;
 (void)_close(fd);
 errno = saverr;

 return (_LDP_ERROR);
}

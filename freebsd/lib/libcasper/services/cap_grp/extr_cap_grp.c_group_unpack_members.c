
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlname ;
typedef int nvlist_t ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ _ALIGN (char*) ;
 size_t _ALIGNBYTES ;
 int assert (int) ;
 char* dnvlist_get_string (int const*,char*,int *) ;
 int memcpy (char*,char const*,size_t) ;
 int nvlist_exists_number (int const*,char*) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;
 char* nvlist_get_string (int const*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
group_unpack_members(const nvlist_t *nvl, char ***fieldp, char **bufferp,
    size_t *bufsizep)
{
 const char *mem;
 char **outstrs, *str, nvlname[64];
 size_t nmem, datasize, strsize;
 unsigned int ii;
 int n;

 if (!nvlist_exists_number(nvl, "gr_nmem")) {
  datasize = _ALIGNBYTES + sizeof(char *);
  if (datasize >= *bufsizep)
   return (ERANGE);
  outstrs = (char **)_ALIGN(*bufferp);
  outstrs[0] = ((void*)0);
  *fieldp = outstrs;
  *bufferp += datasize;
  *bufsizep -= datasize;
  return (0);
 }

 nmem = (size_t)nvlist_get_number(nvl, "gr_nmem");
 datasize = _ALIGNBYTES + sizeof(char *) * (nmem + 1);
 for (ii = 0; ii < nmem; ii++) {
  n = snprintf(nvlname, sizeof(nvlname), "gr_mem[%u]", ii);
  assert(n > 0 && n < (int)sizeof(nvlname));
  mem = dnvlist_get_string(nvl, nvlname, ((void*)0));
  if (mem == ((void*)0))
   return (EINVAL);
  datasize += strlen(mem) + 1;
 }

 if (datasize >= *bufsizep)
  return (ERANGE);

 outstrs = (char **)_ALIGN(*bufferp);
 str = (char *)outstrs + sizeof(char *) * (nmem + 1);
 for (ii = 0; ii < nmem; ii++) {
  n = snprintf(nvlname, sizeof(nvlname), "gr_mem[%u]", ii);
  assert(n > 0 && n < (int)sizeof(nvlname));
  mem = nvlist_get_string(nvl, nvlname);
  strsize = strlen(mem) + 1;
  memcpy(str, mem, strsize);
  outstrs[ii] = str;
  str += strsize;
 }
 assert(ii == nmem);
 outstrs[ii] = ((void*)0);

 *fieldp = outstrs;
 *bufferp += datasize;
 *bufsizep -= datasize;

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int intmax_t ;
 int PJDLOG_ABORT (char*,int) ;
 int dprintf (int,char*,...) ;
 scalar_t__ nvlist_dump_error_check (int const* const,int,int) ;
 int * nvlist_first_nvpair (int const*) ;
 int * nvlist_get_pararr (int const*,void**) ;
 scalar_t__ nvlist_in_array (int const*) ;
 int * nvlist_next_nvpair (int const*,int *) ;
 unsigned char* nvpair_get_binary (int *,size_t*) ;
 int nvpair_get_bool (int *) ;
 int* nvpair_get_bool_array (int *,size_t*) ;
 int nvpair_get_descriptor (int *) ;
 int* nvpair_get_descriptor_array (int *,size_t*) ;
 int nvpair_get_number (int *) ;
 int * nvpair_get_number_array (int *,size_t*) ;
 int * nvpair_get_nvlist (int *) ;
 int ** nvpair_get_nvlist_array (int *,size_t*) ;
 int nvpair_get_string (int *) ;
 char** nvpair_get_string_array (int *,size_t*) ;
 int nvpair_name (int *) ;
 int nvpair_type (int *) ;
 int nvpair_type_string (int) ;

void
nvlist_dump(const nvlist_t *nvl, int fd)
{
 const nvlist_t *tmpnvl;
 nvpair_t *nvp, *tmpnvp;
 void *cookie;
 int level;

 level = 0;
 if (nvlist_dump_error_check(nvl, fd, level))
  return;

 nvp = nvlist_first_nvpair(nvl);
 while (nvp != ((void*)0)) {
  dprintf(fd, "%*s%s (%s):", level * 4, "", nvpair_name(nvp),
      nvpair_type_string(nvpair_type(nvp)));
  switch (nvpair_type(nvp)) {
  case 134:
   dprintf(fd, " null\n");
   break;
  case 138:
   dprintf(fd, " %s\n", nvpair_get_bool(nvp) ?
       "TRUE" : "FALSE");
   break;
  case 133:
   dprintf(fd, " %ju (%jd) (0x%jx)\n",
       (uintmax_t)nvpair_get_number(nvp),
       (intmax_t)nvpair_get_number(nvp),
       (uintmax_t)nvpair_get_number(nvp));
   break;
  case 129:
   dprintf(fd, " [%s]\n", nvpair_get_string(nvp));
   break;
  case 131:
   dprintf(fd, "\n");
   tmpnvl = nvpair_get_nvlist(nvp);
   if (nvlist_dump_error_check(tmpnvl, fd, level + 1))
    break;
   tmpnvp = nvlist_first_nvpair(tmpnvl);
   if (tmpnvp != ((void*)0)) {
    nvl = tmpnvl;
    nvp = tmpnvp;
    level++;
    continue;
   }
   break;
  case 136:
   dprintf(fd, " %d\n", nvpair_get_descriptor(nvp));
   break;
  case 139:
      {
   const unsigned char *binary;
   unsigned int ii;
   size_t size;

   binary = nvpair_get_binary(nvp, &size);
   dprintf(fd, " %zu ", size);
   for (ii = 0; ii < size; ii++)
    dprintf(fd, "%02hhx", binary[ii]);
   dprintf(fd, "\n");
   break;
      }
  case 137:
      {
   const bool *value;
   unsigned int ii;
   size_t nitems;

   value = nvpair_get_bool_array(nvp, &nitems);
   dprintf(fd, " [ ");
   for (ii = 0; ii < nitems; ii++) {
    dprintf(fd, "%s", value[ii] ? "TRUE" : "FALSE");
    if (ii != nitems - 1)
     dprintf(fd, ", ");
   }
   dprintf(fd, " ]\n");
   break;
      }
  case 128:
      {
   const char * const *value;
   unsigned int ii;
   size_t nitems;

   value = nvpair_get_string_array(nvp, &nitems);
   dprintf(fd, " [ ");
   for (ii = 0; ii < nitems; ii++) {
    if (value[ii] == ((void*)0))
     dprintf(fd, "NULL");
    else
     dprintf(fd, "\"%s\"", value[ii]);
    if (ii != nitems - 1)
     dprintf(fd, ", ");
   }
   dprintf(fd, " ]\n");
   break;
      }
  case 132:
      {
   const uint64_t *value;
   unsigned int ii;
   size_t nitems;

   value = nvpair_get_number_array(nvp, &nitems);
   dprintf(fd, " [ ");
   for (ii = 0; ii < nitems; ii++) {
    dprintf(fd, "%ju (%jd) (0x%jx)",
        value[ii], value[ii], value[ii]);
    if (ii != nitems - 1)
     dprintf(fd, ", ");
   }
   dprintf(fd, " ]\n");
   break;
      }
  case 135:
      {
   const int *value;
   unsigned int ii;
   size_t nitems;

   value = nvpair_get_descriptor_array(nvp, &nitems);
   dprintf(fd, " [ ");
   for (ii = 0; ii < nitems; ii++) {
    dprintf(fd, "%d", value[ii]);
    if (ii != nitems - 1)
     dprintf(fd, ", ");
   }
   dprintf(fd, " ]\n");
   break;
      }
  case 130:
      {
   const nvlist_t * const *value;
   unsigned int ii;
   size_t nitems;

   value = nvpair_get_nvlist_array(nvp, &nitems);
   dprintf(fd, " %zu\n", nitems);
   tmpnvl = ((void*)0);
   tmpnvp = ((void*)0);
   for (ii = 0; ii < nitems; ii++) {
    if (nvlist_dump_error_check(value[ii], fd,
        level + 1)) {
     break;
    }

    if (tmpnvl == ((void*)0)) {
     tmpnvp = nvlist_first_nvpair(value[ii]);
     if (tmpnvp != ((void*)0)) {
      tmpnvl = value[ii];
     } else {
      dprintf(fd, "%*s,\n",
          (level + 1) * 4, "");
     }
    }
   }
   if (tmpnvp != ((void*)0)) {
    nvl = tmpnvl;
    nvp = tmpnvp;
    level++;
    continue;
   }
   break;
      }
  default:
   PJDLOG_ABORT("Unknown type: %d.", nvpair_type(nvp));
  }

  while ((nvp = nvlist_next_nvpair(nvl, nvp)) == ((void*)0)) {
   do {
    cookie = ((void*)0);
    if (nvlist_in_array(nvl))
     dprintf(fd, "%*s,\n", level * 4, "");
    nvl = nvlist_get_pararr(nvl, &cookie);
    if (nvl == ((void*)0))
     return;
    if (nvlist_in_array(nvl) && cookie == ((void*)0)) {
     nvp = nvlist_first_nvpair(nvl);
    } else {
     nvp = cookie;
     level--;
    }
   } while (nvp == ((void*)0));
   if (nvlist_in_array(nvl) && cookie == ((void*)0))
    break;
  }
 }
}

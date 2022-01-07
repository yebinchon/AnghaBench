
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {char** nc_lookups; scalar_t__ nc_nlookups; int * nc_device; int * nc_proto; int * nc_protofmly; int nc_flag; int nc_semantics; int * nc_netid; } ;


 int NC_BADFILE ;
 int NC_BROADCAST ;

 int NC_NOFLAG ;

 int NC_NOLOOKUP ;
 int NC_TPI_CLTS ;
 int NC_TPI_CLTS_S ;
 int NC_TPI_COTS ;
 int NC_TPI_COTS_ORD ;
 int NC_TPI_COTS_ORD_S ;
 int NC_TPI_COTS_S ;
 int NC_TPI_RAW ;
 int NC_TPI_RAW_S ;
 int NC_VISIBLE ;

 char* _get_next_token (char*,char) ;
 int free (char**) ;
 int nc_error ;
 char** reallocarray (char**,scalar_t__,int) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 void* strtok_r (char*,char*,char**) ;

__attribute__((used)) static int
parse_ncp(char *stringp, struct netconfig *ncp)
{
    char *tokenp;
    char *lasts;
    char **nc_lookups;

    nc_error = NC_BADFILE;
    stringp[strlen(stringp)-1] = '\0';

    if ((ncp->nc_netid = strtok_r(stringp, "\t ", &lasts)) == ((void*)0)) {
 return (-1);
    }


    if ((tokenp = strtok_r(((void*)0), "\t ", &lasts)) == ((void*)0)) {
 return (-1);
    }
    if (strcmp(tokenp, NC_TPI_COTS_ORD_S) == 0)
 ncp->nc_semantics = NC_TPI_COTS_ORD;
    else if (strcmp(tokenp, NC_TPI_COTS_S) == 0)
 ncp->nc_semantics = NC_TPI_COTS;
    else if (strcmp(tokenp, NC_TPI_CLTS_S) == 0)
 ncp->nc_semantics = NC_TPI_CLTS;
    else if (strcmp(tokenp, NC_TPI_RAW_S) == 0)
 ncp->nc_semantics = NC_TPI_RAW;
    else
 return (-1);


    if ((tokenp = strtok_r(((void*)0), "\t ", &lasts)) == ((void*)0)) {
 return (-1);
    }
    for (ncp->nc_flag = NC_NOFLAG; *tokenp != '\0';
     tokenp++) {
 switch (*tokenp) {
 case 129:
     break;
 case 128:
     ncp->nc_flag |= NC_VISIBLE;
     break;
 case 130:
     ncp->nc_flag |= NC_BROADCAST;
     break;
 default:
     return (-1);
 }
    }

    if ((ncp->nc_protofmly = strtok_r(((void*)0), "\t ", &lasts)) == ((void*)0)) {
 return (-1);
    }

    if ((ncp->nc_proto = strtok_r(((void*)0), "\t ", &lasts)) == ((void*)0)) {
 return (-1);
    }

    if ((ncp->nc_device = strtok_r(((void*)0), "\t ", &lasts)) == ((void*)0)) {
 return (-1);
    }
    if ((tokenp = strtok_r(((void*)0), "\t ", &lasts)) == ((void*)0)) {
 return (-1);
    }
    if (strcmp(tokenp, NC_NOLOOKUP) == 0) {
 ncp->nc_nlookups = 0;
 ncp->nc_lookups = ((void*)0);
    } else {
 char *cp;

 free(ncp->nc_lookups);
 ncp->nc_lookups = ((void*)0);
 ncp->nc_nlookups = 0;
 while ((cp = tokenp) != ((void*)0)) {
     if ((nc_lookups = reallocarray(ncp->nc_lookups,
  ncp->nc_nlookups + 1, sizeof(*ncp->nc_lookups))) == ((void*)0)) {
      free(ncp->nc_lookups);
      ncp->nc_lookups = ((void*)0);
      return (-1);
     }
     tokenp = _get_next_token(cp, ',');
     ncp->nc_lookups = nc_lookups;
     ncp->nc_lookups[ncp->nc_nlookups++] = cp;
 }
    }
    return (0);
}

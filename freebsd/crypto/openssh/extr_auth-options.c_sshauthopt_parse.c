
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_char ;
struct sshauthopt {int restricted; int permit_port_forwarding_flag; int permit_agent_forwarding_flag; int permit_x11_forwarding_flag; int permit_pty_flag; int permit_user_rc; int cert_authority; scalar_t__ valid_before; scalar_t__ nenv; char** env; int force_tun_device; int npermitlisten; int permitlisten; int npermitopen; int permitopen; int * required_from_host_keys; int * cert_principals; int * force_command; } ;


 scalar_t__ INT_MAX ;
 int SSH_TUNID_ERR ;
 int a2tun (char*,int *) ;
 int free (char*) ;
 scalar_t__ handle_permit (char const**,int,int *,int *,char const**) ;
 int isalnum (int ) ;
 void* opt_dequote (char const**,char const**) ;
 int opt_flag (char*,int,char const**) ;
 scalar_t__ opt_match (char const**,char*) ;
 scalar_t__ parse_absolute_time (char*,scalar_t__*) ;
 char** recallocarray (char**,scalar_t__,scalar_t__,int) ;
 int sshauthopt_free (struct sshauthopt*) ;
 struct sshauthopt* sshauthopt_new_with_keys_defaults () ;
 char* strchr (char*,char) ;

struct sshauthopt *
sshauthopt_parse(const char *opts, const char **errstrp)
{
 char **oarray, *opt, *cp, *tmp;
 int r;
 struct sshauthopt *ret = ((void*)0);
 const char *errstr = "unknown error";
 uint64_t valid_before;

 if (errstrp != ((void*)0))
  *errstrp = ((void*)0);
 if ((ret = sshauthopt_new_with_keys_defaults()) == ((void*)0))
  goto alloc_fail;

 if (opts == ((void*)0))
  return ret;

 while (*opts && *opts != ' ' && *opts != '\t') {

  if ((r = opt_flag("restrict", 0, &opts)) != -1) {
   ret->restricted = 1;
   ret->permit_port_forwarding_flag = 0;
   ret->permit_agent_forwarding_flag = 0;
   ret->permit_x11_forwarding_flag = 0;
   ret->permit_pty_flag = 0;
   ret->permit_user_rc = 0;
  } else if ((r = opt_flag("cert-authority", 0, &opts)) != -1) {
   ret->cert_authority = r;
  } else if ((r = opt_flag("port-forwarding", 1, &opts)) != -1) {
   ret->permit_port_forwarding_flag = r == 1;
  } else if ((r = opt_flag("agent-forwarding", 1, &opts)) != -1) {
   ret->permit_agent_forwarding_flag = r == 1;
  } else if ((r = opt_flag("x11-forwarding", 1, &opts)) != -1) {
   ret->permit_x11_forwarding_flag = r == 1;
  } else if ((r = opt_flag("pty", 1, &opts)) != -1) {
   ret->permit_pty_flag = r == 1;
  } else if ((r = opt_flag("user-rc", 1, &opts)) != -1) {
   ret->permit_user_rc = r == 1;
  } else if (opt_match(&opts, "command")) {
   if (ret->force_command != ((void*)0)) {
    errstr = "multiple \"command\" clauses";
    goto fail;
   }
   ret->force_command = opt_dequote(&opts, &errstr);
   if (ret->force_command == ((void*)0))
    goto fail;
  } else if (opt_match(&opts, "principals")) {
   if (ret->cert_principals != ((void*)0)) {
    errstr = "multiple \"principals\" clauses";
    goto fail;
   }
   ret->cert_principals = opt_dequote(&opts, &errstr);
   if (ret->cert_principals == ((void*)0))
    goto fail;
  } else if (opt_match(&opts, "from")) {
   if (ret->required_from_host_keys != ((void*)0)) {
    errstr = "multiple \"from\" clauses";
    goto fail;
   }
   ret->required_from_host_keys = opt_dequote(&opts,
       &errstr);
   if (ret->required_from_host_keys == ((void*)0))
    goto fail;
  } else if (opt_match(&opts, "expiry-time")) {
   if ((opt = opt_dequote(&opts, &errstr)) == ((void*)0))
    goto fail;
   if (parse_absolute_time(opt, &valid_before) != 0 ||
       valid_before == 0) {
    free(opt);
    errstr = "invalid expires time";
    goto fail;
   }
   free(opt);
   if (ret->valid_before == 0 ||
       valid_before < ret->valid_before)
    ret->valid_before = valid_before;
  } else if (opt_match(&opts, "environment")) {
   if (ret->nenv > INT_MAX) {
    errstr = "too many environment strings";
    goto fail;
   }
   if ((opt = opt_dequote(&opts, &errstr)) == ((void*)0))
    goto fail;

   if ((tmp = strchr(opt, '=')) == ((void*)0)) {
    free(opt);
    errstr = "invalid environment string";
    goto fail;
   }
   for (cp = opt; cp < tmp; cp++) {
    if (!isalnum((u_char)*cp) && *cp != '_') {
     free(opt);
     errstr = "invalid environment string";
     goto fail;
    }
   }

   oarray = ret->env;
   if ((ret->env = recallocarray(ret->env, ret->nenv,
       ret->nenv + 1, sizeof(*ret->env))) == ((void*)0)) {
    free(opt);
    ret->env = oarray;
    goto alloc_fail;
   }
   ret->env[ret->nenv++] = opt;
  } else if (opt_match(&opts, "permitopen")) {
   if (handle_permit(&opts, 0, &ret->permitopen,
       &ret->npermitopen, &errstr) != 0)
    goto fail;
  } else if (opt_match(&opts, "permitlisten")) {
   if (handle_permit(&opts, 1, &ret->permitlisten,
       &ret->npermitlisten, &errstr) != 0)
    goto fail;
  } else if (opt_match(&opts, "tunnel")) {
   if ((opt = opt_dequote(&opts, &errstr)) == ((void*)0))
    goto fail;
   ret->force_tun_device = a2tun(opt, ((void*)0));
   free(opt);
   if (ret->force_tun_device == SSH_TUNID_ERR) {
    errstr = "invalid tun device";
    goto fail;
   }
  }




  if (*opts == '\0' || *opts == ' ' || *opts == '\t')
   break;

  if (*opts != ',') {
   errstr = "unknown key option";
   goto fail;
  }
  opts++;
  if (*opts == '\0') {
   errstr = "unexpected end-of-options";
   goto fail;
  }
 }


 if (errstrp != ((void*)0))
  *errstrp = ((void*)0);
 return ret;

alloc_fail:
 errstr = "memory allocation failed";
fail:
 sshauthopt_free(ret);
 if (errstrp != ((void*)0))
  *errstrp = errstr;
 return ((void*)0);
}

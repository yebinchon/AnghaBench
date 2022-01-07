
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tgate {int intnet_metric; void* intnet_addr; void* intnet_mask; int r1net_mask; void* r1net_net; void* r1net_match; char* parm_name; int parm_int_state; int parm_rdisc_pref; int parm_rdisc_int; int parm_d_metric; int parm_adj_inmetric; int parm_adj_outmetric; struct tgate* tgate_next; TYPE_1__* tgate_nets; void* tgate_addr; void* parm_mask; void* parm_net; struct tgate* r1net_next; struct tgate* intnet_next; } ;
struct r1net {int intnet_metric; void* intnet_addr; void* intnet_mask; int r1net_mask; void* r1net_net; void* r1net_match; char* parm_name; int parm_int_state; int parm_rdisc_pref; int parm_rdisc_int; int parm_d_metric; int parm_adj_inmetric; int parm_adj_outmetric; struct r1net* tgate_next; TYPE_1__* tgate_nets; void* tgate_addr; void* parm_mask; void* parm_net; struct r1net* r1net_next; struct r1net* intnet_next; } ;
struct parm {int intnet_metric; void* intnet_addr; void* intnet_mask; int r1net_mask; void* r1net_net; void* r1net_match; char* parm_name; int parm_int_state; int parm_rdisc_pref; int parm_rdisc_int; int parm_d_metric; int parm_adj_inmetric; int parm_adj_outmetric; struct parm* tgate_next; TYPE_1__* tgate_nets; void* tgate_addr; void* parm_mask; void* parm_net; struct parm* r1net_next; struct parm* intnet_next; } ;
struct intnet {int intnet_metric; void* intnet_addr; void* intnet_mask; int r1net_mask; void* r1net_net; void* r1net_match; char* parm_name; int parm_int_state; int parm_rdisc_pref; int parm_rdisc_int; int parm_d_metric; int parm_adj_inmetric; int parm_adj_outmetric; struct intnet* tgate_next; TYPE_1__* tgate_nets; void* tgate_addr; void* parm_mask; void* parm_net; struct intnet* r1net_next; struct intnet* intnet_next; } ;
typedef int parm ;
typedef void* naddr ;
typedef int buf2 ;
typedef int buf ;
struct TYPE_2__ {void* net; void* mask; } ;


 int BUFSIZ ;
 int CKF (int,int) ;
 int GROUP_IS_ADV_OUT ;
 int GROUP_IS_SOL_OUT ;
 int HOPCNT_INFINITY ;
 int HOST_MASK ;
 scalar_t__ IF_NAME_LEN ;
 int IS_ADV_OUT ;
 int IS_BCAST_RDISC ;
 int IS_DISTRUST ;
 int IS_NO_ADV_OUT ;
 int IS_NO_AG ;
 int IS_NO_RDISC ;
 int IS_NO_RIP ;
 int IS_NO_RIPV1_IN ;
 int IS_NO_RIPV1_OUT ;
 int IS_NO_RIPV2_IN ;
 int IS_NO_RIPV2_OUT ;
 int IS_NO_RIP_MCAST ;
 int IS_NO_RIP_OUT ;
 int IS_NO_SOL_OUT ;
 int IS_NO_SUPER_AG ;
 int IS_PASSIVE ;
 int IS_PM_RDISC ;
 int IS_REDIRECT_OK ;
 scalar_t__ IS_RIP_OUT_OFF (int) ;
 int IS_SOL_OUT ;
 int MAX_TGATE_NETS ;
 int MaxMaxAdvertiseInterval ;
 int MinMaxAdvertiseInterval ;
 scalar_t__ PARS (char*) ;
 scalar_t__ PARSEQ (char*) ;
 int RIP_AUTH_MD5 ;
 int RIP_AUTH_PW ;
 scalar_t__ RIP_DEFAULT ;
 char const* bad_str (char const*) ;
 char const* check_parms (struct tgate*) ;
 int free (struct tgate*) ;
 char* get_passwd (char*,char*,struct tgate*,int ,int) ;
 int gethost (char*,void**) ;
 int getnet (char*,void**,void**) ;
 scalar_t__ htonl (scalar_t__) ;
 struct tgate* intnets ;
 int memset (struct tgate*,int ,int) ;
 scalar_t__ parse_quote (char**,char*,char*,char*,int) ;
 struct tgate* r1nets ;
 scalar_t__ rtmalloc (int,char*) ;
 int strcpy (char*,char*) ;
 int strcspn (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strncasecmp (char*,char*,int) ;
 int strspn (char*,char*) ;
 scalar_t__ strtol (char*,char**,int ) ;
 int strtoul (char*,char**,int ) ;
 struct tgate* tgates ;

const char *
parse_parms(char *line,
     int safe)
{




 struct parm parm;
 struct intnet *intnetp;
 struct r1net *r1netp;
 struct tgate *tg;
 naddr addr, mask;
 char delim, *val0 = ((void*)0), *tgt, *val, *p;
 const char *msg;
 char buf[BUFSIZ], buf2[BUFSIZ];
 int i;



 if (!strncasecmp(line, "subnet=", sizeof("subnet=")-1)
     && *(val = &line[sizeof("subnet=")-1]) != '\0') {
  if (0 > parse_quote(&val, ",", &delim, buf, sizeof(buf)))
   return bad_str(line);
  intnetp = (struct intnet*)rtmalloc(sizeof(*intnetp),
         "parse_parms subnet");
  intnetp->intnet_metric = 1;
  if (delim == ',') {
   intnetp->intnet_metric = (int)strtol(val+1,&p,0);
   if (*p != '\0'
       || intnetp->intnet_metric <= 0
       || intnetp->intnet_metric >= HOPCNT_INFINITY) {
    free(intnetp);
    return bad_str(line);
   }
  }
  if (!getnet(buf, &intnetp->intnet_addr, &intnetp->intnet_mask)
      || intnetp->intnet_mask == HOST_MASK
      || intnetp->intnet_addr == RIP_DEFAULT) {
   free(intnetp);
   return bad_str(line);
  }
  intnetp->intnet_addr = htonl(intnetp->intnet_addr);
  intnetp->intnet_next = intnets;
  intnets = intnetp;
  return 0;
 }





 if (!strncasecmp(line, "ripv1_mask=", sizeof("ripv1_mask=")-1)
     && *(val = &line[sizeof("ripv1_mask=")-1]) != '\0') {
  if (0 > parse_quote(&val, ",", &delim, buf, sizeof(buf))
      || delim == '\0')
   return bad_str(line);
  if ((i = (int)strtol(val+1, &p, 0)) <= 0
      || i > 32 || *p != '\0')
   return bad_str(line);
  r1netp = (struct r1net *)rtmalloc(sizeof(*r1netp),
        "parse_parms ripv1_mask");
  r1netp->r1net_mask = HOST_MASK << (32-i);
  if (!getnet(buf, &r1netp->r1net_net, &r1netp->r1net_match)
      || r1netp->r1net_net == RIP_DEFAULT
      || r1netp->r1net_mask > r1netp->r1net_match) {
   free(r1netp);
   return bad_str(line);
  }
  r1netp->r1net_next = r1nets;
  r1nets = r1netp;
  return 0;
 }

 memset(&parm, 0, sizeof(parm));

 for (;;) {
  tgt = line + strspn(line, " ,\n\r");
  if (*tgt == '\0' || *tgt == '#')
   break;
  line = tgt+strcspn(tgt, "= #,\n\r");
  delim = *line;
  if (delim == '=') {
   val0 = ++line;
   if (0 > parse_quote(&line, " #,\n\r",&delim,
         buf,sizeof(buf)))
    return bad_str(tgt);
  } else {
   val0 = ((void*)0);
  }
  if (delim != '\0') {
   for (;;) {
    *line = '\0';
    if (delim == '#')
     break;
    ++line;
    if (delim != ' '
        || (delim = *line) != ' ')
     break;
   }
  }

  if ((!strncasecmp(tgt, "if""=", sizeof("if")))) {
   if (parm.parm_name[0] != '\0'
       || strlen(buf) > IF_NAME_LEN)
    return bad_str(tgt);
   strcpy(parm.parm_name, buf);

  } else if ((!strncasecmp(tgt, "addr""=", sizeof("addr")))) {






   if (val0 == ((void*)0) || !getnet(val0, &addr, &mask)
       || parm.parm_name[0] != '\0')
    return bad_str(tgt);
   parm.parm_net = addr;
   parm.parm_mask = mask;
   parm.parm_name[0] = '\n';

  } else if ((!strncasecmp(tgt, "passwd""=", sizeof("passwd")))) {



   if (val0 == ((void*)0))
    return bad_str("no passwd");
   msg = get_passwd(tgt,val0,&parm,RIP_AUTH_PW,1);
   if (msg) {
    *val0 = '\0';
    return bad_str(msg);
   }

  } else if ((!strncasecmp(tgt, "md5_passwd""=", sizeof("md5_passwd")))) {
   msg = get_passwd(tgt,val0,&parm,RIP_AUTH_MD5,safe);
   if (msg) {
    *val0 = '\0';
    return bad_str(msg);
   }

  } else if ((!strcasecmp(tgt, "no_ag"))) {
   parm.parm_int_state |= (IS_NO_AG | IS_NO_SUPER_AG);

  } else if ((!strcasecmp(tgt, "no_super_ag"))) {
   parm.parm_int_state |= IS_NO_SUPER_AG;

  } else if ((!strcasecmp(tgt, "no_rip_out"))) {
   parm.parm_int_state |= IS_NO_RIP_OUT;

  } else if ((!strcasecmp(tgt, "no_ripv1_in"))) {
   parm.parm_int_state |= IS_NO_RIPV1_IN;

  } else if ((!strcasecmp(tgt, "no_ripv2_in"))) {
   parm.parm_int_state |= IS_NO_RIPV2_IN;

  } else if ((!strcasecmp(tgt, "ripv2_out"))) {
   if (parm.parm_int_state & IS_NO_RIPV2_OUT)
    return bad_str(tgt);
   parm.parm_int_state |= IS_NO_RIPV1_OUT;

  } else if ((!strcasecmp(tgt, "ripv2"))) {
   if ((parm.parm_int_state & IS_NO_RIPV2_OUT)
       || (parm.parm_int_state & IS_NO_RIPV2_IN))
    return bad_str(tgt);
   parm.parm_int_state |= (IS_NO_RIPV1_IN
      | IS_NO_RIPV1_OUT);

  } else if ((!strcasecmp(tgt, "no_rip"))) {
   {if (0 != (parm.parm_int_state & ((IS_PM_RDISC) & ~(IS_NO_RIP)))) break; parm.parm_int_state |= (IS_NO_RIP);};

  } else if ((!strcasecmp(tgt, "no_rip_mcast"))) {
   parm.parm_int_state |= IS_NO_RIP_MCAST;

  } else if ((!strcasecmp(tgt, "no_rdisc"))) {
   {if (0 != (parm.parm_int_state & (((GROUP_IS_SOL_OUT|GROUP_IS_ADV_OUT)) & ~(IS_NO_RDISC)))) break; parm.parm_int_state |= (IS_NO_RDISC);};

  } else if ((!strcasecmp(tgt, "no_solicit"))) {
   {if (0 != (parm.parm_int_state & ((GROUP_IS_SOL_OUT) & ~(IS_NO_SOL_OUT)))) break; parm.parm_int_state |= (IS_NO_SOL_OUT);};

  } else if ((!strcasecmp(tgt, "send_solicit"))) {
   {if (0 != (parm.parm_int_state & ((GROUP_IS_SOL_OUT) & ~(IS_SOL_OUT)))) break; parm.parm_int_state |= (IS_SOL_OUT);};

  } else if ((!strcasecmp(tgt, "no_rdisc_adv"))) {
   {if (0 != (parm.parm_int_state & ((GROUP_IS_ADV_OUT) & ~(IS_NO_ADV_OUT)))) break; parm.parm_int_state |= (IS_NO_ADV_OUT);};

  } else if ((!strcasecmp(tgt, "rdisc_adv"))) {
   {if (0 != (parm.parm_int_state & ((GROUP_IS_ADV_OUT) & ~(IS_ADV_OUT)))) break; parm.parm_int_state |= (IS_ADV_OUT);};

  } else if ((!strcasecmp(tgt, "bcast_rdisc"))) {
   parm.parm_int_state |= IS_BCAST_RDISC;

  } else if ((!strcasecmp(tgt, "passive"))) {
   {if (0 != (parm.parm_int_state & (((GROUP_IS_SOL_OUT|GROUP_IS_ADV_OUT)) & ~(IS_NO_RDISC)))) break; parm.parm_int_state |= (IS_NO_RDISC);};
   parm.parm_int_state |= IS_NO_RIP | IS_PASSIVE;

  } else if ((!strncasecmp(tgt, "rdisc_pref""=", sizeof("rdisc_pref")))) {
   if (parm.parm_rdisc_pref != 0
       || (parm.parm_rdisc_pref = (int)strtol(buf,&p,0),
    *p != '\0'))
    return bad_str(tgt);

  } else if ((!strcasecmp(tgt, "pm_rdisc"))) {
   if (IS_RIP_OUT_OFF(parm.parm_int_state))
    return bad_str(tgt);
   parm.parm_int_state |= IS_PM_RDISC;

  } else if ((!strncasecmp(tgt, "rdisc_interval""=", sizeof("rdisc_interval")))) {
   if (parm.parm_rdisc_int != 0
       || (parm.parm_rdisc_int = (int)strtoul(buf,&p,0),
    *p != '\0')
       || parm.parm_rdisc_int < MinMaxAdvertiseInterval
       || parm.parm_rdisc_int > MaxMaxAdvertiseInterval)
    return bad_str(tgt);

  } else if ((!strncasecmp(tgt, "fake_default""=", sizeof("fake_default")))) {
   if (parm.parm_d_metric != 0
       || IS_RIP_OUT_OFF(parm.parm_int_state)
       || (i = strtoul(buf,&p,0), *p != '\0')
       || i > HOPCNT_INFINITY-1)
    return bad_str(tgt);
   parm.parm_d_metric = i;

  } else if ((!strncasecmp(tgt, "adj_inmetric""=", sizeof("adj_inmetric")))) {
   if (parm.parm_adj_inmetric != 0
       || (i = strtoul(buf,&p,0), *p != '\0')
       || i > HOPCNT_INFINITY-1)
    return bad_str(tgt);
   parm.parm_adj_inmetric = i;

  } else if ((!strncasecmp(tgt, "adj_outmetric""=", sizeof("adj_outmetric")))) {
   if (parm.parm_adj_outmetric != 0
       || (i = strtoul(buf,&p,0), *p != '\0')
       || i > HOPCNT_INFINITY-1)
    return bad_str(tgt);
   parm.parm_adj_outmetric = i;

  } else if ((!strncasecmp(tgt, "trust_gateway""=", sizeof("trust_gateway")))) {

   p = buf;
   if (0 > parse_quote(&p, "|", &delim,
         buf2, sizeof(buf2))
       || !gethost(buf2,&addr))
    return bad_str(tgt);
   tg = (struct tgate *)rtmalloc(sizeof(*tg),
            "parse_parms"
            "trust_gateway");
   memset(tg, 0, sizeof(*tg));
   tg->tgate_addr = addr;
   i = 0;

   while (delim == '|') {
    p++;
    if (i >= MAX_TGATE_NETS
        || 0 > parse_quote(&p, "|", &delim,
             buf2, sizeof(buf2))
        || !getnet(buf2, &tg->tgate_nets[i].net,
            &tg->tgate_nets[i].mask)
        || tg->tgate_nets[i].net == RIP_DEFAULT
        || tg->tgate_nets[i].mask == 0) {
     free(tg);
     return bad_str(tgt);
    }
    i++;
   }
   tg->tgate_next = tgates;
   tgates = tg;
   parm.parm_int_state |= IS_DISTRUST;

  } else if ((!strcasecmp(tgt, "redirect_ok"))) {
   parm.parm_int_state |= IS_REDIRECT_OK;

  } else {
   return bad_str(tgt);
  }
 }

 return check_parms(&parm);


}

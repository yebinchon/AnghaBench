
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 char* headerbase ;
 scalar_t__ headerfile ;
 scalar_t__ logfile ;
 scalar_t__ privheaderfile ;
 scalar_t__ templatefile ;

void
close_generate (void)
{
    fprintf (headerfile, "#endif /* __%s_h__ */\n", headerbase);

    if (headerfile)
        fclose (headerfile);
    if (privheaderfile)
        fclose (privheaderfile);
    if (templatefile)
        fclose (templatefile);
    if (logfile)
        fprintf (logfile, "\n");
        fclose (logfile);
}

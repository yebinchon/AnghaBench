; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnmucc/extr_svnmucc.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnmucc/extr_svnmucc.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2697 x i8] c"usage: svnmucc ACTION...\0ASubversion multiple URL command client.\0AType 'svnmucc --version' to see the program version and RA modules.\0A\0A  Perform one or more Subversion repository URL-based ACTIONs, committing\0A  the result as a (single) new revision.\0A\0AActions:\0A  cp REV SRC-URL DST-URL : copy SRC-URL@REV to DST-URL\0A  mkdir URL              : create new directory URL\0A  mv SRC-URL DST-URL     : move SRC-URL to DST-URL\0A  rm URL                 : delete URL\0A  put SRC-FILE URL       : add or modify file URL with contents copied from\0A                           SRC-FILE (use \22-\22 to read from standard input)\0A  propset NAME VALUE URL : set property NAME on URL to VALUE\0A  propsetf NAME FILE URL : set property NAME on URL to value read from FILE\0A  propdel NAME URL       : delete property NAME from URL\0A\0AValid options:\0A  -h, -? [--help]        : display this text\0A  -m [--message] ARG     : use ARG as a log message\0A  -F [--file] ARG        : read log message from file ARG\0A  -u [--username] ARG    : commit the changes as username ARG\0A  -p [--password] ARG    : use ARG as the password\0A  --password-from-stdin  : read password from stdin\0A  -U [--root-url] ARG    : interpret all action URLs relative to ARG\0A  -r [--revision] ARG    : use revision ARG as baseline for changes\0A  --with-revprop ARG     : set revision property in the following format:\0A                               NAME[=VALUE]\0A  --non-interactive      : do no interactive prompting (default is to\0A                           prompt only if standard input is a terminal)\0A  --force-interactive    : do interactive prompting even if standard\0A                           input is not a terminal\0A  --trust-server-cert    : deprecated;\0A                           same as --trust-server-cert-failures=unknown-ca\0A  --trust-server-cert-failures ARG\0A                           with --non-interactive, accept SSL server\0A                           certificates with failures; ARG is comma-separated\0A                           list of 'unknown-ca' (Unknown Authority),\0A                           'cn-mismatch' (Hostname mismatch), 'expired'\0A                           (Expired certificate),'not-yet-valid' (Not yet\0A                           valid certificate) and 'other' (all other not\0A                           separately classified certificate errors).\0A  -X [--extra-args] ARG  : append arguments from file ARG (one per line;\0A                           use \22-\22 to read from standard input)\0A  --config-dir ARG       : use ARG to override the config directory\0A  --config-option ARG    : use ARG to override a configuration option\0A  --no-auth-cache        : do not cache authentication tokens\0A  --version              : print version information\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i32 @_(i8* getelementptr inbounds ([2697 x i8], [2697 x i8]* @.str, i64 0, i64 0))
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @svn_cmdline_fputs(i32 %5, i32* %6, i32* %7)
  %9 = call i32 @svn_error_clear(i32 %8)
  ret void
}

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_cmdline_fputs(i32, i32*, i32*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

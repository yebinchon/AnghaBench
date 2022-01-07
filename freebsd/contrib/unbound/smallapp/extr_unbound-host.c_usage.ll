; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-host.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-host.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [68 x i8] c"Usage:\09unbound-host [-C configfile] [-vdhr46] [-c class] [-t type]\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"                     [-y key] [-f keyfile] [-F namedkeyfile] hostname\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"  Queries the DNS for information.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"  The hostname is looked up for IP4, IP6 and mail.\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"  If an ip-address is given a reverse lookup is done.\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"  Use the -v option to see DNSSEC security information.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"    -t type\09\09what type to look for.\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"    -c class\09\09what class to look for, if not class IN.\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"    -y 'keystring'\09specify trust anchor, DS or DNSKEY, like\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"\09\09\09-y 'example.com DS 31560 5 1 1CFED8478...'\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"    -D\09\09\09DNSSEC enable with default root anchor\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"    \09\09\09from %s\0A\00", align 1
@ROOT_ANCHOR_FILE = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [65 x i8] c"    -f keyfile\09\09read trust anchors from file, with lines as -y.\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"    -F keyfile\09\09read named.conf-style trust anchors.\0A\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"    -C config\09\09use the specified unbound.conf (none read by default)\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"\09\09\09pass as first argument if you want to override some\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"\09\09\09options with further arguments\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"    -r\09\09\09read forwarder information from /etc/resolv.conf\0A\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"      \09\09\09breaks validation if the forwarder does not do DNSSEC.\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"    -v\09\09\09be more verbose, shows nodata and security.\0A\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"    -d\09\09\09debug, traces the action, -d -d shows more.\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"    -4\09\09\09use ipv4 network, avoid ipv6.\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"    -6\09\09\09use ipv6 network, avoid ipv4.\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"    -h\09\09\09show this usage help.\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Version %s\0A\00", align 1
@PACKAGE_VERSION = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [58 x i8] c"BSD licensed, see LICENSE in source package for details.\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Report bugs to %s\0A\00", align 1
@PACKAGE_BUGREPORT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %12 = load i8*, i8** @ROOT_ANCHOR_FILE, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.14, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0))
  %26 = load i8*, i8** @PACKAGE_VERSION, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* %26)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i64 0, i64 0))
  %29 = load i8*, i8** @PACKAGE_BUGREPORT, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i8* %29)
  %31 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

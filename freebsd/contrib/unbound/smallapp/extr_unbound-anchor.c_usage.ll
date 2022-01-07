; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Usage:\09local-unbound-anchor [opts]\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"\09Setup or update root anchor. Most options have defaults.\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\09Run this program before you start the validator.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\09The anchor and cert have default builtin content\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"\09if the file does not exist or is empty.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"-a file\09\09root key file, default %s\0A\00", align 1
@ROOT_ANCHOR_FILE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [46 x i8] c"\09\09The key is input and output for this tool.\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"-c file\09\09cert file, default %s\0A\00", align 1
@ROOT_CERT_FILE = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"-l\09\09list builtin key and cert on stdout\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"-u name\09\09server in https url, default %s\0A\00", align 1
@URLNAME = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"-x path\09\09pathname to xml in url, default %s\0A\00", align 1
@XMLNAME = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [45 x i8] c"-s path\09\09pathname to p7s in url, default %s\0A\00", align 1
@P7SNAME = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [52 x i8] c"-n name\09\09signer's subject emailAddress, default %s\0A\00", align 1
@P7SIGNER = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"-4\09\09work using IPv4 only\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"-6\09\09work using IPv6 only\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"-f resolv.conf\09use given resolv.conf\0A\00", align 1
@.str.17 = private unnamed_addr constant [77 x i8] c"-r root.hints\09use given root.hints\0A\09\09builtin root hints are used by default\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"-R\09\09fallback from -f to root query on error\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"-v\09\09more verbose\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"-C conf\09\09debug, read config\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"-P port\09\09use port for https connect, default 443\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"-F \09\09debug, force update with cert\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"-h\09\09show this usage help\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Version %s\0A\00", align 1
@PACKAGE_VERSION = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [58 x i8] c"BSD licensed, see LICENSE in source package for details.\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Report bugs to %s\0A\00", align 1
@PACKAGE_BUGREPORT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %8 = load i8*, i8** @ROOT_ANCHOR_FILE, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %11 = load i8*, i8** @ROOT_CERT_FILE, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %11)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %14 = load i8*, i8** @URLNAME, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** @XMLNAME, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** @P7SNAME, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** @P7SIGNER, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i8* %20)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.17, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  %32 = load i8*, i8** @PACKAGE_VERSION, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i64 0, i64 0))
  %35 = load i8*, i8** @PACKAGE_BUGREPORT, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i8* %35)
  %37 = call i32 @exit(i32 1) #3
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

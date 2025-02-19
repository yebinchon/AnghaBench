; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Usage:\09local-unbound-checkconf [file]\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"\09Checks unbound configuration file for errors.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"file\09if omitted %s is used.\0A\00", align 1
@CONFIGFILE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"-o option\09print value of option to stdout.\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"-f \09\09output full pathname with chroot applied, eg. with -o pidfile.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"-h\09\09show this usage help.\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Version %s\0A\00", align 1
@PACKAGE_VERSION = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [58 x i8] c"BSD licensed, see LICENSE in source package for details.\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Report bugs to %s\0A\00", align 1
@PACKAGE_BUGREPORT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i8*, i8** @CONFIGFILE, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %8 = load i8*, i8** @PACKAGE_VERSION, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  %11 = load i8*, i8** @PACKAGE_BUGREPORT, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %11)
  %13 = call i32 @exit(i32 1) #3
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

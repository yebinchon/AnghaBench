; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/secure/extr_stack_protector.c___fail.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/secure/extr_stack_protector.c___fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@SIGABRT = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fail(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 @sigfillset(i32* %4)
  %6 = load i32, i32* @SIGABRT, align 4
  %7 = call i32 @sigdelset(i32* %4, i32 %6)
  %8 = load i32, i32* @SIG_BLOCK, align 4
  %9 = call i32 @sigprocmask(i32 %8, i32* %4, i32* null)
  %10 = load i32, i32* @LOG_CRIT, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @syslog(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = call i32 @memset(%struct.sigaction* %3, i32 0, i32 24)
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %15 = call i32 @sigemptyset(i32* %14)
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @SIG_DFL, align 4
  %18 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @SIGABRT, align 4
  %20 = call i32 @sigaction(i32 %19, %struct.sigaction* %3, i32* null)
  %21 = call i32 (...) @getpid()
  %22 = load i32, i32* @SIGABRT, align 4
  %23 = call i32 @kill(i32 %21, i32 %22)
  %24 = call i32 @_exit(i32 127) #3
  unreachable
}

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

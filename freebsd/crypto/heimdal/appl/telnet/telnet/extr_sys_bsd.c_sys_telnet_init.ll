; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_sys_telnet_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_sys_telnet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@intr2 = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@deadpeer = common dso_local global i32 0, align 4
@net = common dso_local global i32 0, align 4
@SIGINFO = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_OOBINLINE = common dso_local global i32 0, align 4
@ayt = common dso_local global i32 0, align 4
@sendwin = common dso_local global i32 0, align 4
@susp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sys_telnet_init() #0 {
  %1 = load i32, i32* @SIGINT, align 4
  %2 = load i32, i32* @intr, align 4
  %3 = call i32 @signal(i32 %1, i32 %2)
  %4 = load i32, i32* @SIGQUIT, align 4
  %5 = load i32, i32* @intr2, align 4
  %6 = call i32 @signal(i32 %4, i32 %5)
  %7 = load i32, i32* @SIGPIPE, align 4
  %8 = load i32, i32* @deadpeer, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = call i32 @setconnmode(i32 0)
  %11 = load i32, i32* @net, align 4
  %12 = call i32 @NetNonblockingIO(i32 %11, i32 1)
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @setconnmode(i32) #1

declare dso_local i32 @NetNonblockingIO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

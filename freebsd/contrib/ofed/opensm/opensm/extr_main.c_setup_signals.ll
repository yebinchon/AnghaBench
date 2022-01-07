; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_main.c_setup_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_main.c_setup_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@mark_exit_flag = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@mark_hup_flag = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@mark_usr1_flag = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@saved_sigset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_signals() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  %3 = call i32 @sigemptyset(i32* %2)
  %4 = load i32, i32* @mark_exit_flag, align 4
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @SIGINT, align 4
  %8 = call i32 @sigaction(i32 %7, %struct.sigaction* %1, i32* null)
  %9 = load i32, i32* @SIGTERM, align 4
  %10 = call i32 @sigaction(i32 %9, %struct.sigaction* %1, i32* null)
  %11 = load i32, i32* @mark_hup_flag, align 4
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @SIGHUP, align 4
  %14 = call i32 @sigaction(i32 %13, %struct.sigaction* %1, i32* null)
  %15 = load i32, i32* @SIGCONT, align 4
  %16 = call i32 @sigaction(i32 %15, %struct.sigaction* %1, i32* null)
  %17 = load i32, i32* @mark_usr1_flag, align 4
  %18 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @SIGUSR1, align 4
  %20 = call i32 @sigaction(i32 %19, %struct.sigaction* %1, i32* null)
  %21 = load i32, i32* @SIG_SETMASK, align 4
  %22 = call i32 @pthread_sigmask(i32 %21, i32* @saved_sigset, i32* null)
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

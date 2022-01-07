; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_pause.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32 }
%struct.linux_pause_args = type { i32 }

@pause = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_pause(%struct.thread* %0, %struct.linux_pause_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_pause_args*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_pause_args* %1, %struct.linux_pause_args** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 1
  %9 = load %struct.proc*, %struct.proc** %8, align 8
  store %struct.proc* %9, %struct.proc** %5, align 8
  %10 = load i32, i32* @pause, align 4
  %11 = call i32 @LINUX_CTR(i32 %10)
  %12 = load %struct.proc*, %struct.proc** %5, align 8
  %13 = call i32 @PROC_LOCK(%struct.proc* %12)
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.proc*, %struct.proc** %5, align 8
  %18 = call i32 @PROC_UNLOCK(%struct.proc* %17)
  %19 = load %struct.thread*, %struct.thread** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @kern_sigsuspend(%struct.thread* %19, i32 %20)
  ret i32 %21
}

declare dso_local i32 @LINUX_CTR(i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @kern_sigsuspend(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

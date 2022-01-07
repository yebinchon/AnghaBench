; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_set_cloned_tls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_set_cloned_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, %struct.pcb* }
%struct.TYPE_2__ = type { i32 }
%struct.pcb = type { i64 }

@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@_ufssel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_set_cloned_tls(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EPERM, align 4
  store i32 %12, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 1
  %16 = load %struct.pcb*, %struct.pcb** %15, align 8
  store %struct.pcb* %16, %struct.pcb** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.pcb*, %struct.pcb** %6, align 8
  %20 = getelementptr inbounds %struct.pcb, %struct.pcb* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @_ufssel, align 4
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %13, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

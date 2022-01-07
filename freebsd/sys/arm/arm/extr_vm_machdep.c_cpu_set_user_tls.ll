; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_vm_machdep.c_cpu_set_user_tls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_vm_machdep.c_cpu_set_user_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@curthread = common dso_local global %struct.thread* null, align 8
@ARM_TP_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_set_user_tls(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i8*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i8* %5, i8** %8, align 8
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  %11 = icmp eq %struct.thread* %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = call i32 (...) @critical_enter()
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* @ARM_TP_ADDRESS, align 8
  %16 = inttoptr i64 %15 to i8**
  store i8* %14, i8** %16, align 8
  %17 = call i32 (...) @critical_exit()
  br label %18

18:                                               ; preds = %12, %2
  ret i32 0
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

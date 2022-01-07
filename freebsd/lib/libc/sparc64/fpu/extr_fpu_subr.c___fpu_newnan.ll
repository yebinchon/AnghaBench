; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sparc64/fpu/extr_fpu_subr.c___fpu_newnan.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sparc64/fpu/extr_fpu_subr.c___fpu_newnan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpn = type { i64*, i64, i32 }
%struct.fpemu = type { %struct.fpn, i32 }

@FSR_NV = common dso_local global i32 0, align 4
@FPC_QNAN = common dso_local global i32 0, align 4
@FP_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpn* @__fpu_newnan(%struct.fpemu* %0) #0 {
  %2 = alloca %struct.fpemu*, align 8
  %3 = alloca %struct.fpn*, align 8
  store %struct.fpemu* %0, %struct.fpemu** %2, align 8
  %4 = load i32, i32* @FSR_NV, align 4
  %5 = load %struct.fpemu*, %struct.fpemu** %2, align 8
  %6 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %5, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  %7 = load %struct.fpemu*, %struct.fpemu** %2, align 8
  %8 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %7, i32 0, i32 0
  store %struct.fpn* %8, %struct.fpn** %3, align 8
  %9 = load i32, i32* @FPC_QNAN, align 4
  %10 = load %struct.fpn*, %struct.fpn** %3, align 8
  %11 = getelementptr inbounds %struct.fpn, %struct.fpn* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.fpn*, %struct.fpn** %3, align 8
  %13 = getelementptr inbounds %struct.fpn, %struct.fpn* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* @FP_1, align 8
  %15 = sub nsw i64 %14, 1
  %16 = load %struct.fpn*, %struct.fpn** %3, align 8
  %17 = getelementptr inbounds %struct.fpn, %struct.fpn* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %15, i64* %19, align 8
  %20 = load %struct.fpn*, %struct.fpn** %3, align 8
  %21 = getelementptr inbounds %struct.fpn, %struct.fpn* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 3
  store i64 -1, i64* %23, align 8
  %24 = load %struct.fpn*, %struct.fpn** %3, align 8
  %25 = getelementptr inbounds %struct.fpn, %struct.fpn* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  store i64 -1, i64* %27, align 8
  %28 = load %struct.fpn*, %struct.fpn** %3, align 8
  %29 = getelementptr inbounds %struct.fpn, %struct.fpn* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 -1, i64* %31, align 8
  %32 = load %struct.fpn*, %struct.fpn** %3, align 8
  ret %struct.fpn* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

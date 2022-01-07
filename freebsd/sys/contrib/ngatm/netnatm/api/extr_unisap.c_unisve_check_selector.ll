; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_check_selector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_check_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unisve_selector = type { i64 }

@UNISVE_PRESENT = common dso_local global i64 0, align 8
@UNISVE_ABSENT = common dso_local global i64 0, align 8
@UNISVE_ANY = common dso_local global i64 0, align 8
@UNISVE_ERROR_BAD_TAG = common dso_local global i32 0, align 4
@UNISVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unisve_check_selector(%struct.unisve_selector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.unisve_selector*, align 8
  store %struct.unisve_selector* %0, %struct.unisve_selector** %3, align 8
  %4 = load %struct.unisve_selector*, %struct.unisve_selector** %3, align 8
  %5 = getelementptr inbounds %struct.unisve_selector, %struct.unisve_selector* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @UNISVE_PRESENT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.unisve_selector*, %struct.unisve_selector** %3, align 8
  %11 = getelementptr inbounds %struct.unisve_selector, %struct.unisve_selector* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UNISVE_ABSENT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load %struct.unisve_selector*, %struct.unisve_selector** %3, align 8
  %17 = getelementptr inbounds %struct.unisve_selector, %struct.unisve_selector* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UNISVE_ANY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @UNISVE_ERROR_BAD_TAG, align 4
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %15, %9, %1
  %24 = load i32, i32* @UNISVE_OK, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

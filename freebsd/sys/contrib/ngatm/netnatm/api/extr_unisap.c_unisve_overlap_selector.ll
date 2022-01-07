; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_overlap_selector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_overlap_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unisve_selector = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unisve_overlap_selector(%struct.unisve_selector* %0, %struct.unisve_selector* %1) #0 {
  %3 = alloca %struct.unisve_selector*, align 8
  %4 = alloca %struct.unisve_selector*, align 8
  store %struct.unisve_selector* %0, %struct.unisve_selector** %3, align 8
  store %struct.unisve_selector* %1, %struct.unisve_selector** %4, align 8
  %5 = load %struct.unisve_selector*, %struct.unisve_selector** %3, align 8
  %6 = load %struct.unisve_selector*, %struct.unisve_selector** %4, align 8
  %7 = call i32 @COMMON_OVERLAP(%struct.unisve_selector* %5, %struct.unisve_selector* %6)
  %8 = load %struct.unisve_selector*, %struct.unisve_selector** %3, align 8
  %9 = getelementptr inbounds %struct.unisve_selector, %struct.unisve_selector* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.unisve_selector*, %struct.unisve_selector** %4, align 8
  %12 = getelementptr inbounds %struct.unisve_selector, %struct.unisve_selector* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i32 @COMMON_OVERLAP(%struct.unisve_selector*, %struct.unisve_selector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

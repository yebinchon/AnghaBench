; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_tsearch_path.h_path_taking_left.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_tsearch_path.h_path_taking_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64*, i64 }

@STEPS_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.path*)* @path_taking_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_taking_left(%struct.path* %0) #0 {
  %2 = alloca %struct.path*, align 8
  store %struct.path* %0, %struct.path** %2, align 8
  %3 = load %struct.path*, %struct.path** %2, align 8
  %4 = getelementptr inbounds %struct.path, %struct.path* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @STEPS_BIT, align 8
  %7 = urem i64 %5, %6
  %8 = shl i64 1, %7
  %9 = load %struct.path*, %struct.path** %2, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load %struct.path*, %struct.path** %2, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @STEPS_BIT, align 8
  %16 = udiv i64 %14, %15
  %17 = getelementptr inbounds i64, i64* %11, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = or i64 %18, %8
  store i64 %19, i64* %17, align 8
  %20 = load %struct.path*, %struct.path** %2, align 8
  %21 = getelementptr inbounds %struct.path, %struct.path* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

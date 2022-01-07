; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_probe_prev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_probe_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs_map = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ck_rhs_map*, i64, i64)* @ck_rhs_map_probe_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ck_rhs_map_probe_prev(%struct.ck_rhs_map* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ck_rhs_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ck_rhs_map* %0, %struct.ck_rhs_map** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %10 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = and i64 %8, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %17 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = xor i64 %18, -1
  %20 = and i64 %15, %19
  %21 = load i64, i64* %6, align 8
  %22 = sub i64 %21, 1
  %23 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %24 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %22, %25
  %27 = add i64 %20, %26
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %4, align 8
  br label %37

29:                                               ; preds = %3
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %30, %31
  %33 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %34 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %32, %35
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %29, %14
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

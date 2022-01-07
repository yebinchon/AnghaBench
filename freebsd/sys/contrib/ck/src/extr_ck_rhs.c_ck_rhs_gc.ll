; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_gc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { %struct.ck_rhs_map* }
%struct.ck_rhs_map = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_rhs_gc(%struct.ck_rhs* %0) #0 {
  %2 = alloca %struct.ck_rhs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ck_rhs_map*, align 8
  %5 = alloca i32, align 4
  store %struct.ck_rhs* %0, %struct.ck_rhs** %2, align 8
  %6 = load %struct.ck_rhs*, %struct.ck_rhs** %2, align 8
  %7 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %6, i32 0, i32 0
  %8 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  store %struct.ck_rhs_map* %8, %struct.ck_rhs_map** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %12 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @ck_rhs_probes(%struct.ck_rhs_map* %16, i64 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @ck_rhs_probes(%struct.ck_rhs_map* %22, i64 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %3, align 8
  br label %9

29:                                               ; preds = %9
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %32 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  ret i32 1
}

declare dso_local i32 @ck_rhs_probes(%struct.ck_rhs_map*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

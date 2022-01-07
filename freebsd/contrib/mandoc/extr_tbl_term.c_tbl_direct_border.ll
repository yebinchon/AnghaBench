; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_direct_border.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_direct_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64 (%struct.termp*, i32)*, i64, i32 (%struct.termp*, i32)* }

@borders_locale = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i32, i64)* @tbl_direct_border to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbl_direct_border(%struct.termp* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.termp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32*, i32** @borders_locale, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.termp*, %struct.termp** %4, align 8
  %15 = getelementptr inbounds %struct.termp, %struct.termp* %14, i32 0, i32 0
  %16 = load i64 (%struct.termp*, i32)*, i64 (%struct.termp*, i32)** %15, align 8
  %17 = load %struct.termp*, %struct.termp** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 %16(%struct.termp* %17, i32 %18)
  store i64 %19, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %36, %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.termp*, %struct.termp** %4, align 8
  %26 = getelementptr inbounds %struct.termp, %struct.termp* %25, i32 0, i32 2
  %27 = load i32 (%struct.termp*, i32)*, i32 (%struct.termp*, i32)** %26, align 8
  %28 = load %struct.termp*, %struct.termp** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 %27(%struct.termp* %28, i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.termp*, %struct.termp** %4, align 8
  %33 = getelementptr inbounds %struct.termp, %struct.termp* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %24
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %7, align 8
  br label %20

40:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_reg.c_set_dbregs32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_reg.c_set_dbregs32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.dbreg32 = type { i64* }
%struct.dbreg = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_dbregs32(%struct.thread* %0, %struct.dbreg32* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.dbreg32*, align 8
  %5 = alloca %struct.dbreg, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.dbreg32* %1, %struct.dbreg32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load %struct.dbreg32*, %struct.dbreg32** %4, align 8
  %12 = getelementptr inbounds %struct.dbreg32, %struct.dbreg32* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %5, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 %17, i64* %22, align 8
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %7

26:                                               ; preds = %7
  store i32 8, i32* %6, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %5, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load %struct.thread*, %struct.thread** %3, align 8
  %41 = call i32 @set_dbregs(%struct.thread* %40, %struct.dbreg* %5)
  ret i32 %41
}

declare dso_local i32 @set_dbregs(%struct.thread*, %struct.dbreg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

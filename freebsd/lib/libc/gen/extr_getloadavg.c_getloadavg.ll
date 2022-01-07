; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getloadavg.c_getloadavg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getloadavg.c_getloadavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loadavg = type { double, i64* }

@CTL_VM = common dso_local global i32 0, align 4
@VM_LOADAVG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getloadavg(double* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.loadavg, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i64, align 8
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @CTL_VM, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @VM_LOADAVG, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  store i64 16, i64* %9, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %15 = call i64 @sysctl(i32* %14, i32 2, %struct.loadavg* %6, i64* %9, i32* null, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @MIN(i32 %19, i32 2)
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %40, %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %6, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to double
  %33 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %6, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = fdiv double %32, %34
  %36 = load double*, double** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  store double %35, double* %39, align 8
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %21

43:                                               ; preds = %21
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @sysctl(i32*, i32, %struct.loadavg*, i64*, i32*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

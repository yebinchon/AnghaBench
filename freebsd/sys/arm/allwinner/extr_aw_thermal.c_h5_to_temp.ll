; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_h5_to_temp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_h5_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H5_TEMP_BASE = common dso_local global i32 0, align 4
@H5_TEMP_MUL = common dso_local global i32 0, align 4
@H5_TEMP_DIV = common dso_local global i32 0, align 4
@H5_TEMP_BASE_CPU = common dso_local global i32 0, align 4
@H5_TEMP_MUL_CPU = common dso_local global i32 0, align 4
@H5_TEMP_BASE_GPU = common dso_local global i32 0, align 4
@H5_TEMP_MUL_GPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown sensor %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @h5_to_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h5_to_temp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1280
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i32, i32* @H5_TEMP_BASE, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @H5_TEMP_MUL, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @H5_TEMP_DIV, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* @H5_TEMP_BASE_CPU, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @H5_TEMP_MUL_CPU, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %6, align 4
  br label %42

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* @H5_TEMP_BASE_GPU, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @H5_TEMP_MUL_GPU, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %3, align 4
  br label %47

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i32, i32* @H5_TEMP_DIV, align 4
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %37, %9
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

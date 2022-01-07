; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_h5_to_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_h5_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H5_TEMP_BASE = common dso_local global i32 0, align 4
@H5_TEMP_DIV = common dso_local global i32 0, align 4
@H5_TEMP_MUL = common dso_local global i32 0, align 4
@H5_TEMP_BASE_CPU = common dso_local global i32 0, align 4
@H5_TEMP_MUL_CPU = common dso_local global i32 0, align 4
@H5_TEMP_BASE_GPU = common dso_local global i32 0, align 4
@H5_TEMP_MUL_GPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown sensor %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @h5_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h5_to_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 70
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* @H5_TEMP_BASE, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @H5_TEMP_DIV, align 4
  %13 = shl i32 %11, %12
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @H5_TEMP_MUL, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sdiv i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %48

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* @H5_TEMP_BASE_CPU, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @H5_TEMP_DIV, align 4
  %25 = shl i32 %23, %24
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @H5_TEMP_MUL_CPU, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %47

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* @H5_TEMP_BASE_GPU, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @H5_TEMP_DIV, align 4
  %37 = shl i32 %35, %36
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @H5_TEMP_MUL_GPU, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sdiv i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %46

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47, %9
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

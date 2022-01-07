; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_nmi.c_aw_nmi_map_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_nmi.c_aw_nmi_map_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Invalid #interrupt-cells\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Controller only support irq 0\0A\00", align 1
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"unsupported trigger/polarity 0x%2x\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*, i32*)* @aw_nmi_map_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_nmi_map_fdt(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %7, align 4
  br label %71

24:                                               ; preds = %6
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %7, align 4
  br label %71

34:                                               ; preds = %24
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  switch i32 %38, label %51 [
    i32 130, label %39
    i32 131, label %42
    i32 129, label %45
    i32 128, label %48
  ]

39:                                               ; preds = %34
  %40 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  store i32 %41, i32* %16, align 4
  br label %56

42:                                               ; preds = %34
  %43 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* @INTR_POLARITY_LOW, align 4
  store i32 %44, i32* %16, align 4
  br label %56

45:                                               ; preds = %34
  %46 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  store i32 %47, i32* %16, align 4
  br label %56

48:                                               ; preds = %34
  %49 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* @INTR_POLARITY_LOW, align 4
  store i32 %50, i32* %16, align 4
  br label %56

51:                                               ; preds = %34
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENOTSUP, align 4
  store i32 %55, i32* %7, align 4
  br label %71

56:                                               ; preds = %48, %45, %42, %39
  %57 = load i32, i32* %14, align 4
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %16, align 4
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %17, align 4
  %69 = load i32*, i32** %13, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %64
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %51, %30, %20
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

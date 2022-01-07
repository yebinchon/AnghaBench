; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_machdep.c_imx_soc_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_machdep.c_imx_soc_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@imx_soc_type.soctype = internal global i64 0, align 8
@IMX6_ANALOG_DIGPROG_SL = common dso_local global i32 0, align 4
@IMX6_ANALOG_DIGPROG_SOCTYPE_SHIFT = common dso_local global i32 0, align 4
@IMX6_ANALOG_DIGPROG_SOCTYPE_MASK = common dso_local global i32 0, align 4
@IMX6_ANALOG_DIGPROG = common dso_local global i32 0, align 4
@IMXSOC_6SL = common dso_local global i64 0, align 8
@IMXSOC_6S = common dso_local global i64 0, align 8
@IMXSOC_6DL = common dso_local global i64 0, align 8
@IMXSOC_6Q = common dso_local global i64 0, align 8
@IMXSOC_6UL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"imx_soc_type: Don't understand hwsoc 0x%02x, digprog 0x%08x; assuming IMXSOC_6Q\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @imx_soc_type() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 10485764, i32* %5, align 4
  %6 = load i64, i64* @imx_soc_type.soctype, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i64, i64* @imx_soc_type.soctype, align 8
  store i64 %9, i64* %1, align 8
  br label %62

10:                                               ; preds = %0
  %11 = load i32, i32* @IMX6_ANALOG_DIGPROG_SL, align 4
  %12 = call i32 @imx6_anatop_read_4(i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @IMX6_ANALOG_DIGPROG_SOCTYPE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = load i32, i32* @IMX6_ANALOG_DIGPROG_SOCTYPE_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 96
  br i1 %19, label %20, label %43

20:                                               ; preds = %10
  %21 = load i32, i32* @IMX6_ANALOG_DIGPROG, align 4
  %22 = call i32 @imx6_anatop_read_4(i32 %21)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @IMX6_ANALOG_DIGPROG_SOCTYPE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @IMX6_ANALOG_DIGPROG_SOCTYPE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 97
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = call i32* @devmap_ptov(i32 10485764, i32 4)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 98, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34
  br label %41

41:                                               ; preds = %40, %30
  br label %42

42:                                               ; preds = %41, %20
  br label %43

43:                                               ; preds = %42, %10
  %44 = load i32, i32* %3, align 4
  switch i32 %44, label %55 [
    i32 96, label %45
    i32 98, label %47
    i32 97, label %49
    i32 99, label %51
    i32 100, label %53
  ]

45:                                               ; preds = %43
  %46 = load i64, i64* @IMXSOC_6SL, align 8
  store i64 %46, i64* @imx_soc_type.soctype, align 8
  br label %60

47:                                               ; preds = %43
  %48 = load i64, i64* @IMXSOC_6S, align 8
  store i64 %48, i64* @imx_soc_type.soctype, align 8
  br label %60

49:                                               ; preds = %43
  %50 = load i64, i64* @IMXSOC_6DL, align 8
  store i64 %50, i64* @imx_soc_type.soctype, align 8
  br label %60

51:                                               ; preds = %43
  %52 = load i64, i64* @IMXSOC_6Q, align 8
  store i64 %52, i64* @imx_soc_type.soctype, align 8
  br label %60

53:                                               ; preds = %43
  %54 = load i64, i64* @IMXSOC_6UL, align 8
  store i64 %54, i64* @imx_soc_type.soctype, align 8
  br label %60

55:                                               ; preds = %43
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i64, i64* @IMXSOC_6Q, align 8
  store i64 %59, i64* @imx_soc_type.soctype, align 8
  br label %60

60:                                               ; preds = %55, %53, %51, %49, %47, %45
  %61 = load i64, i64* @imx_soc_type.soctype, align 8
  store i64 %61, i64* %1, align 8
  br label %62

62:                                               ; preds = %60, %8
  %63 = load i64, i64* %1, align 8
  ret i64 %63
}

declare dso_local i32 @imx6_anatop_read_4(i32) #1

declare dso_local i32* @devmap_ptov(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

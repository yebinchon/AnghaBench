; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_cpuid.c_omap4_get_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_cpuid.c_omap4_get_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@OMAP44XX_L4_CORE_HWBASE = common dso_local global i32 0, align 4
@OMAP4_ID_CODE = common dso_local global i32 0, align 4
@OMAP4430_REV_ES1_0 = common dso_local global i64 0, align 8
@chip_revision = common dso_local global i64 0, align 8
@OMAP4430_REV_ES2_1 = common dso_local global i64 0, align 8
@OMAP4430_REV_UNKNOWN = common dso_local global i64 0, align 8
@OMAP4430_REV_ES2_2 = common dso_local global i64 0, align 8
@OMAP4430_REV_ES2_3 = common dso_local global i64 0, align 8
@OMAP4460_REV_ES1_0 = common dso_local global i64 0, align 8
@OMAP4460_REV_ES1_1 = common dso_local global i64 0, align 8
@OMAP4460_REV_UNKNOWN = common dso_local global i64 0, align 8
@OMAP4470_REV_ES1_0 = common dso_local global i64 0, align 8
@OMAP4470_REV_UNKNOWN = common dso_local global i64 0, align 8
@OMAP_UNKNOWN_DEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Texas Instruments OMAP%04x Processor, Revision ES%u.%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Texas Instruments unknown OMAP chip: %04x, rev %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @omap4_get_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap4_get_revision() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @fdtbus_bs_tag, align 4
  %6 = load i32, i32* @OMAP44XX_L4_CORE_HWBASE, align 4
  %7 = call i32 @bus_space_map(i32 %5, i32 %6, i32 16384, i32 0, i32* %4)
  %8 = load i32, i32* @fdtbus_bs_tag, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @OMAP4_ID_CODE, align 4
  %11 = call i32 @bus_space_read_4(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @fdtbus_bs_tag, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @bus_space_unmap(i32 %12, i32 %13, i32 16384)
  %15 = load i32, i32* %1, align 4
  %16 = ashr i32 %15, 12
  %17 = and i32 %16, 65535
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %1, align 4
  %19 = ashr i32 %18, 28
  %20 = and i32 %19, 15
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %0
  %24 = call i32 (...) @cp15_midr_get()
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = and i32 %25, 15
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %0
  %29 = load i32, i32* %3, align 4
  switch i32 %29, label %66 [
    i32 47186, label %30
    i32 47452, label %39
    i32 47438, label %50
    i32 47477, label %59
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %2, align 4
  switch i32 %31, label %36 [
    i32 0, label %32
    i32 1, label %34
  ]

32:                                               ; preds = %30
  %33 = load i64, i64* @OMAP4430_REV_ES1_0, align 8
  store i64 %33, i64* @chip_revision, align 8
  br label %38

34:                                               ; preds = %30
  %35 = load i64, i64* @OMAP4430_REV_ES2_1, align 8
  store i64 %35, i64* @chip_revision, align 8
  br label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @OMAP4430_REV_UNKNOWN, align 8
  store i64 %37, i64* @chip_revision, align 8
  br label %38

38:                                               ; preds = %36, %34, %32
  br label %68

39:                                               ; preds = %28
  %40 = load i32, i32* %2, align 4
  switch i32 %40, label %47 [
    i32 3, label %41
    i32 4, label %43
    i32 6, label %45
  ]

41:                                               ; preds = %39
  %42 = load i64, i64* @OMAP4430_REV_ES2_1, align 8
  store i64 %42, i64* @chip_revision, align 8
  br label %49

43:                                               ; preds = %39
  %44 = load i64, i64* @OMAP4430_REV_ES2_2, align 8
  store i64 %44, i64* @chip_revision, align 8
  br label %49

45:                                               ; preds = %39
  %46 = load i64, i64* @OMAP4430_REV_ES2_3, align 8
  store i64 %46, i64* @chip_revision, align 8
  br label %49

47:                                               ; preds = %39
  %48 = load i64, i64* @OMAP4430_REV_UNKNOWN, align 8
  store i64 %48, i64* @chip_revision, align 8
  br label %49

49:                                               ; preds = %47, %45, %43, %41
  br label %68

50:                                               ; preds = %28
  %51 = load i32, i32* %2, align 4
  switch i32 %51, label %56 [
    i32 0, label %52
    i32 2, label %54
  ]

52:                                               ; preds = %50
  %53 = load i64, i64* @OMAP4460_REV_ES1_0, align 8
  store i64 %53, i64* @chip_revision, align 8
  br label %58

54:                                               ; preds = %50
  %55 = load i64, i64* @OMAP4460_REV_ES1_1, align 8
  store i64 %55, i64* @chip_revision, align 8
  br label %58

56:                                               ; preds = %50
  %57 = load i64, i64* @OMAP4460_REV_UNKNOWN, align 8
  store i64 %57, i64* @chip_revision, align 8
  br label %58

58:                                               ; preds = %56, %54, %52
  br label %68

59:                                               ; preds = %28
  %60 = load i32, i32* %2, align 4
  switch i32 %60, label %63 [
    i32 0, label %61
  ]

61:                                               ; preds = %59
  %62 = load i64, i64* @OMAP4470_REV_ES1_0, align 8
  store i64 %62, i64* @chip_revision, align 8
  br label %65

63:                                               ; preds = %59
  %64 = load i64, i64* @OMAP4470_REV_UNKNOWN, align 8
  store i64 %64, i64* @chip_revision, align 8
  br label %65

65:                                               ; preds = %63, %61
  br label %68

66:                                               ; preds = %28
  %67 = load i64, i64* @OMAP_UNKNOWN_DEV, align 8
  store i64 %67, i64* @chip_revision, align 8
  br label %68

68:                                               ; preds = %66, %65, %58, %49, %38
  %69 = load i64, i64* @chip_revision, align 8
  %70 = load i64, i64* @OMAP_UNKNOWN_DEV, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i64, i64* @chip_revision, align 8
  %74 = call i32 @OMAP_REV_DEVICE(i64 %73)
  %75 = load i64, i64* @chip_revision, align 8
  %76 = call i32 @OMAP_REV_MAJOR(i64 %75)
  %77 = load i64, i64* @chip_revision, align 8
  %78 = call i32 @OMAP_REV_MINOR(i64 %77)
  %79 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %76, i32 %78)
  br label %84

80:                                               ; preds = %68
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %2, align 4
  %83 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %72
  ret void
}

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

declare dso_local i32 @cp15_midr_get(...) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i32 @OMAP_REV_DEVICE(i64) #1

declare dso_local i32 @OMAP_REV_MAJOR(i64) #1

declare dso_local i32 @OMAP_REV_MINOR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

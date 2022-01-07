; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_mp.c_exynos5_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_mp.c_exynos5_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@EXYNOS_PMU_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Couldn't map pmu\0A\00", align 1
@EXYNOS5420_SOC_ID = common dso_local global i64 0, align 8
@EXYNOS5420_SYSRAM_NS = common dso_local global i32 0, align 4
@EXYNOS_SYSRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Couldn't map sysram\0A\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@CORE_PWR_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't power on CPU%d\0A\00", align 1
@mpentry = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exynos5_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @fdtbus_bs_tag, align 4
  %11 = load i32, i32* @EXYNOS_PMU_BASE, align 4
  %12 = call i32 @bus_space_map(i32 %10, i32 %11, i32 131072, i32 0, i32* %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %1
  %18 = call i64 (...) @exynos_get_soc_id()
  %19 = load i64, i64* @EXYNOS5420_SOC_ID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @EXYNOS5420_SYSRAM_NS, align 4
  store i32 %22, i32* %9, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @EXYNOS_SYSRAM, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* @fdtbus_bs_tag, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @bus_space_map(i32 %26, i32 %27, i32 256, i32 0, i32* %3)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  store i32 1, i32* %6, align 4
  br label %34

34:                                               ; preds = %72, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @mp_ncpus, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = load i32, i32* @fdtbus_bs_tag, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @CORE_CONFIG(i32 %41)
  %43 = load i32, i32* @CORE_PWR_EN, align 4
  %44 = call i32 @bus_space_write_4(i32 %39, i32 %40, i32 %42, i32 %43)
  store i32 10, i32* %7, align 4
  br label %45

45:                                               ; preds = %68, %38
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load i32, i32* @fdtbus_bs_tag, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @CORE_STATUS(i32 %51)
  %53 = call i32 @bus_space_read_4(i32 %49, i32 %50, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @CORE_PWR_EN, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @CORE_PWR_EN, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %71

60:                                               ; preds = %48
  %61 = call i32 @DELAY(i32 10)
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  br label %45

71:                                               ; preds = %59, %45
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %34

75:                                               ; preds = %34
  %76 = load i32, i32* @fdtbus_bs_tag, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i64, i64* @mpentry, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @pmap_kextract(i32 %79)
  %81 = call i32 @bus_space_write_4(i32 %76, i32 %77, i32 0, i32 %80)
  %82 = call i32 (...) @dcache_wbinv_poc_all()
  %83 = call i32 (...) @dsb()
  %84 = call i32 (...) @sev()
  %85 = load i32, i32* @fdtbus_bs_tag, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @bus_space_unmap(i32 %85, i32 %86, i32 256)
  %88 = load i32, i32* @fdtbus_bs_tag, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @bus_space_unmap(i32 %88, i32 %89, i32 131072)
  ret void
}

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @exynos_get_soc_id(...) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @CORE_CONFIG(i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @CORE_STATUS(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @dcache_wbinv_poc_all(...) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @sev(...) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

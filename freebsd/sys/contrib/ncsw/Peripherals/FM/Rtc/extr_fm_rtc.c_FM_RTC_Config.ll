; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fm_rtc.c_FM_RTC_Config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fm_rtc.c_FM_RTC_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_cfg = type { i32, %struct.rtc_regs*, i32, i32, %struct.rtc_cfg*, i32, i32 }
%struct.rtc_regs = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@E_NULL_POINTER = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"FM RTC driver structure\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"FM RTC driver parameters\00", align 1
@DEFAULT_OUTPUT_CLOCK_DIVISOR = common dso_local global i32 0, align 4
@DEFAULT_BYPASS = common dso_local global i32 0, align 4
@DEFAULT_CLOCK_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtc_cfg* @FM_RTC_Config(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.rtc_cfg*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.rtc_cfg*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = load i32, i32* @E_NULL_POINTER, align 4
  %7 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_4__* %5, i32 %6, i32* null)
  %8 = call i64 @XX_Malloc(i32 40)
  %9 = inttoptr i64 %8 to %struct.rtc_cfg*
  store %struct.rtc_cfg* %9, %struct.rtc_cfg** %4, align 8
  %10 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %11 = icmp ne %struct.rtc_cfg* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @MAJOR, align 4
  %14 = load i32, i32* @E_NO_MEMORY, align 4
  %15 = call i32 @REPORT_ERROR(i32 %13, i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.rtc_cfg* null, %struct.rtc_cfg** %2, align 8
  br label %71

16:                                               ; preds = %1
  %17 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %18 = call i32 @memset(%struct.rtc_cfg* %17, i32 0, i32 40)
  %19 = call i64 @XX_Malloc(i32 40)
  %20 = inttoptr i64 %19 to %struct.rtc_cfg*
  %21 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %21, i32 0, i32 4
  store %struct.rtc_cfg* %20, %struct.rtc_cfg** %22, align 8
  %23 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %23, i32 0, i32 4
  %25 = load %struct.rtc_cfg*, %struct.rtc_cfg** %24, align 8
  %26 = icmp ne %struct.rtc_cfg* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @MAJOR, align 4
  %29 = load i32, i32* @E_NO_MEMORY, align 4
  %30 = call i32 @REPORT_ERROR(i32 %28, i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %32 = call i32 @XX_Free(%struct.rtc_cfg* %31)
  store %struct.rtc_cfg* null, %struct.rtc_cfg** %2, align 8
  br label %71

33:                                               ; preds = %16
  %34 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %35 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %34, i32 0, i32 4
  %36 = load %struct.rtc_cfg*, %struct.rtc_cfg** %35, align 8
  %37 = call i32 @memset(%struct.rtc_cfg* %36, i32 0, i32 40)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %44 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %43, i32 0, i32 4
  %45 = load %struct.rtc_cfg*, %struct.rtc_cfg** %44, align 8
  %46 = call i32 @fman_rtc_defconfig(%struct.rtc_cfg* %45)
  %47 = load i32, i32* @DEFAULT_OUTPUT_CLOCK_DIVISOR, align 4
  %48 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @DEFAULT_BYPASS, align 4
  %51 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %51, i32 0, i32 4
  %53 = load %struct.rtc_cfg*, %struct.rtc_cfg** %52, align 8
  %54 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %53, i32 0, i32 3
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @DEFAULT_CLOCK_PERIOD, align 4
  %56 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @UINT_TO_PTR(i32 %60)
  %62 = inttoptr i64 %61 to %struct.rtc_regs*
  %63 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %63, i32 0, i32 1
  store %struct.rtc_regs* %62, %struct.rtc_regs** %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %69 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  store %struct.rtc_cfg* %70, %struct.rtc_cfg** %2, align 8
  br label %71

71:                                               ; preds = %33, %27, %12
  %72 = load %struct.rtc_cfg*, %struct.rtc_cfg** %2, align 8
  ret %struct.rtc_cfg* %72
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.rtc_cfg*, i32, i32) #1

declare dso_local i32 @XX_Free(%struct.rtc_cfg*) #1

declare dso_local i32 @fman_rtc_defconfig(%struct.rtc_cfg*) #1

declare dso_local i64 @UINT_TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

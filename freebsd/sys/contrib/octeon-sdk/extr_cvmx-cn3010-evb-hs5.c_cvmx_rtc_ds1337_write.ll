; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cn3010-evb-hs5.c_cvmx_rtc_ds1337_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cn3010-evb-hs5.c_cvmx_rtc_ds1337_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Error: RTC was passed wrong calendar values, write failed\0A\00", align 1
@CVMX_RTC_DS1337_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_rtc_ds1337_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %10, align 4
  %12 = call i32 @localtime_r(i32* %10, %struct.tm* %7)
  %13 = call i64 @validate_tm_struct(%struct.tm* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %96

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bin2bcd(i32 %19)
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bin2bcd(i32 %23)
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bin2bcd(i32 %27)
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @bin2bcd(i32 %32)
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bin2bcd(i32 %36)
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  store i32 %37, i32* %38, align 16
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @bin2bcd(i32 %41)
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 100
  br i1 %46, label %47, label %51

47:                                               ; preds = %17
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, 128
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %47, %17
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %53, 100
  %55 = call i32 @bin2bcd(i32 %54)
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  store i32 %55, i32* %56, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %88, %51
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 7
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, i32* @CVMX_RTC_DS1337_ADDR, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cvmx_twsi_write8(i32 %65, i32 %66, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %61

77:                                               ; preds = %61
  %78 = load i32, i32* @CVMX_RTC_DS1337_ADDR, align 4
  %79 = call i32 @cvmx_twsi_read8(i32 %78, i32 0)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 15
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %83 = load i32, i32* %82, align 16
  %84 = and i32 %83, 15
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %91

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %57

91:                                               ; preds = %86, %57
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 -1, i32 0
  store i32 %95, i32* %2, align 4
  br label %97

96:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %91
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i64 @validate_tm_struct(%struct.tm*) #1

declare dso_local i32 @cvmx_dprintf(i8*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @cvmx_twsi_write8(i32, i32, i32) #1

declare dso_local i32 @cvmx_twsi_read8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

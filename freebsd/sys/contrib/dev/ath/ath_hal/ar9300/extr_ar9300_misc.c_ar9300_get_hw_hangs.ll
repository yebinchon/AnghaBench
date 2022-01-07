; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_get_hw_hangs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_get_hw_hangs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32 }

@HAL_CAP_BB_RIFS_HANG = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i64 0, align 8
@HAL_RIFS_BB_HANG_WAR = common dso_local global i32 0, align 4
@HAL_CAP_BB_DFS_HANG = common dso_local global i32 0, align 4
@HAL_DFS_BB_HANG_WAR = common dso_local global i32 0, align 4
@HAL_CAP_BB_RX_CLEAR_STUCK_HANG = common dso_local global i32 0, align 4
@HAL_RX_STUCK_LOW_BB_HANG_WAR = common dso_local global i32 0, align 4
@HAL_CAP_MAC_HANG = common dso_local global i32 0, align 4
@HAL_MAC_HANG_WAR = common dso_local global i32 0, align 4
@HAL_CAP_PHYRESTART_CLR_WAR = common dso_local global i32 0, align 4
@HAL_PHYRESTART_CLR_WAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_get_hw_hangs(%struct.ath_hal* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %6)
  store %struct.ath_hal_9300* %7, %struct.ath_hal_9300** %5, align 8
  %8 = load i32*, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = load i32, i32* @HAL_CAP_BB_RIFS_HANG, align 4
  %11 = load i32, i32* @AH_NULL, align 4
  %12 = call i64 @ar9300_get_capability(%struct.ath_hal* %9, i32 %10, i32 0, i32 %11)
  %13 = load i64, i64* @HAL_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @HAL_RIFS_BB_HANG_WAR, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = load i32, i32* @HAL_CAP_BB_DFS_HANG, align 4
  %23 = load i32, i32* @AH_NULL, align 4
  %24 = call i64 @ar9300_get_capability(%struct.ath_hal* %21, i32 %22, i32 0, i32 %23)
  %25 = load i64, i64* @HAL_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* @HAL_DFS_BB_HANG_WAR, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %34 = load i32, i32* @HAL_CAP_BB_RX_CLEAR_STUCK_HANG, align 4
  %35 = load i32, i32* @AH_NULL, align 4
  %36 = call i64 @ar9300_get_capability(%struct.ath_hal* %33, i32 %34, i32 0, i32 %35)
  %37 = load i64, i64* @HAL_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @HAL_RX_STUCK_LOW_BB_HANG_WAR, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %32
  %45 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %46 = load i32, i32* @HAL_CAP_MAC_HANG, align 4
  %47 = load i32, i32* @AH_NULL, align 4
  %48 = call i64 @ar9300_get_capability(%struct.ath_hal* %45, i32 %46, i32 0, i32 %47)
  %49 = load i64, i64* @HAL_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @HAL_MAC_HANG_WAR, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %44
  %57 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %58 = load i32, i32* @HAL_CAP_PHYRESTART_CLR_WAR, align 4
  %59 = load i32, i32* @AH_NULL, align 4
  %60 = call i64 @ar9300_get_capability(%struct.ath_hal* %57, i32 %58, i32 0, i32 %59)
  %61 = load i64, i64* @HAL_OK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32, i32* @HAL_PHYRESTART_CLR_WAR, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %56
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %72 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i64 @ar9300_get_capability(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit.c_ar9300_update_tx_trig_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit.c_ar9300_update_tx_trig_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i64, i32 }

@MAX_TX_FIFO_THRESHOLD = common dso_local global i64 0, align 8
@AH_FALSE = common dso_local global i32 0, align 4
@HAL_INT_GLOBAL = common dso_local global i32 0, align 4
@AR_TXCFG = common dso_local global i32 0, align 4
@AR_FTRIG = common dso_local global i64 0, align 8
@MIN_TX_FIFO_THRESHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_update_tx_trig_level(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal_9300*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %12 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %11)
  store %struct.ath_hal_9300* %12, %struct.ath_hal_9300** %6, align 8
  %13 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %14 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %13)
  %15 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAX_TX_FIFO_THRESHOLD, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @AH_FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %86

24:                                               ; preds = %19, %2
  %25 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %26 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %27 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @HAL_INT_GLOBAL, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @ar9300_set_interrupts(%struct.ath_hal* %25, i32 %31, i32 0)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %34 = load i32, i32* @AR_TXCFG, align 4
  %35 = call i64 @OS_REG_READ(%struct.ath_hal* %33, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @AR_FTRIG, align 8
  %38 = call i64 @MS(i64 %36, i64 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %9, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %24
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @MAX_TX_FIFO_THRESHOLD, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %46, %42
  br label %58

50:                                               ; preds = %24
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @MIN_TX_FIFO_THRESHOLD, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %64 = load i32, i32* @AR_TXCFG, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @AR_FTRIG, align 8
  %67 = xor i64 %66, -1
  %68 = and i64 %65, %67
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @AR_FTRIG, align 8
  %71 = call i64 @SM(i64 %69, i64 %70)
  %72 = or i64 %68, %71
  %73 = call i32 @OS_REG_WRITE(%struct.ath_hal* %63, i32 %64, i64 %72)
  br label %74

74:                                               ; preds = %62, %58
  %75 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ar9300_set_interrupts(%struct.ath_hal* %75, i32 %76, i32 0)
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %80 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %79)
  %81 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %74, %22
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_set_interrupts(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @MS(i64, i64) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i64) #1

declare dso_local i64 @SM(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit.c_ar9300_num_tx_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit.c_ar9300_num_tx_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@AR_Q_STS_PEND_FR_CNT = common dso_local global i32 0, align 4
@AR_Q_TXE = common dso_local global i32 0, align 4
@HAL_TX_QUEUE_INACTIVE = common dso_local global i64 0, align 8
@AR_Q_RDYTIMESHDN = common dso_local global i32 0, align 4
@HAL_DEBUG_QUEUE = common dso_local global i32 0, align 4
@HAL_TX_QUEUE_CAB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_num_tx_pending(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.TYPE_7__* @AH_PRIVATE(%struct.ath_hal* %7)
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %6, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @HALASSERT(i32 %13)
  %15 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @AR_QSTS(i32 %16)
  %18 = call i32 @OS_REG_READ(%struct.ath_hal* %15, i32 %17)
  %19 = load i32, i32* @AR_Q_STS_PEND_FR_CNT, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %25 = load i32, i32* @AR_Q_TXE, align 4
  %26 = call i32 @OS_REG_READ(%struct.ath_hal* %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = call %struct.TYPE_8__* @AH9300(%struct.ath_hal* %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HAL_TX_QUEUE_INACTIVE, align 8
  %47 = icmp ne i64 %45, %46
  br label %48

48:                                               ; preds = %36, %33
  %49 = phi i1 [ true, %33 ], [ %47, %36 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @HALASSERT(i32 %50)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local %struct.TYPE_7__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_QSTS(i32) #1

declare dso_local %struct.TYPE_8__* @AH9300(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

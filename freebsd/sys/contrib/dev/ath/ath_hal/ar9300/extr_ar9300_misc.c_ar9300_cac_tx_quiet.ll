; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_cac_tx_quiet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_cac_tx_quiet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i64 }

@MAC_PCU_MISC_MODE = common dso_local global i32 0, align 4
@MAC_PCU_QUIET_TIME_1 = common dso_local global i32 0, align 4
@AR_PCU_FORCE_QUIET_COLL = common dso_local global i32 0, align 4
@AR_QUIET1_QUIET_ACK_CTS_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_cac_tx_quiet(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = load i32, i32* @MAC_PCU_MISC_MODE, align 4
  %9 = call i32 @AR_MAC_PCU_OFFSET(i32 %8)
  %10 = call i32 @OS_REG_READ(%struct.ath_hal* %7, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %12 = load i32, i32* @MAC_PCU_QUIET_TIME_1, align 4
  %13 = call i32 @AR_MAC_PCU_OFFSET(i32 %12)
  %14 = call i32 @OS_REG_READ(%struct.ath_hal* %11, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %23 = load i32, i32* @MAC_PCU_MISC_MODE, align 4
  %24 = call i32 @AR_MAC_PCU_OFFSET(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @AR_PCU_FORCE_QUIET_COLL, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @OS_REG_WRITE(%struct.ath_hal* %22, i32 %24, i32 %27)
  %29 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %30 = load i32, i32* @MAC_PCU_QUIET_TIME_1, align 4
  %31 = call i32 @AR_MAC_PCU_OFFSET(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @AR_QUIET1_QUIET_ACK_CTS_ENABLE, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @OS_REG_WRITE(%struct.ath_hal* %29, i32 %31, i32 %35)
  br label %53

37:                                               ; preds = %2
  %38 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %39 = load i32, i32* @MAC_PCU_MISC_MODE, align 4
  %40 = call i32 @AR_MAC_PCU_OFFSET(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @AR_PCU_FORCE_QUIET_COLL, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @OS_REG_WRITE(%struct.ath_hal* %38, i32 %40, i32 %44)
  %46 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %47 = load i32, i32* @MAC_PCU_QUIET_TIME_1, align 4
  %48 = call i32 @AR_MAC_PCU_OFFSET(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @AR_QUIET1_QUIET_ACK_CTS_ENABLE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @OS_REG_WRITE(%struct.ath_hal* %46, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %37, %21
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_MAC_PCU_OFFSET(i32) #1

declare dso_local %struct.TYPE_2__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

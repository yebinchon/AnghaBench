; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_operating_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_operating_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_STA_AP = common dso_local global i32 0, align 4
@AR_STA_ID1_ADHOC = common dso_local global i32 0, align 4
@AR_STA_ID1_KSRCH_MODE = common dso_local global i32 0, align 4
@AR_CFG = common dso_local global i32 0, align 4
@AR_CFG_AP_ADHOC_INDICATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_set_operating_mode(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* @AR_STA_ID1, align 4
  %8 = call i32 @OS_REG_READ(%struct.ath_hal* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @AR_STA_ID1_STA_AP, align 4
  %10 = load i32, i32* @AR_STA_ID1_ADHOC, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %49 [
    i32 131, label %16
    i32 130, label %29
    i32 128, label %42
    i32 129, label %42
  ]

16:                                               ; preds = %2
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = load i32, i32* @AR_STA_ID1, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AR_STA_ID1_STA_AP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @AR_STA_ID1_KSRCH_MODE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @OS_REG_WRITE(%struct.ath_hal* %17, i32 %18, i32 %23)
  %25 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %26 = load i32, i32* @AR_CFG, align 4
  %27 = load i32, i32* @AR_CFG_AP_ADHOC_INDICATION, align 4
  %28 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %25, i32 %26, i32 %27)
  br label %49

29:                                               ; preds = %2
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = load i32, i32* @AR_STA_ID1, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @AR_STA_ID1_ADHOC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @AR_STA_ID1_KSRCH_MODE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @OS_REG_WRITE(%struct.ath_hal* %30, i32 %31, i32 %36)
  %38 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %39 = load i32, i32* @AR_CFG, align 4
  %40 = load i32, i32* @AR_CFG_AP_ADHOC_INDICATION, align 4
  %41 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %38, i32 %39, i32 %40)
  br label %49

42:                                               ; preds = %2, %2
  %43 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %44 = load i32, i32* @AR_STA_ID1, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @AR_STA_ID1_KSRCH_MODE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @OS_REG_WRITE(%struct.ath_hal* %43, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %2, %42, %29, %16
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

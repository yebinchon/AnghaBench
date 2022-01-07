; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_spectral.c_ar9300_get_ext_chan_nf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_spectral.c_ar9300_get_ext_chan_nf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NF = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_EXT_MINCCA_PWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_get_ext_chan_nf(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %6 = call i32 @OS_REG_READ(%struct.ath_hal* %4, i32 %5)
  %7 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %12 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %13 = call i32 @OS_REG_READ(%struct.ath_hal* %11, i32 %12)
  %14 = load i32, i32* @AR_PHY_EXT_MINCCA_PWR, align 4
  %15 = call i32 @MS(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %18 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %16, %10
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 256
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = xor i32 %28, 511
  %30 = add nsw i32 %29, 1
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local %struct.TYPE_4__* @AH9300(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

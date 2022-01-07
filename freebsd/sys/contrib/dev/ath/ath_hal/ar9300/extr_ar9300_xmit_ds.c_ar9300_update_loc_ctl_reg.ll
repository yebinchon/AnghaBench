; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_update_loc_ctl_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_update_loc_ctl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_LOC_CTL_REG = common dso_local global i32 0, align 4
@AR_LOC_CTL_REG_FS = common dso_local global i32 0, align 4
@AR_LOC_TIMER_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_update_loc_ctl_reg(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* @AR_LOC_CTL_REG, align 4
  %8 = call i32 @OS_REG_READ(%struct.ath_hal* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AR_LOC_CTL_REG_FS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = load i32, i32* @AR_LOC_CTL_REG, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AR_LOC_CTL_REG_FS, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @OS_REG_WRITE(%struct.ath_hal* %17, i32 %18, i32 %21)
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = load i32, i32* @AR_LOC_TIMER_REG, align 4
  %25 = call i32 @OS_REG_WRITE(%struct.ath_hal* %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %16, %11
  br label %35

27:                                               ; preds = %2
  %28 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %29 = load i32, i32* @AR_LOC_CTL_REG, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @AR_LOC_CTL_REG_FS, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @OS_REG_WRITE(%struct.ath_hal* %28, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

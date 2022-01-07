; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_ani.c_ar9300_ani_ofdm_err_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_ani.c_ar9300_ani_ofdm_err_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { %struct.ar9300_ani_state* }
%struct.ar9300_ani_state = type { i64 }

@HAL_ANI_OFDM_MAX_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar9300_ani_ofdm_err_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_ani_ofdm_err_trigger(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_9300*, align 8
  %4 = alloca %struct.ar9300_ani_state*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %5)
  store %struct.ath_hal_9300* %6, %struct.ath_hal_9300** %3, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %8 = call i32 @DO_ANI(%struct.ath_hal* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %12, i32 0, i32 0
  %14 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %13, align 8
  store %struct.ar9300_ani_state* %14, %struct.ar9300_ani_state** %4, align 8
  %15 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %4, align 8
  %16 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HAL_ANI_OFDM_MAX_LEVEL, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %22 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %4, align 8
  %23 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @ar9300_ani_set_odfm_noise_immunity_level(%struct.ath_hal* %21, i64 %25)
  br label %27

27:                                               ; preds = %10, %20, %11
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @DO_ANI(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_ani_set_odfm_noise_immunity_level(%struct.ath_hal*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

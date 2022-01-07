; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_ani.c_ar9300_ani_lower_immunity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_ani.c_ar9300_ani_lower_immunity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { %struct.ar9300_ani_state* }
%struct.ar9300_ani_state = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar9300_ani_lower_immunity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_ani_lower_immunity(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_9300*, align 8
  %4 = alloca %struct.ar9300_ani_state*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %5)
  store %struct.ath_hal_9300* %6, %struct.ath_hal_9300** %3, align 8
  %7 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %7, i32 0, i32 0
  %9 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %8, align 8
  store %struct.ar9300_ani_state* %9, %struct.ar9300_ani_state** %4, align 8
  %10 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %4, align 8
  %11 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %4, align 8
  %16 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %4, align 8
  %21 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %14
  %25 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %26 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %4, align 8
  %27 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @ar9300_ani_set_odfm_noise_immunity_level(%struct.ath_hal* %25, i64 %29)
  br label %43

31:                                               ; preds = %19, %1
  %32 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %4, align 8
  %33 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %38 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %4, align 8
  %39 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 1
  %42 = call i32 @ar9300_ani_set_cck_noise_immunity_level(%struct.ath_hal* %37, i64 %41)
  br label %43

43:                                               ; preds = %24, %36, %31
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_ani_set_odfm_noise_immunity_level(%struct.ath_hal*, i64) #1

declare dso_local i32 @ar9300_ani_set_cck_noise_immunity_level(%struct.ath_hal*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

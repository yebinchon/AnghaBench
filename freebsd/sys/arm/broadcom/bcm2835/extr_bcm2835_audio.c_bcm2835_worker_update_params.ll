; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_worker_update_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_worker_update_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_info = type { i32, i32 }

@AUDIO_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_audio_info*)* @bcm2835_worker_update_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_worker_update_params(%struct.bcm2835_audio_info* %0) #0 {
  %2 = alloca %struct.bcm2835_audio_info*, align 8
  store %struct.bcm2835_audio_info* %0, %struct.bcm2835_audio_info** %2, align 8
  %3 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %4 = call i32 @BCM2835_AUDIO_LOCKED(%struct.bcm2835_audio_info* %3)
  %5 = load i32, i32* @AUDIO_PARAMS, align 4
  %6 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %7 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %11 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %10, i32 0, i32 0
  %12 = call i32 @cv_signal(i32* %11)
  ret void
}

declare dso_local i32 @BCM2835_AUDIO_LOCKED(%struct.bcm2835_audio_info*) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

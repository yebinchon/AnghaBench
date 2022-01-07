; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_info = type { i64, i32, i32 }

@WORKER_STOPPING = common dso_local global i64 0, align 8
@WORKER_STOPPED = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm2835_audio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_audio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm2835_audio_info*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.bcm2835_audio_info* @pcm_getdevinfo(i32 %6)
  store %struct.bcm2835_audio_info* %7, %struct.bcm2835_audio_info** %5, align 8
  %8 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %5, align 8
  %9 = call i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info* %8)
  %10 = load i64, i64* @WORKER_STOPPING, align 8
  %11 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %5, align 8
  %12 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %5, align 8
  %14 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %13, i32 0, i32 1
  %15 = call i32 @cv_signal(i32* %14)
  br label %16

16:                                               ; preds = %22, %1
  %17 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %5, align 8
  %18 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WORKER_STOPPED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %5, align 8
  %24 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %23, i32 0, i32 1
  %25 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %5, align 8
  %26 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %25, i32 0, i32 2
  %27 = call i32 @cv_wait_sig(i32* %24, i32* %26)
  br label %16

28:                                               ; preds = %16
  %29 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %5, align 8
  %30 = call i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info* %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @pcm_unregister(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %28
  %38 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %5, align 8
  %39 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %38, i32 0, i32 2
  %40 = call i32 @mtx_destroy(i32* %39)
  %41 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %5, align 8
  %42 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %41, i32 0, i32 1
  %43 = call i32 @cv_destroy(i32* %42)
  %44 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %5, align 8
  %45 = call i32 @bcm2835_audio_release(%struct.bcm2835_audio_info* %44)
  %46 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %5, align 8
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = call i32 @free(%struct.bcm2835_audio_info* %46, i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %37, %35
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.bcm2835_audio_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info*) #1

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @bcm2835_audio_release(%struct.bcm2835_audio_info*) #1

declare dso_local i32 @free(%struct.bcm2835_audio_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

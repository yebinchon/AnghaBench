; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_buffer_should_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_buffer_should_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_chinfo = type { i64, i64, i32, i32 }

@PLAYBACK_PLAYING = common dso_local global i64 0, align 8
@VCHIQ_AUDIO_PACKET_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"starve\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_audio_chinfo*)* @bcm2835_audio_buffer_should_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_audio_buffer_should_sleep(%struct.bcm2835_audio_chinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm2835_audio_chinfo*, align 8
  store %struct.bcm2835_audio_chinfo* %0, %struct.bcm2835_audio_chinfo** %3, align 8
  %4 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %3, align 8
  %5 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PLAYBACK_PLAYING, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %3, align 8
  %12 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @sndbuf_getready(i32 %13)
  %15 = load i64, i64* @VCHIQ_AUDIO_PACKET_SIZE, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %3, align 8
  %20 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  store i32 1, i32* %2, align 4
  br label %31

23:                                               ; preds = %10
  %24 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %3, align 8
  %25 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VCHIQ_AUDIO_PACKET_SIZE, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %17, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @sndbuf_getready(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

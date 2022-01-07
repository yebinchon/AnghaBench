; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_info = type { i64, i32 }

@VCHIQ_SERVICE_HANDLE_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"vchi_service_close failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_audio_info*)* @bcm2835_audio_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_audio_release(%struct.bcm2835_audio_info* %0) #0 {
  %2 = alloca %struct.bcm2835_audio_info*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm2835_audio_info* %0, %struct.bcm2835_audio_info** %2, align 8
  %4 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %5 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @VCHIQ_SERVICE_HANDLE_INVALID, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %11 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @vchi_service_close(i64 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %9
  %20 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %21 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @vchi_service_release(i64 %22)
  %24 = load i64, i64* @VCHIQ_SERVICE_HANDLE_INVALID, align 8
  %25 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %26 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %29 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @vchi_disconnect(i32 %30)
  ret void
}

declare dso_local i32 @vchi_service_close(i64) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @vchi_service_release(i64) #1

declare dso_local i32 @vchi_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

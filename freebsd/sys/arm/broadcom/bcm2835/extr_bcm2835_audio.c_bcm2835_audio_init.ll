; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_info = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.bcm2835_audio_info*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"vchi_initialise failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"vchi_connect failed: %d\0A\00", align 1
@VC_AUDIOSERV_VER = common dso_local global i32 0, align 4
@VC_AUDIOSERV_MIN_VER = common dso_local global i32 0, align 4
@VC_AUDIO_SERVER_NAME = common dso_local global i32 0, align 4
@bcm2835_audio_callback = common dso_local global i32 0, align 4
@VCHIQ_SERVICE_HANDLE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_audio_info*)* @bcm2835_audio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_audio_init(%struct.bcm2835_audio_info* %0) #0 {
  %2 = alloca %struct.bcm2835_audio_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  store %struct.bcm2835_audio_info* %0, %struct.bcm2835_audio_info** %2, align 8
  %5 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %6 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %5, i32 0, i32 1
  %7 = call i32 @vchi_initialise(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %15 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vchi_connect(i32* null, i32 0, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %56

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %25 = load i32, i32* @VC_AUDIOSERV_VER, align 4
  %26 = load i32, i32* @VC_AUDIOSERV_MIN_VER, align 4
  %27 = call i32 @VCHI_VERSION_EX(i32 %25, i32 %26)
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %29 = load i32, i32* @VC_AUDIO_SERVER_NAME, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %31 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %32 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store %struct.bcm2835_audio_info* null, %struct.bcm2835_audio_info** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 5
  %37 = load i32, i32* @bcm2835_audio_callback, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 6
  %39 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %40 = ptrtoint %struct.bcm2835_audio_info* %39 to i32
  store i32 %40, i32* %38, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 7
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 8
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 9
  store i32 0, i32* %43, align 4
  %44 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %45 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %48 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %47, i32 0, i32 0
  %49 = call i32 @vchi_service_open(i32 %46, %struct.TYPE_3__* %4, i32* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %23
  %53 = load i32, i32* @VCHIQ_SERVICE_HANDLE_INVALID, align 4
  %54 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %55 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %10, %20, %52, %23
  ret void
}

declare dso_local i32 @vchi_initialise(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @vchi_connect(i32*, i32, i32) #1

declare dso_local i32 @VCHI_VERSION_EX(i32, i32) #1

declare dso_local i32 @vchi_service_open(i32, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

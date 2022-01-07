; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_info = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.bcm2835_audio_info*, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@VCHIQ_AUDIO_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bcm_audio_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"worker_cv\00", align 1
@VCHIQ_SERVICE_HANDLE_INVALID = common dso_local global i32 0, align 4
@bcm2835_audio_delayed_init = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm2835_audio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_audio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm2835_audio_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.bcm2835_audio_info* @malloc(i32 40, i32 %5, i32 %8)
  store %struct.bcm2835_audio_info* %9, %struct.bcm2835_audio_info** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %4, align 8
  %12 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @VCHIQ_AUDIO_BUFFER_SIZE, align 4
  %14 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %4, align 8
  %15 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %4, align 8
  %17 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %16, i32 0, i32 3
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_nameunit(i32 %18)
  %20 = load i32, i32* @MTX_DEF, align 4
  %21 = call i32 @mtx_init(i32* %17, i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %4, align 8
  %23 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %22, i32 0, i32 2
  %24 = call i32 @cv_init(i32* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @VCHIQ_SERVICE_HANDLE_INVALID, align 4
  %26 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %4, align 8
  %27 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @bcm2835_audio_delayed_init, align 4
  %29 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %4, align 8
  %30 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %4, align 8
  %33 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %4, align 8
  %34 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.bcm2835_audio_info* %32, %struct.bcm2835_audio_info** %35, align 8
  %36 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %4, align 8
  %37 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %36, i32 0, i32 0
  %38 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %42

41:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

42:                                               ; preds = %40
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.bcm2835_audio_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_delayed_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_delayed_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_info = type { i32, i32, i32, i32, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@DEST_AUTO = common dso_local global i32 0, align 4
@bcmmixer_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"mixer_init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"pcm_register failed\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@bcmchan_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"at VCHIQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bcm2835_audio_delayed_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_audio_delayed_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bcm2835_audio_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @SND_STATUSLEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.bcm2835_audio_info*
  store %struct.bcm2835_audio_info* %11, %struct.bcm2835_audio_info** %3, align 8
  %12 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %13 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %12, i32 0, i32 4
  %14 = call i32 @config_intrhook_disestablish(i32* %13)
  %15 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %16 = call i32 @bcm2835_audio_init(%struct.bcm2835_audio_info* %15)
  %17 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %18 = call i32 @bcm2835_audio_open(%struct.bcm2835_audio_info* %17)
  %19 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %20 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %19, i32 0, i32 0
  store i32 75, i32* %20, align 4
  %21 = load i32, i32* @DEST_AUTO, align 4
  %22 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %23 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %25 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %28 = call i64 @mixer_init(i32 %26, i32* @bcmmixer_class, %struct.bcm2835_audio_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %32 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %67

35:                                               ; preds = %1
  %36 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %37 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %40 = call i64 @pcm_register(i32 %38, %struct.bcm2835_audio_info* %39, i32 1, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %44 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %67

47:                                               ; preds = %35
  %48 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %49 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PCMDIR_PLAY, align 4
  %52 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %53 = call i32 @pcm_addchan(i32 %50, i32 %51, i32* @bcmchan_class, %struct.bcm2835_audio_info* %52)
  %54 = load i32, i32* @SND_STATUSLEN, align 4
  %55 = call i32 @snprintf(i8* %9, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %57 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pcm_setstatus(i32 %58, i8* %9)
  %60 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %61 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %60, i32 0, i32 1
  %62 = call i32 @bcm2835_audio_reset_channel(i32* %61)
  %63 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %64 = call i32 @bcm2835_audio_create_worker(%struct.bcm2835_audio_info* %63)
  %65 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %66 = call i32 @vchi_audio_sysctl_init(%struct.bcm2835_audio_info* %65)
  br label %67

67:                                               ; preds = %47, %42, %30
  %68 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #2

declare dso_local i32 @bcm2835_audio_init(%struct.bcm2835_audio_info*) #2

declare dso_local i32 @bcm2835_audio_open(%struct.bcm2835_audio_info*) #2

declare dso_local i64 @mixer_init(i32, i32*, %struct.bcm2835_audio_info*) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i64 @pcm_register(i32, %struct.bcm2835_audio_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.bcm2835_audio_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @bcm2835_audio_reset_channel(i32*) #2

declare dso_local i32 @bcm2835_audio_create_worker(%struct.bcm2835_audio_info*) #2

declare dso_local i32 @vchi_audio_sysctl_init(%struct.bcm2835_audio_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

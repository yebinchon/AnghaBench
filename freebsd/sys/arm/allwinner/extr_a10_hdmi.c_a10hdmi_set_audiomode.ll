; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_set_audiomode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_set_audiomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i32 }
%struct.a10hdmi_softc = type { i32 }

@HDMI_AUD_CTRL = common dso_local global i32 0, align 4
@AUD_CTRL_RST = common dso_local global i32 0, align 4
@HDMI_AUDIO_RESET_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timeout waiting for audio module\0A\00", align 1
@HDMI_ADMA_CTRL = common dso_local global i32 0, align 4
@HDMI_ADMA_MODE_DDMA = common dso_local global i32 0, align 4
@HDMI_AUD_FMT = common dso_local global i32 0, align 4
@HDMI_AUDIO_CHANNELS = common dso_local global i32 0, align 4
@HDMI_PCM_CTRL = common dso_local global i32 0, align 4
@HDMI_AUDIO_CHANNELMAP = common dso_local global i32 0, align 4
@HDMI_AUD_CTS = common dso_local global i32 0, align 4
@HDMI_AUDIO_N = common dso_local global i32 0, align 4
@HDMI_AUD_N = common dso_local global i32 0, align 4
@HDMI_AUD_CH_STATUS0 = common dso_local global i32 0, align 4
@CH_STATUS0_FS_FREQ_48 = common dso_local global i32 0, align 4
@HDMI_AUD_CH_STATUS1 = common dso_local global i32 0, align 4
@CH_STATUS1_WORD_LEN_16 = common dso_local global i32 0, align 4
@AUD_CTRL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.videomode*)* @a10hdmi_set_audiomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10hdmi_set_audiomode(i32 %0, %struct.videomode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.videomode*, align 8
  %5 = alloca %struct.a10hdmi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.videomode* %1, %struct.videomode** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.a10hdmi_softc* @device_get_softc(i32 %8)
  store %struct.a10hdmi_softc* %9, %struct.a10hdmi_softc** %5, align 8
  %10 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %11 = load i32, i32* @HDMI_AUD_CTRL, align 4
  %12 = load i32, i32* @AUD_CTRL_RST, align 4
  %13 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @HDMI_AUDIO_RESET_RETRY, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %28, %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %20 = load i32, i32* @HDMI_AUD_CTRL, align 4
  %21 = call i32 @HDMI_READ(%struct.a10hdmi_softc* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AUD_CTRL_RST, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %7, align 4
  br label %15

31:                                               ; preds = %26, %15
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %81

37:                                               ; preds = %31
  %38 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %39 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %81

43:                                               ; preds = %37
  %44 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %45 = load i32, i32* @HDMI_ADMA_CTRL, align 4
  %46 = load i32, i32* @HDMI_ADMA_MODE_DDMA, align 4
  %47 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %49 = load i32, i32* @HDMI_AUD_FMT, align 4
  %50 = load i32, i32* @HDMI_AUDIO_CHANNELS, align 4
  %51 = call i32 @AUD_FMT_CH(i32 %50)
  %52 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %48, i32 %49, i32 %51)
  %53 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %54 = load i32, i32* @HDMI_PCM_CTRL, align 4
  %55 = load i32, i32* @HDMI_AUDIO_CHANNELMAP, align 4
  %56 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %58 = load i32, i32* @HDMI_AUD_CTS, align 4
  %59 = load %struct.videomode*, %struct.videomode** %4, align 8
  %60 = getelementptr inbounds %struct.videomode, %struct.videomode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HDMI_AUDIO_N, align 4
  %63 = call i32 @HDMI_AUDIO_CTS(i32 %61, i32 %62)
  %64 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %57, i32 %58, i32 %63)
  %65 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %66 = load i32, i32* @HDMI_AUD_N, align 4
  %67 = load i32, i32* @HDMI_AUDIO_N, align 4
  %68 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %70 = load i32, i32* @HDMI_AUD_CH_STATUS0, align 4
  %71 = load i32, i32* @CH_STATUS0_FS_FREQ_48, align 4
  %72 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %74 = load i32, i32* @HDMI_AUD_CH_STATUS1, align 4
  %75 = load i32, i32* @CH_STATUS1_WORD_LEN_16, align 4
  %76 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %73, i32 %74, i32 %75)
  %77 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %78 = load i32, i32* @HDMI_AUD_CTRL, align 4
  %79 = load i32, i32* @AUD_CTRL_EN, align 4
  %80 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %43, %42, %34
  ret void
}

declare dso_local %struct.a10hdmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @HDMI_WRITE(%struct.a10hdmi_softc*, i32, i32) #1

declare dso_local i32 @HDMI_READ(%struct.a10hdmi_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AUD_FMT_CH(i32) #1

declare dso_local i32 @HDMI_AUDIO_CTS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

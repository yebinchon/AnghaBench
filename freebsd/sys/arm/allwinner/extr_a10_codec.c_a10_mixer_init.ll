; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10_mixer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.a10codec_info = type { i32 }

@SOUND_MASK_VOLUME = common dso_local global i32 0, align 4
@SOUND_MASK_LINE = common dso_local global i32 0, align 4
@SOUND_MASK_RECLEV = common dso_local global i32 0, align 4
@SOUND_MASK_LINE1 = common dso_local global i32 0, align 4
@SOUND_MASK_MIC = common dso_local global i32 0, align 4
@A10_DAC_ACTL = common dso_local global i32 0, align 4
@A10_PAMUTE = common dso_local global i32 0, align 4
@A10_ADC_ACTL = common dso_local global i32 0, align 4
@A10_PA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @a10_mixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10_mixer_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca %struct.snd_mixer*, align 8
  %3 = alloca %struct.a10codec_info*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %2, align 8
  %5 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %6 = call %struct.a10codec_info* @mix_getdevinfo(%struct.snd_mixer* %5)
  store %struct.a10codec_info* %6, %struct.a10codec_info** %3, align 8
  %7 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %8 = load i32, i32* @SOUND_MASK_VOLUME, align 4
  %9 = load i32, i32* @SOUND_MASK_LINE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SOUND_MASK_RECLEV, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @mix_setdevs(%struct.snd_mixer* %7, i32 %12)
  %14 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %15 = load i32, i32* @SOUND_MASK_LINE, align 4
  %16 = load i32, i32* @SOUND_MASK_LINE1, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SOUND_MASK_MIC, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @mix_setrecdevs(%struct.snd_mixer* %14, i32 %19)
  %21 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %22 = load i32, i32* @A10_DAC_ACTL, align 4
  %23 = call i32 @CODEC_READ(%struct.a10codec_info* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @A10_PAMUTE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %28 = load i32, i32* @A10_DAC_ACTL, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CODEC_WRITE(%struct.a10codec_info* %27, i32 %28, i32 %29)
  %31 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %32 = load i32, i32* @A10_ADC_ACTL, align 4
  %33 = call i32 @CODEC_READ(%struct.a10codec_info* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @A10_PA_EN, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %38 = load i32, i32* @A10_ADC_ACTL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @CODEC_WRITE(%struct.a10codec_info* %37, i32 %38, i32 %39)
  ret i32 0
}

declare dso_local %struct.a10codec_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mix_setrecdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @CODEC_READ(%struct.a10codec_info*, i32) #1

declare dso_local i32 @CODEC_WRITE(%struct.a10codec_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

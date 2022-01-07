; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_h3_mixer_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_h3_mixer_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.a10codec_info = type { i32 }

@SOUND_MASK_LINE = common dso_local global i32 0, align 4
@SOUND_MASK_MIC = common dso_local global i32 0, align 4
@SOUND_MASK_LINE1 = common dso_local global i32 0, align 4
@SOUND_MASK_IMIX = common dso_local global i32 0, align 4
@H3_ADCMIXSC_LINEIN = common dso_local global i32 0, align 4
@H3_ADCMIXSC_MIC1 = common dso_local global i32 0, align 4
@H3_ADCMIXSC_MIC2 = common dso_local global i32 0, align 4
@H3_ADCMIXSC_OMIXER = common dso_local global i32 0, align 4
@H3_LADCMIXSC = common dso_local global i32 0, align 4
@H3_RADCMIXSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @h3_mixer_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h3_mixer_setrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.a10codec_info*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %8 = call %struct.a10codec_info* @mix_getdevinfo(%struct.snd_mixer* %7)
  store %struct.a10codec_info* %8, %struct.a10codec_info** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @SOUND_MASK_LINE, align 4
  %10 = load i32, i32* @SOUND_MASK_MIC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SOUND_MASK_LINE1, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SOUND_MASK_IMIX, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SOUND_MASK_LINE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @H3_ADCMIXSC_LINEIN, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SOUND_MASK_MIC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @H3_ADCMIXSC_MIC1, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SOUND_MASK_LINE1, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @H3_ADCMIXSC_MIC2, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SOUND_MASK_IMIX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @H3_ADCMIXSC_OMIXER, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.a10codec_info*, %struct.a10codec_info** %5, align 8
  %55 = load i32, i32* @H3_LADCMIXSC, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @h3_pr_write(%struct.a10codec_info* %54, i32 %55, i32 %56)
  %58 = load %struct.a10codec_info*, %struct.a10codec_info** %5, align 8
  %59 = load i32, i32* @H3_RADCMIXSC, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @h3_pr_write(%struct.a10codec_info* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.a10codec_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @h3_pr_write(%struct.a10codec_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10_mixer_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10_mixer_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.a10codec_info = type { i32 }

@A10_ADC_ACTL = common dso_local global i32 0, align 4
@A10_ADCIS_MASK = common dso_local global i32 0, align 4
@A10_ADCIS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @a10_mixer_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10_mixer_setrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_mixer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.a10codec_info*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %9 = call %struct.a10codec_info* @mix_getdevinfo(%struct.snd_mixer* %8)
  store %struct.a10codec_info* %9, %struct.a10codec_info** %6, align 8
  %10 = load %struct.a10codec_info*, %struct.a10codec_info** %6, align 8
  %11 = load i32, i32* @A10_ADC_ACTL, align 4
  %12 = call i32 @CODEC_READ(%struct.a10codec_info* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %41 [
    i32 130, label %14
    i32 128, label %23
    i32 129, label %32
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @A10_ADCIS_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @A10_ADCIS_SHIFT, align 4
  %20 = shl i32 133, %19
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* @A10_ADCIS_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @A10_ADCIS_SHIFT, align 4
  %29 = shl i32 132, %28
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load i32, i32* @A10_ADCIS_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @A10_ADCIS_SHIFT, align 4
  %38 = shl i32 131, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %32, %23, %14
  %43 = load %struct.a10codec_info*, %struct.a10codec_info** %6, align 8
  %44 = load i32, i32* @A10_ADC_ACTL, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @CODEC_WRITE(%struct.a10codec_info* %43, i32 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @A10_ADCIS_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @A10_ADCIS_SHIFT, align 4
  %51 = ashr i32 %49, %50
  switch i32 %51, label %55 [
    i32 133, label %52
    i32 132, label %53
    i32 131, label %54
  ]

52:                                               ; preds = %42
  store i32 130, i32* %3, align 4
  br label %56

53:                                               ; preds = %42
  store i32 128, i32* %3, align 4
  br label %56

54:                                               ; preds = %42
  store i32 129, i32* %3, align 4
  br label %56

55:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %53, %52
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.a10codec_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @CODEC_READ(%struct.a10codec_info*, i32) #1

declare dso_local i32 @CODEC_WRITE(%struct.a10codec_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

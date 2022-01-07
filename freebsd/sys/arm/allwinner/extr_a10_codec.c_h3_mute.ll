; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_h3_mute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_h3_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10codec_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@H3_LOMIXSC = common dso_local global i32 0, align 4
@H3_LOMIXSC_LDAC = common dso_local global i32 0, align 4
@H3_ROMIXSC = common dso_local global i32 0, align 4
@H3_ROMIXSC_RDAC = common dso_local global i32 0, align 4
@H3_DAC_PA_SRC = common dso_local global i32 0, align 4
@H3_DACAREN = common dso_local global i32 0, align 4
@H3_DACALEN = common dso_local global i32 0, align 4
@H3_RMIXEN = common dso_local global i32 0, align 4
@H3_LMIXEN = common dso_local global i32 0, align 4
@H3_ADC_AP_EN = common dso_local global i32 0, align 4
@H3_ADCREN = common dso_local global i32 0, align 4
@H3_ADCLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a10codec_info*, i32, i32)* @h3_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h3_mute(%struct.a10codec_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.a10codec_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.a10codec_info* %0, %struct.a10codec_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCMDIR_PLAY, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %52

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %15 = load i32, i32* @H3_LOMIXSC, align 4
  %16 = load i32, i32* @H3_LOMIXSC_LDAC, align 4
  %17 = call i32 @h3_pr_set_clear(%struct.a10codec_info* %14, i32 %15, i32 0, i32 %16)
  %18 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %19 = load i32, i32* @H3_ROMIXSC, align 4
  %20 = load i32, i32* @H3_ROMIXSC_RDAC, align 4
  %21 = call i32 @h3_pr_set_clear(%struct.a10codec_info* %18, i32 %19, i32 0, i32 %20)
  %22 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %23 = load i32, i32* @H3_DAC_PA_SRC, align 4
  %24 = load i32, i32* @H3_DACAREN, align 4
  %25 = load i32, i32* @H3_DACALEN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @H3_RMIXEN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @H3_LMIXEN, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @h3_pr_set_clear(%struct.a10codec_info* %22, i32 %23, i32 0, i32 %30)
  br label %51

32:                                               ; preds = %10
  %33 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %34 = load i32, i32* @H3_DAC_PA_SRC, align 4
  %35 = load i32, i32* @H3_DACAREN, align 4
  %36 = load i32, i32* @H3_DACALEN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @H3_RMIXEN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @H3_LMIXEN, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @h3_pr_set_clear(%struct.a10codec_info* %33, i32 %34, i32 %41, i32 0)
  %43 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %44 = load i32, i32* @H3_LOMIXSC, align 4
  %45 = load i32, i32* @H3_LOMIXSC_LDAC, align 4
  %46 = call i32 @h3_pr_set_clear(%struct.a10codec_info* %43, i32 %44, i32 %45, i32 0)
  %47 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %48 = load i32, i32* @H3_ROMIXSC, align 4
  %49 = load i32, i32* @H3_ROMIXSC_RDAC, align 4
  %50 = call i32 @h3_pr_set_clear(%struct.a10codec_info* %47, i32 %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %32, %13
  br label %70

52:                                               ; preds = %3
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %57 = load i32, i32* @H3_ADC_AP_EN, align 4
  %58 = load i32, i32* @H3_ADCREN, align 4
  %59 = load i32, i32* @H3_ADCLEN, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @h3_pr_set_clear(%struct.a10codec_info* %56, i32 %57, i32 0, i32 %60)
  br label %69

62:                                               ; preds = %52
  %63 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %64 = load i32, i32* @H3_ADC_AP_EN, align 4
  %65 = load i32, i32* @H3_ADCREN, align 4
  %66 = load i32, i32* @H3_ADCLEN, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @h3_pr_set_clear(%struct.a10codec_info* %63, i32 %64, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %51
  ret void
}

declare dso_local i32 @h3_pr_set_clear(%struct.a10codec_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

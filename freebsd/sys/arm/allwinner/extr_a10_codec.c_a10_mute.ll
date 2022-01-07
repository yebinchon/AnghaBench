; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10_mute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10codec_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@A10_DAC_ACTL = common dso_local global i32 0, align 4
@A10_DACAREN = common dso_local global i32 0, align 4
@A10_DACALEN = common dso_local global i32 0, align 4
@A10_DACPAS = common dso_local global i32 0, align 4
@A10_ADC_ACTL = common dso_local global i32 0, align 4
@A10_ADCREN = common dso_local global i32 0, align 4
@A10_ADCLEN = common dso_local global i32 0, align 4
@A10_PREG1EN = common dso_local global i32 0, align 4
@A10_VMICEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a10codec_info*, i32, i32)* @a10_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10_mute(%struct.a10codec_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.a10codec_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.a10codec_info* %0, %struct.a10codec_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @PCMDIR_PLAY, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %3
  %12 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %13 = load i32, i32* @A10_DAC_ACTL, align 4
  %14 = call i32 @CODEC_READ(%struct.a10codec_info* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load i32, i32* @A10_DACAREN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @A10_DACALEN, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @A10_DACPAS, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %40

30:                                               ; preds = %11
  %31 = load i32, i32* @A10_DACAREN, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @A10_DACALEN, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @A10_DACPAS, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %30, %17
  %41 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %42 = load i32, i32* @A10_DAC_ACTL, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @CODEC_WRITE(%struct.a10codec_info* %41, i32 %42, i32 %43)
  br label %86

45:                                               ; preds = %3
  %46 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %47 = load i32, i32* @A10_ADC_ACTL, align 4
  %48 = call i32 @CODEC_READ(%struct.a10codec_info* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load i32, i32* @A10_ADCREN, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @A10_ADCLEN, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @A10_PREG1EN, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @A10_VMICEN, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %81

68:                                               ; preds = %45
  %69 = load i32, i32* @A10_ADCREN, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @A10_ADCLEN, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* @A10_PREG1EN, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @A10_VMICEN, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %68, %51
  %82 = load %struct.a10codec_info*, %struct.a10codec_info** %4, align 8
  %83 = load i32, i32* @A10_ADC_ACTL, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @CODEC_WRITE(%struct.a10codec_info* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %40
  ret void
}

declare dso_local i32 @CODEC_READ(%struct.a10codec_info*, i32) #1

declare dso_local i32 @CODEC_WRITE(%struct.a10codec_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

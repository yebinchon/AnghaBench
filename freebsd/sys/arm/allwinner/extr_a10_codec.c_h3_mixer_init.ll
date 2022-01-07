; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_h3_mixer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_h3_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.a10codec_info = type { i32, i32** }

@.str = private unnamed_addr constant [32 x i8] c"allwinner,codec-analog-controls\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SOUND_MASK_PCM = common dso_local global i32 0, align 4
@SOUND_MASK_VOLUME = common dso_local global i32 0, align 4
@SOUND_MASK_RECLEV = common dso_local global i32 0, align 4
@SOUND_MASK_MIC = common dso_local global i32 0, align 4
@SOUND_MASK_LINE = common dso_local global i32 0, align 4
@SOUND_MASK_LINE1 = common dso_local global i32 0, align 4
@SOUND_MASK_IMIX = common dso_local global i32 0, align 4
@SD_F_SOFTPCMVOL = common dso_local global i32 0, align 4
@H3_PAEN_CTR = common dso_local global i32 0, align 4
@H3_LINEOUTEN = common dso_local global i32 0, align 4
@H3_MIC2G_LINEOUT_CTR = common dso_local global i32 0, align 4
@H3_LINEOUT_LSEL = common dso_local global i32 0, align 4
@H3_LINEOUT_RSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @h3_mixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h3_mixer_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.a10codec_info*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i32 1, i32* %4, align 4
  %8 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %9 = call %struct.a10codec_info* @mix_getdevinfo(%struct.snd_mixer* %8)
  store %struct.a10codec_info* %9, %struct.a10codec_info** %7, align 8
  %10 = load %struct.a10codec_info*, %struct.a10codec_info** %7, align 8
  %11 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ofw_bus_get_node(i32 %12)
  %14 = call i64 @OF_getencprop(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64* %6, i32 8)
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %97

18:                                               ; preds = %1
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @OF_node_from_xref(i64 %19)
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %22 = call i64 @OF_getencprop(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %21, i32 16)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %97

26:                                               ; preds = %18
  %27 = load %struct.a10codec_info*, %struct.a10codec_info** %7, align 8
  %28 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %34 = load i64, i64* %33, align 16
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %34, %36
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = call i32* @bus_alloc_resource(i32 %29, i32 %30, i32* %4, i64 %32, i64 %37, i64 %39, i32 %40)
  %42 = load %struct.a10codec_info*, %struct.a10codec_info** %7, align 8
  %43 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  store i32* %41, i32** %45, align 8
  %46 = load %struct.a10codec_info*, %struct.a10codec_info** %7, align 8
  %47 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %26
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %97

54:                                               ; preds = %26
  %55 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %56 = load i32, i32* @SOUND_MASK_PCM, align 4
  %57 = load i32, i32* @SOUND_MASK_VOLUME, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SOUND_MASK_RECLEV, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SOUND_MASK_MIC, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SOUND_MASK_LINE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SOUND_MASK_LINE1, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @mix_setdevs(%struct.snd_mixer* %55, i32 %66)
  %68 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %69 = load i32, i32* @SOUND_MASK_MIC, align 4
  %70 = load i32, i32* @SOUND_MASK_LINE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SOUND_MASK_LINE1, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SOUND_MASK_IMIX, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @mix_setrecdevs(%struct.snd_mixer* %68, i32 %75)
  %77 = load %struct.a10codec_info*, %struct.a10codec_info** %7, align 8
  %78 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.a10codec_info*, %struct.a10codec_info** %7, align 8
  %81 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pcm_getflags(i32 %82)
  %84 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @pcm_setflags(i32 %79, i32 %85)
  %87 = load %struct.a10codec_info*, %struct.a10codec_info** %7, align 8
  %88 = load i32, i32* @H3_PAEN_CTR, align 4
  %89 = load i32, i32* @H3_LINEOUTEN, align 4
  %90 = call i32 @h3_pr_set_clear(%struct.a10codec_info* %87, i32 %88, i32 %89, i32 0)
  %91 = load %struct.a10codec_info*, %struct.a10codec_info** %7, align 8
  %92 = load i32, i32* @H3_MIC2G_LINEOUT_CTR, align 4
  %93 = load i32, i32* @H3_LINEOUT_LSEL, align 4
  %94 = load i32, i32* @H3_LINEOUT_RSEL, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @h3_pr_set_clear(%struct.a10codec_info* %91, i32 %92, i32 %95, i32 0)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %54, %52, %24, %16
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.a10codec_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_node_from_xref(i64) #1

declare dso_local i32* @bus_alloc_resource(i32, i32, i32*, i64, i64, i64, i32) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mix_setrecdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @pcm_setflags(i32, i32) #1

declare dso_local i32 @pcm_getflags(i32) #1

declare dso_local i32 @h3_pr_set_clear(%struct.a10codec_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

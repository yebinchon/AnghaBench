; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmiaudio.c_a10hdmiaudio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmiaudio.c_a10hdmiaudio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmiaudio_info = type { i32, i32, i32, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"a10hdmiaudio softc\00", align 1
@DMABUF_MIN = common dso_local global i32 0, align 4
@DMABUF_DEFAULT = common dso_local global i32 0, align 4
@DMABUF_MAX = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot create DMA tag\0A\00", align 1
@a10hdmiaudio_mixer_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"mixer_init failed\0A\00", align 1
@SD_F_MPSAFE = common dso_local global i32 0, align 4
@SD_F_SOFTPCMVOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"pcm_register failed\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@a10hdmiaudio_chan_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"at %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a10hdmiaudio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10hdmiaudio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.a10hdmiaudio_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @SND_STATUSLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @M_DEVBUF, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.a10hdmiaudio_info* @malloc(i32 16, i32 %13, i32 %16)
  store %struct.a10hdmiaudio_info* %17, %struct.a10hdmiaudio_info** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %20 = getelementptr inbounds %struct.a10hdmiaudio_info, %struct.a10hdmiaudio_info* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_get_nameunit(i32 %21)
  %23 = call i32 @snd_mtxcreate(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %25 = getelementptr inbounds %struct.a10hdmiaudio_info, %struct.a10hdmiaudio_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DMABUF_MIN, align 4
  %28 = load i32, i32* @DMABUF_DEFAULT, align 4
  %29 = load i32, i32* @DMABUF_MAX, align 4
  %30 = call i32 @pcm_getbuffersize(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %32 = getelementptr inbounds %struct.a10hdmiaudio_info, %struct.a10hdmiaudio_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @bus_get_dma_tag(i32 %33)
  %35 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %36 = getelementptr inbounds %struct.a10hdmiaudio_info, %struct.a10hdmiaudio_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %39 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %40 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %41 = getelementptr inbounds %struct.a10hdmiaudio_info, %struct.a10hdmiaudio_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %44 = getelementptr inbounds %struct.a10hdmiaudio_info, %struct.a10hdmiaudio_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %47 = getelementptr inbounds %struct.a10hdmiaudio_info, %struct.a10hdmiaudio_info* %46, i32 0, i32 1
  %48 = call i32 @bus_dma_tag_create(i32 %34, i32 4, i32 %37, i32 %38, i32 %39, i32* null, i32* null, i32 %42, i32 1, i32 %45, i32 0, i32* null, i32* null, i32* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %1
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %93

54:                                               ; preds = %1
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %57 = call i64 @mixer_init(i32 %55, i32* @a10hdmiaudio_mixer_class, %struct.a10hdmiaudio_info* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %93

62:                                               ; preds = %54
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @pcm_getflags(i32 %64)
  %66 = load i32, i32* @SD_F_MPSAFE, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @pcm_setflags(i32 %63, i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @pcm_getflags(i32 %70)
  %72 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @pcm_setflags(i32 %69, i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %77 = call i64 @pcm_register(i32 %75, %struct.a10hdmiaudio_info* %76, i32 1, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %62
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %93

82:                                               ; preds = %62
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @PCMDIR_PLAY, align 4
  %85 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %86 = call i32 @pcm_addchan(i32 %83, i32 %84, i32* @a10hdmiaudio_chan_class, %struct.a10hdmiaudio_info* %85)
  %87 = load i32, i32* @SND_STATUSLEN, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i8* @ofw_bus_get_name(i32 %88)
  %90 = call i32 @snprintf(i8* %12, i32 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @pcm_setstatus(i32 %91, i8* %12)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %102

93:                                               ; preds = %79, %59, %51
  %94 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %95 = getelementptr inbounds %struct.a10hdmiaudio_info, %struct.a10hdmiaudio_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @snd_mtxfree(i32 %96)
  %98 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %4, align 8
  %99 = load i32, i32* @M_DEVBUF, align 4
  %100 = call i32 @free(%struct.a10hdmiaudio_info* %98, i32 %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %102

102:                                              ; preds = %93, %82
  %103 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.a10hdmiaudio_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i64 @mixer_init(i32, i32*, %struct.a10hdmiaudio_info*) #2

declare dso_local i32 @pcm_setflags(i32, i32) #2

declare dso_local i32 @pcm_getflags(i32) #2

declare dso_local i64 @pcm_register(i32, %struct.a10hdmiaudio_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.a10hdmiaudio_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @ofw_bus_get_name(i32) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @snd_mtxfree(i32) #2

declare dso_local i32 @free(%struct.a10hdmiaudio_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

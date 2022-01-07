; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_chan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_chan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10codec_chinfo = type { i32, i32 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @a10codec_chan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10codec_chan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.a10codec_chinfo*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.a10codec_chinfo*
  store %struct.a10codec_chinfo* %9, %struct.a10codec_chinfo** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %38 [
    i32 8000, label %11
    i32 12000, label %11
    i32 16000, label %11
    i32 24000, label %11
    i32 32000, label %11
    i32 48000, label %11
    i32 96000, label %15
    i32 192000, label %15
    i32 44100, label %29
    i32 22050, label %32
    i32 11025, label %35
  ]

11:                                               ; preds = %3, %3, %3, %3, %3, %3
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %7, align 8
  %14 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %41

15:                                               ; preds = %3, %3
  %16 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %7, align 8
  %17 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCMDIR_PLAY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %7, align 8
  %24 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %28

25:                                               ; preds = %15
  %26 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %7, align 8
  %27 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %26, i32 0, i32 0
  store i32 48000, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %21
  br label %41

29:                                               ; preds = %3
  %30 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %7, align 8
  %31 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %30, i32 0, i32 0
  store i32 48000, i32* %31, align 4
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %7, align 8
  %34 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %33, i32 0, i32 0
  store i32 24000, i32* %34, align 4
  br label %41

35:                                               ; preds = %3
  %36 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %7, align 8
  %37 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %36, i32 0, i32 0
  store i32 12000, i32* %37, align 4
  br label %41

38:                                               ; preds = %3
  %39 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %7, align 8
  %40 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %39, i32 0, i32 0
  store i32 48000, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35, %32, %29, %28, %11
  %42 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %7, align 8
  %43 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

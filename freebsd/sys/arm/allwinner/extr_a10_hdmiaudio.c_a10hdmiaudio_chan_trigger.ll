; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmiaudio.c_a10hdmiaudio_chan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmiaudio.c_a10hdmiaudio_chan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmiaudio_chinfo = type { i32, %struct.a10hdmiaudio_info* }
%struct.a10hdmiaudio_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @a10hdmiaudio_chan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10hdmiaudio_chan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.a10hdmiaudio_chinfo*, align 8
  %9 = alloca %struct.a10hdmiaudio_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.a10hdmiaudio_chinfo*
  store %struct.a10hdmiaudio_chinfo* %11, %struct.a10hdmiaudio_chinfo** %8, align 8
  %12 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %8, align 8
  %13 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %12, i32 0, i32 1
  %14 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %13, align 8
  store %struct.a10hdmiaudio_info* %14, %struct.a10hdmiaudio_info** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @PCMTRIG_COMMON(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %9, align 8
  %21 = getelementptr inbounds %struct.a10hdmiaudio_info, %struct.a10hdmiaudio_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_mtxlock(i32 %22)
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %35 [
    i32 129, label %25
    i32 128, label %30
    i32 130, label %30
  ]

25:                                               ; preds = %19
  %26 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %8, align 8
  %27 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %8, align 8
  %29 = call i32 @a10hdmiaudio_start(%struct.a10hdmiaudio_chinfo* %28)
  br label %36

30:                                               ; preds = %19, %19
  %31 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %8, align 8
  %32 = getelementptr inbounds %struct.a10hdmiaudio_chinfo, %struct.a10hdmiaudio_chinfo* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.a10hdmiaudio_chinfo*, %struct.a10hdmiaudio_chinfo** %8, align 8
  %34 = call i32 @a10hdmiaudio_stop(%struct.a10hdmiaudio_chinfo* %33)
  br label %36

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35, %30, %25
  %37 = load %struct.a10hdmiaudio_info*, %struct.a10hdmiaudio_info** %9, align 8
  %38 = getelementptr inbounds %struct.a10hdmiaudio_info, %struct.a10hdmiaudio_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @snd_mtxunlock(i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %18
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @a10hdmiaudio_start(%struct.a10hdmiaudio_chinfo*) #1

declare dso_local i32 @a10hdmiaudio_stop(%struct.a10hdmiaudio_chinfo*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_v4l_tuner.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_v4l_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_tuner = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.l_video_tuner = type { i32, i32, i32, i32, i32, i32, i32 }

@LINUX_VIDEO_TUNER_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_tuner*, %struct.l_video_tuner*)* @bsd_to_linux_v4l_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_to_linux_v4l_tuner(%struct.video_tuner* %0, %struct.l_video_tuner* %1) #0 {
  %3 = alloca %struct.video_tuner*, align 8
  %4 = alloca %struct.l_video_tuner*, align 8
  store %struct.video_tuner* %0, %struct.video_tuner** %3, align 8
  store %struct.l_video_tuner* %1, %struct.l_video_tuner** %4, align 8
  %5 = load %struct.video_tuner*, %struct.video_tuner** %3, align 8
  %6 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.l_video_tuner*, %struct.l_video_tuner** %4, align 8
  %9 = getelementptr inbounds %struct.l_video_tuner, %struct.l_video_tuner* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.l_video_tuner*, %struct.l_video_tuner** %4, align 8
  %11 = getelementptr inbounds %struct.l_video_tuner, %struct.l_video_tuner* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.video_tuner*, %struct.video_tuner** %3, align 8
  %14 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LINUX_VIDEO_TUNER_NAME_SIZE, align 4
  %17 = call i32 @strlcpy(i32 %12, i32 %15, i32 %16)
  %18 = load %struct.video_tuner*, %struct.video_tuner** %3, align 8
  %19 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.l_video_tuner*, %struct.l_video_tuner** %4, align 8
  %22 = getelementptr inbounds %struct.l_video_tuner, %struct.l_video_tuner* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.video_tuner*, %struct.video_tuner** %3, align 8
  %24 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.l_video_tuner*, %struct.l_video_tuner** %4, align 8
  %27 = getelementptr inbounds %struct.l_video_tuner, %struct.l_video_tuner* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.video_tuner*, %struct.video_tuner** %3, align 8
  %29 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.l_video_tuner*, %struct.l_video_tuner** %4, align 8
  %32 = getelementptr inbounds %struct.l_video_tuner, %struct.l_video_tuner* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.video_tuner*, %struct.video_tuner** %3, align 8
  %34 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.l_video_tuner*, %struct.l_video_tuner** %4, align 8
  %37 = getelementptr inbounds %struct.l_video_tuner, %struct.l_video_tuner* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.video_tuner*, %struct.video_tuner** %3, align 8
  %39 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.l_video_tuner*, %struct.l_video_tuner** %4, align 8
  %42 = getelementptr inbounds %struct.l_video_tuner, %struct.l_video_tuner* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret i32 0
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

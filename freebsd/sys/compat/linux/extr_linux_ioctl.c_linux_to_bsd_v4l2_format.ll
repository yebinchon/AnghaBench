; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_v4l2_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_v4l2_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_v4l2_format = type { i64, i32 }
%struct.v4l2_format = type { i64, i32 }

@V4L2_BUF_TYPE_VIDEO_OVERLAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l_v4l2_format*, %struct.v4l2_format*)* @linux_to_bsd_v4l2_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_to_bsd_v4l2_format(%struct.l_v4l2_format* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l_v4l2_format*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  store %struct.l_v4l2_format* %0, %struct.l_v4l2_format** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %6 = load %struct.l_v4l2_format*, %struct.l_v4l2_format** %4, align 8
  %7 = getelementptr inbounds %struct.l_v4l2_format, %struct.l_v4l2_format* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.l_v4l2_format*, %struct.l_v4l2_format** %4, align 8
  %12 = getelementptr inbounds %struct.l_v4l2_format, %struct.l_v4l2_format* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OVERLAY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 1
  %21 = load %struct.l_v4l2_format*, %struct.l_v4l2_format** %4, align 8
  %22 = getelementptr inbounds %struct.l_v4l2_format, %struct.l_v4l2_format* %21, i32 0, i32 1
  %23 = call i32 @memcpy(i32* %20, i32* %22, i32 4)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

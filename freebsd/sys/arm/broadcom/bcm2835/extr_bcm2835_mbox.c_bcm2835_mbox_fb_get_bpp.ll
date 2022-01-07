; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm2835_mbox_fb_get_bpp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm2835_mbox_fb_get_bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_fb_config = type { i32 }
%struct.msg_fb_get_bpp = type { %struct.TYPE_10__, i64, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }

@BCM2835_MBOX_CODE_REQ = common dso_local global i32 0, align 4
@GET_DEPTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm2835_mbox_fb_get_bpp(%struct.bcm2835_fb_config* %0) #0 {
  %2 = alloca %struct.bcm2835_fb_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg_fb_get_bpp, align 8
  store %struct.bcm2835_fb_config* %0, %struct.bcm2835_fb_config** %2, align 8
  %5 = call i32 @memset(%struct.msg_fb_get_bpp* %4, i32 0, i32 32)
  %6 = getelementptr inbounds %struct.msg_fb_get_bpp, %struct.msg_fb_get_bpp* %4, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 32, i32* %7, align 8
  %8 = load i32, i32* @BCM2835_MBOX_CODE_REQ, align 4
  %9 = getelementptr inbounds %struct.msg_fb_get_bpp, %struct.msg_fb_get_bpp* %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = getelementptr inbounds %struct.msg_fb_get_bpp, %struct.msg_fb_get_bpp* %4, i32 0, i32 0
  %12 = load i32, i32* @GET_DEPTH, align 4
  %13 = call i32 @BCM2835_MBOX_INIT_TAG(%struct.TYPE_10__* %11, i32 %12)
  %14 = getelementptr inbounds %struct.msg_fb_get_bpp, %struct.msg_fb_get_bpp* %4, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.msg_fb_get_bpp, %struct.msg_fb_get_bpp* %4, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = call i32 @bcm2835_mbox_property(%struct.msg_fb_get_bpp* %4, i32 32)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.msg_fb_get_bpp, %struct.msg_fb_get_bpp* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %28 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %21, %1
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @memset(%struct.msg_fb_get_bpp*, i32, i32) #1

declare dso_local i32 @BCM2835_MBOX_INIT_TAG(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bcm2835_mbox_property(%struct.msg_fb_get_bpp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

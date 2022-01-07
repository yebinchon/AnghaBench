; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm2835_mbox_get_clock_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm2835_mbox_get_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_get_clock_rate = type { %struct.TYPE_10__, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@BCM2835_MBOX_CODE_REQ = common dso_local global i32 0, align 4
@BCM2835_MBOX_TAG_GET_CLOCK_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm2835_mbox_get_clock_rate(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.msg_get_clock_rate, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = call i32 @memset(%struct.msg_get_clock_rate* %5, i32 0, i32 40)
  %8 = getelementptr inbounds %struct.msg_get_clock_rate, %struct.msg_get_clock_rate* %5, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 40, i32* %9, align 4
  %10 = load i32, i32* @BCM2835_MBOX_CODE_REQ, align 4
  %11 = getelementptr inbounds %struct.msg_get_clock_rate, %struct.msg_get_clock_rate* %5, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @BCM2835_MBOX_TAG_GET_CLOCK_RATE, align 4
  %14 = getelementptr inbounds %struct.msg_get_clock_rate, %struct.msg_get_clock_rate* %5, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = getelementptr inbounds %struct.msg_get_clock_rate, %struct.msg_get_clock_rate* %5, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 8, i32* %17, align 8
  %18 = getelementptr inbounds %struct.msg_get_clock_rate, %struct.msg_get_clock_rate* %5, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i32 4, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds %struct.msg_get_clock_rate, %struct.msg_get_clock_rate* %5, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = getelementptr inbounds %struct.msg_get_clock_rate, %struct.msg_get_clock_rate* %5, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = call i32 @bcm2835_mbox_property(%struct.msg_get_clock_rate* %5, i32 40)
  store i32 %25, i32* %6, align 4
  %26 = getelementptr inbounds %struct.msg_get_clock_rate, %struct.msg_get_clock_rate* %5, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @memset(%struct.msg_get_clock_rate*, i32, i32) #1

declare dso_local i32 @bcm2835_mbox_property(%struct.msg_get_clock_rate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

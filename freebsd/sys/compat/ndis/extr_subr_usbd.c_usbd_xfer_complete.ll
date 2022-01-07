; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_xfer_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_xfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i32, i32, i32, i32 }
%struct.ndisusb_ep = type { i32 }
%struct.ndisusb_xfer = type { i32 }
%struct.ndisusb_xferdone = type { i32, i32, %struct.ndisusb_xfer* }

@M_USBDEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@usbd_xfertask_wrap = common dso_local global i64 0, align 8
@WORKQUEUE_CRITICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ndis_softc*, %struct.ndisusb_ep*, %struct.ndisusb_xfer*, i32)* @usbd_xfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbd_xfer_complete(%struct.ndis_softc* %0, %struct.ndisusb_ep* %1, %struct.ndisusb_xfer* %2, i32 %3) #0 {
  %5 = alloca %struct.ndis_softc*, align 8
  %6 = alloca %struct.ndisusb_ep*, align 8
  %7 = alloca %struct.ndisusb_xfer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ndisusb_xferdone*, align 8
  %10 = alloca i32, align 4
  store %struct.ndis_softc* %0, %struct.ndis_softc** %5, align 8
  store %struct.ndisusb_ep* %1, %struct.ndisusb_ep** %6, align 8
  store %struct.ndisusb_xfer* %2, %struct.ndisusb_xfer** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @M_USBDEV, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.ndisusb_xferdone* @malloc(i32 16, i32 %11, i32 %14)
  store %struct.ndisusb_xferdone* %15, %struct.ndisusb_xferdone** %9, align 8
  %16 = load %struct.ndisusb_xferdone*, %struct.ndisusb_xferdone** %9, align 8
  %17 = icmp eq %struct.ndisusb_xferdone* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %50

23:                                               ; preds = %4
  %24 = load %struct.ndisusb_xfer*, %struct.ndisusb_xfer** %7, align 8
  %25 = load %struct.ndisusb_xferdone*, %struct.ndisusb_xferdone** %9, align 8
  %26 = getelementptr inbounds %struct.ndisusb_xferdone, %struct.ndisusb_xferdone* %25, i32 0, i32 2
  store %struct.ndisusb_xfer* %24, %struct.ndisusb_xfer** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ndisusb_xferdone*, %struct.ndisusb_xferdone** %9, align 8
  %29 = getelementptr inbounds %struct.ndisusb_xferdone, %struct.ndisusb_xferdone* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %31 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %30, i32 0, i32 1
  %32 = call i32 @KeAcquireSpinLock(i32* %31, i32* %10)
  %33 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %33, i32 0, i32 2
  %35 = load %struct.ndisusb_xferdone*, %struct.ndisusb_xferdone** %9, align 8
  %36 = getelementptr inbounds %struct.ndisusb_xferdone, %struct.ndisusb_xferdone* %35, i32 0, i32 0
  %37 = call i32 @InsertTailList(i32* %34, i32* %36)
  %38 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %39 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @KeReleaseSpinLock(i32* %39, i32 %40)
  %42 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %43 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @usbd_xfertask_wrap, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @WORKQUEUE_CRITICAL, align 4
  %48 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %49 = call i32 @IoQueueWorkItem(i32 %44, i32 %46, i32 %47, %struct.ndis_softc* %48)
  br label %50

50:                                               ; preds = %23, %18
  ret void
}

declare dso_local %struct.ndisusb_xferdone* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @KeAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @KeReleaseSpinLock(i32*, i32) #1

declare dso_local i32 @IoQueueWorkItem(i32, i32, i32, %struct.ndis_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

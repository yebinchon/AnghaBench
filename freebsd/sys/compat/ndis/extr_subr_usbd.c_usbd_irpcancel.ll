; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_irpcancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_irpcancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.ndis_softc = type { i32 }
%struct.ndisusb_ep = type { i32* }

@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @usbd_irpcancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbd_irpcancel(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ndis_softc*, align 8
  %7 = alloca %struct.ndisusb_ep*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i32 @IRP_NDIS_DEV(%struct.TYPE_5__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ndis_softc* @device_get_softc(i32 %10)
  store %struct.ndis_softc* %11, %struct.ndis_softc** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = call %struct.ndisusb_ep* @IRP_NDISUSB_EP(%struct.TYPE_5__* %12)
  store %struct.ndisusb_ep* %13, %struct.ndisusb_ep** %7, align 8
  %14 = load %struct.ndisusb_ep*, %struct.ndisusb_ep** %7, align 8
  %15 = icmp eq %struct.ndisusb_ep* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i8*, i8** @TRUE, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IoReleaseCancelSpinLock(i32 %22)
  br label %48

24:                                               ; preds = %2
  %25 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %26 = call i32 @NDISUSB_LOCK(%struct.ndis_softc* %25)
  %27 = load %struct.ndisusb_ep*, %struct.ndisusb_ep** %7, align 8
  %28 = getelementptr inbounds %struct.ndisusb_ep, %struct.ndisusb_ep* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usbd_transfer_stop(i32 %31)
  %33 = load %struct.ndisusb_ep*, %struct.ndisusb_ep** %7, align 8
  %34 = getelementptr inbounds %struct.ndisusb_ep, %struct.ndisusb_ep* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usbd_transfer_start(i32 %37)
  %39 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %40 = call i32 @NDISUSB_UNLOCK(%struct.ndis_softc* %39)
  %41 = load i8*, i8** @TRUE, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IoReleaseCancelSpinLock(i32 %46)
  br label %48

48:                                               ; preds = %24, %16
  ret void
}

declare dso_local i32 @IRP_NDIS_DEV(%struct.TYPE_5__*) #1

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local %struct.ndisusb_ep* @IRP_NDISUSB_EP(%struct.TYPE_5__*) #1

declare dso_local i32 @IoReleaseCancelSpinLock(i32) #1

declare dso_local i32 @NDISUSB_LOCK(%struct.ndis_softc*) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @NDISUSB_UNLOCK(%struct.ndis_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_setup_endpoint_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_setup_endpoint_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndisusb_ep = type { %struct.usb_xfer**, i32, i32, i32 }
%struct.usb_xfer = type { i32 }
%struct.usb_config = type { i32 }
%struct.ndis_softc = type { i32, i32 }

@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"couldn't setup xfer: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, %struct.ndisusb_ep*, %struct.usb_config*)* @usbd_setup_endpoint_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @usbd_setup_endpoint_one(i32* %0, i32 %1, %struct.ndisusb_ep* %2, %struct.usb_config* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ndisusb_ep*, align 8
  %9 = alloca %struct.usb_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ndis_softc*, align 8
  %12 = alloca %struct.usb_xfer*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ndisusb_ep* %2, %struct.ndisusb_ep** %8, align 8
  store %struct.usb_config* %3, %struct.usb_config** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @IRP_NDIS_DEV(i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.ndis_softc* @device_get_softc(i32 %16)
  store %struct.ndis_softc* %17, %struct.ndis_softc** %11, align 8
  %18 = load %struct.ndisusb_ep*, %struct.ndisusb_ep** %8, align 8
  %19 = getelementptr inbounds %struct.ndisusb_ep, %struct.ndisusb_ep* %18, i32 0, i32 3
  %20 = call i32 @InitializeListHead(i32* %19)
  %21 = load %struct.ndisusb_ep*, %struct.ndisusb_ep** %8, align 8
  %22 = getelementptr inbounds %struct.ndisusb_ep, %struct.ndisusb_ep* %21, i32 0, i32 2
  %23 = call i32 @InitializeListHead(i32* %22)
  %24 = load %struct.ndisusb_ep*, %struct.ndisusb_ep** %8, align 8
  %25 = getelementptr inbounds %struct.ndisusb_ep, %struct.ndisusb_ep* %24, i32 0, i32 1
  %26 = call i32 @KeInitializeSpinLock(i32* %25)
  %27 = load %struct.ndis_softc*, %struct.ndis_softc** %11, align 8
  %28 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ndisusb_ep*, %struct.ndisusb_ep** %8, align 8
  %31 = getelementptr inbounds %struct.ndisusb_ep, %struct.ndisusb_ep* %30, i32 0, i32 0
  %32 = load %struct.usb_xfer**, %struct.usb_xfer*** %31, align 8
  %33 = load %struct.usb_config*, %struct.usb_config** %9, align 8
  %34 = load %struct.ndis_softc*, %struct.ndis_softc** %11, align 8
  %35 = load %struct.ndis_softc*, %struct.ndis_softc** %11, align 8
  %36 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %35, i32 0, i32 0
  %37 = call i64 @usbd_transfer_setup(i32 %29, i32* %7, %struct.usb_xfer** %32, %struct.usb_config* %33, i32 1, %struct.ndis_softc* %34, i32* %36)
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %4
  %42 = load i32, i32* %10, align 4
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @usbd_errstr(i64 %43)
  %45 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i64, i64* %13, align 8
  store i64 %46, i64* %5, align 8
  br label %57

47:                                               ; preds = %4
  %48 = load %struct.ndisusb_ep*, %struct.ndisusb_ep** %8, align 8
  %49 = getelementptr inbounds %struct.ndisusb_ep, %struct.ndisusb_ep* %48, i32 0, i32 0
  %50 = load %struct.usb_xfer**, %struct.usb_xfer*** %49, align 8
  %51 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %50, i64 0
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %51, align 8
  store %struct.usb_xfer* %52, %struct.usb_xfer** %12, align 8
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %12, align 8
  %54 = load %struct.ndisusb_ep*, %struct.ndisusb_ep** %8, align 8
  %55 = call i32 @usbd_xfer_set_priv(%struct.usb_xfer* %53, %struct.ndisusb_ep* %54)
  %56 = load i64, i64* %13, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %47, %41
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local i32 @IRP_NDIS_DEV(i32*) #1

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @KeInitializeSpinLock(i32*) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, %struct.usb_xfer**, %struct.usb_config*, i32, %struct.ndis_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @usbd_xfer_set_priv(%struct.usb_xfer*, %struct.ndisusb_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_func_getdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_func_getdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.ndis_softc = type { i32, i32 }
%struct.usbd_urb_control_descriptor_request = type { i64, i8*, i32, i32, i32 }
%union.usbd_urb = type { %struct.usbd_urb_control_descriptor_request }
%struct.TYPE_10__ = type { i64, i32 }

@UDESC_CONFIG = common dso_local global i64 0, align 8
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"bad desc %d\0A\00", align 1
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@USBD_STATUS_SUCCESS = common dso_local global i32 0, align 4
@NDISUSB_GETDESC_MAXRETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @usbd_func_getdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbd_func_getdesc(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ndis_softc*, align 8
  %6 = alloca %struct.usbd_urb_control_descriptor_request*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %union.usbd_urb*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = call i32 @IRP_NDIS_DEV(%struct.TYPE_11__* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.ndis_softc* @device_get_softc(i32 %14)
  store %struct.ndis_softc* %15, %struct.ndis_softc** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call %union.usbd_urb* @usbd_geturb(%struct.TYPE_11__* %16)
  store %union.usbd_urb* %17, %union.usbd_urb** %9, align 8
  %18 = load %union.usbd_urb*, %union.usbd_urb** %9, align 8
  %19 = bitcast %union.usbd_urb* %18 to %struct.usbd_urb_control_descriptor_request*
  store %struct.usbd_urb_control_descriptor_request* %19, %struct.usbd_urb_control_descriptor_request** %6, align 8
  %20 = load %struct.usbd_urb_control_descriptor_request*, %struct.usbd_urb_control_descriptor_request** %6, align 8
  %21 = getelementptr inbounds %struct.usbd_urb_control_descriptor_request, %struct.usbd_urb_control_descriptor_request* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UDESC_CONFIG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %1
  %26 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_10__* @usbd_get_config_descriptor(i32 %28)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %10, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = icmp eq %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %33, i64* %11, align 8
  br label %91

34:                                               ; preds = %25
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UDESC_CONFIG, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %46, i64* %11, align 8
  br label %91

47:                                               ; preds = %34
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @UGETW(i32 %50)
  %52 = load %struct.usbd_urb_control_descriptor_request*, %struct.usbd_urb_control_descriptor_request** %6, align 8
  %53 = getelementptr inbounds %struct.usbd_urb_control_descriptor_request, %struct.usbd_urb_control_descriptor_request* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @MIN(i32 %51, i8* %54)
  store i8* %55, i8** %8, align 8
  %56 = load %struct.usbd_urb_control_descriptor_request*, %struct.usbd_urb_control_descriptor_request** %6, align 8
  %57 = getelementptr inbounds %struct.usbd_urb_control_descriptor_request, %struct.usbd_urb_control_descriptor_request* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @memcpy(i32 %58, %struct.TYPE_10__* %59, i8* %60)
  %62 = load i8*, i8** %8, align 8
  store i8* %62, i8** %7, align 8
  %63 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  store i64 %63, i64* %11, align 8
  br label %90

64:                                               ; preds = %1
  %65 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %66 = call i32 @NDISUSB_LOCK(%struct.ndis_softc* %65)
  %67 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %68 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %71 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %70, i32 0, i32 0
  %72 = load %struct.usbd_urb_control_descriptor_request*, %struct.usbd_urb_control_descriptor_request** %6, align 8
  %73 = getelementptr inbounds %struct.usbd_urb_control_descriptor_request, %struct.usbd_urb_control_descriptor_request* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.usbd_urb_control_descriptor_request*, %struct.usbd_urb_control_descriptor_request** %6, align 8
  %76 = getelementptr inbounds %struct.usbd_urb_control_descriptor_request, %struct.usbd_urb_control_descriptor_request* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.usbd_urb_control_descriptor_request*, %struct.usbd_urb_control_descriptor_request** %6, align 8
  %79 = getelementptr inbounds %struct.usbd_urb_control_descriptor_request, %struct.usbd_urb_control_descriptor_request* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.usbd_urb_control_descriptor_request*, %struct.usbd_urb_control_descriptor_request** %6, align 8
  %82 = getelementptr inbounds %struct.usbd_urb_control_descriptor_request, %struct.usbd_urb_control_descriptor_request* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.usbd_urb_control_descriptor_request*, %struct.usbd_urb_control_descriptor_request** %6, align 8
  %85 = getelementptr inbounds %struct.usbd_urb_control_descriptor_request, %struct.usbd_urb_control_descriptor_request* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @usbd_req_get_desc(i32 %69, i32* %71, i8** %7, i32 %74, i32 2, i8* %77, i32 %80, i64 %83, i32 %86, i32 3)
  store i64 %87, i64* %11, align 8
  %88 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %89 = call i32 @NDISUSB_UNLOCK(%struct.ndis_softc* %88)
  br label %90

90:                                               ; preds = %64, %47
  br label %91

91:                                               ; preds = %90, %40, %32
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load %struct.usbd_urb_control_descriptor_request*, %struct.usbd_urb_control_descriptor_request** %6, align 8
  %97 = getelementptr inbounds %struct.usbd_urb_control_descriptor_request, %struct.usbd_urb_control_descriptor_request* %96, i32 0, i32 1
  store i8* null, i8** %97, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @usbd_usb2urb(i64 %98)
  store i32 %99, i32* %2, align 4
  br label %109

100:                                              ; preds = %91
  %101 = load i8*, i8** %7, align 8
  %102 = load %struct.usbd_urb_control_descriptor_request*, %struct.usbd_urb_control_descriptor_request** %6, align 8
  %103 = getelementptr inbounds %struct.usbd_urb_control_descriptor_request, %struct.usbd_urb_control_descriptor_request* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load i32, i32* @USBD_STATUS_SUCCESS, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %100, %95
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @IRP_NDIS_DEV(%struct.TYPE_11__*) #1

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local %union.usbd_urb* @usbd_geturb(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @usbd_get_config_descriptor(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i8* @MIN(i32, i8*) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @NDISUSB_LOCK(%struct.ndis_softc*) #1

declare dso_local i64 @usbd_req_get_desc(i32, i32*, i8**, i32, i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @NDISUSB_UNLOCK(%struct.ndis_softc*) #1

declare dso_local i32 @usbd_usb2urb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

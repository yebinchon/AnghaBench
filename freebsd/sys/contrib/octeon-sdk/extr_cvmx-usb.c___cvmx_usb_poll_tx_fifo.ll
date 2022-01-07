; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c___cvmx_usb_poll_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c___cvmx_usb_poll_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@cvmx_usbcx_gintmsk_t = common dso_local global i32 0, align 4
@ptxfempmsk = common dso_local global i32 0, align 4
@nptxfempmsk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @__cvmx_usb_poll_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_usb_poll_tx_fifo(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_13__, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %5 = call i32 (...) @CVMX_USB_LOG_CALLED()
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %6)
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %11, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @CVMX_USBCX_HPTXSTS(i32 %21)
  %23 = call i8* @__cvmx_usb_read_csr32(%struct.TYPE_15__* %18, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @__cvmx_usb_fill_tx_hw(%struct.TYPE_15__* %25, %struct.TYPE_16__* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %17
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @CVMX_USBCX_GINTMSK(i32 %36)
  %38 = load i32, i32* @cvmx_usbcx_gintmsk_t, align 4
  %39 = load i32, i32* @ptxfempmsk, align 4
  %40 = call i32 @USB_SET_FIELD32(i32 %37, i32 %38, i32 %39, i32 1)
  br label %49

41:                                               ; preds = %17
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @CVMX_USBCX_GINTMSK(i32 %44)
  %46 = load i32, i32* @cvmx_usbcx_gintmsk_t, align 4
  %47 = load i32, i32* @ptxfempmsk, align 4
  %48 = call i32 @USB_SET_FIELD32(i32 %45, i32 %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %41, %33
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %54, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %50
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @CVMX_USBCX_GNPTXSTS(i32 %64)
  %66 = call i8* @__cvmx_usb_read_csr32(%struct.TYPE_15__* %61, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @__cvmx_usb_fill_tx_hw(%struct.TYPE_15__* %68, %struct.TYPE_16__* %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %60
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @CVMX_USBCX_GINTMSK(i32 %79)
  %81 = load i32, i32* @cvmx_usbcx_gintmsk_t, align 4
  %82 = load i32, i32* @nptxfempmsk, align 4
  %83 = call i32 @USB_SET_FIELD32(i32 %80, i32 %81, i32 %82, i32 1)
  br label %92

84:                                               ; preds = %60
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @CVMX_USBCX_GINTMSK(i32 %87)
  %89 = load i32, i32* @cvmx_usbcx_gintmsk_t, align 4
  %90 = load i32, i32* @nptxfempmsk, align 4
  %91 = call i32 @USB_SET_FIELD32(i32 %88, i32 %89, i32 %90, i32 0)
  br label %92

92:                                               ; preds = %84, %76
  br label %93

93:                                               ; preds = %92, %50
  %94 = call i32 (...) @CVMX_USB_RETURN_NOTHING()
  ret void
}

declare dso_local i32 @CVMX_USB_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_USB_LOG_PARAM(i8*, %struct.TYPE_15__*) #1

declare dso_local i8* @__cvmx_usb_read_csr32(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @CVMX_USBCX_HPTXSTS(i32) #1

declare dso_local i64 @__cvmx_usb_fill_tx_hw(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @USB_SET_FIELD32(i32, i32, i32, i32) #1

declare dso_local i32 @CVMX_USBCX_GINTMSK(i32) #1

declare dso_local i32 @CVMX_USBCX_GNPTXSTS(i32) #1

declare dso_local i32 @CVMX_USB_RETURN_NOTHING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

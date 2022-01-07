; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c___cvmx_usb_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c___cvmx_usb_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__, i8* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_14__, i8* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i8* }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CVMX_USB_DIRECTION_OUT = common dso_local global i64 0, align 8
@CVMX_USB_TRANSFER_INTERRUPT = common dso_local global i64 0, align 8
@CVMX_USB_TRANSFER_ISOCHRONOUS = common dso_local global i64 0, align 8
@MAX_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32)* @__cvmx_usb_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_usb_fill_tx_fifo(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @CVMX_USB_LOG_CALLED()
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = call i32 (i8*, ...) @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i8*, ...) @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @CVMX_USBCX_HCCHARX(i32 %15, i32 %18)
  %20 = call i8* @__cvmx_usb_read_csr32(%struct.TYPE_22__* %14, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CVMX_USB_DIRECTION_OUT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 (...) @CVMX_USB_RETURN_NOTHING()
  br label %29

29:                                               ; preds = %27, %2
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @CVMX_USBCX_HCSPLTX(i32 %31, i32 %34)
  %36 = call i8* @__cvmx_usb_read_csr32(%struct.TYPE_22__* %30, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (...) @CVMX_USB_RETURN_NOTHING()
  br label %49

49:                                               ; preds = %47, %42, %29
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @CVMX_USBCX_HCTSIZX(i32 %51, i32 %54)
  %56 = call i8* @__cvmx_usb_read_csr32(%struct.TYPE_22__* %50, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %49
  %63 = call i32 (...) @CVMX_USB_RETURN_NOTHING()
  br label %64

64:                                               ; preds = %62, %49
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CVMX_USB_TRANSFER_INTERRUPT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CVMX_USB_TRANSFER_ISOCHRONOUS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %64
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 2
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %8, align 8
  br label %82

79:                                               ; preds = %70
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  store %struct.TYPE_21__* %81, %struct.TYPE_21__** %8, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store i32 %83, i32* %91, align 4
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @CVMX_USBNX_DMA0_OUTB_CHN0(i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = mul nsw i32 %97, 8
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = call i32 @__cvmx_usb_read_csr64(%struct.TYPE_22__* %92, i64 %100)
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  store i32 %101, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 3
  %114 = ashr i32 %113, 2
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  store i32 %114, i32* %122, align 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %124, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MAX_CHANNELS, align 8
  %131 = icmp ugt i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %82
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %132, %82
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %137 = call i32 @__cvmx_usb_poll_tx_fifo(%struct.TYPE_22__* %136)
  %138 = call i32 (...) @CVMX_USB_RETURN_NOTHING()
  ret void
}

declare dso_local i32 @CVMX_USB_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_USB_LOG_PARAM(i8*, ...) #1

declare dso_local i8* @__cvmx_usb_read_csr32(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @CVMX_USBCX_HCCHARX(i32, i32) #1

declare dso_local i32 @CVMX_USB_RETURN_NOTHING(...) #1

declare dso_local i32 @CVMX_USBCX_HCSPLTX(i32, i32) #1

declare dso_local i32 @CVMX_USBCX_HCTSIZX(i32, i32) #1

declare dso_local i32 @__cvmx_usb_read_csr64(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @CVMX_USBNX_DMA0_OUTB_CHN0(i32) #1

declare dso_local i32 @__cvmx_usb_poll_tx_fifo(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

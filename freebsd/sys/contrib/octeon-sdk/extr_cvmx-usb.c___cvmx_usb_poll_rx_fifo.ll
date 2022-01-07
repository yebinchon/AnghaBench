; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c___cvmx_usb_poll_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c___cvmx_usb_poll_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@CVMX_SYNCW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @__cvmx_usb_poll_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_usb_poll_rx_fifo(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = call i32 (...) @CVMX_USB_LOG_CALLED()
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CVMX_USBCX_GRXSTSPH(i32 %14)
  %16 = call i8* @__cvmx_usb_read_csr32(%struct.TYPE_11__* %11, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 (...) @CVMX_USB_RETURN_NOTHING()
  br label %24

24:                                               ; preds = %22, %1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 (...) @CVMX_USB_RETURN_NOTHING()
  br label %31

31:                                               ; preds = %29, %24
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %4, align 4
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = call i32 (...) @CVMX_USB_RETURN_NOTHING()
  br label %42

42:                                               ; preds = %40, %31
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @CVMX_USBNX_DMA0_INB_CHN0(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = mul nsw i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = call i64 @__cvmx_usb_read_csr64(%struct.TYPE_11__* %43, i64 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32* @cvmx_phys_to_ptr(i64 %53)
  store i32* %54, i32** %7, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @CVMX_USBNX_DMA0_INB_CHN0(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = mul nsw i32 %60, 8
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = call i32 @__cvmx_usb_write_csr64(%struct.TYPE_11__* %55, i64 %63, i64 %67)
  br label %69

69:                                               ; preds = %72, %42
  %70 = load i32, i32* %5, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @USB_FIFO_ADDRESS(i32 %74, i32 %77)
  %79 = call i8* @__cvmx_usb_read_csr32(%struct.TYPE_11__* %73, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, 4
  store i32 %84, i32* %5, align 4
  br label %69

85:                                               ; preds = %69
  %86 = load i32, i32* @CVMX_SYNCW, align 4
  %87 = call i32 (...) @CVMX_USB_RETURN_NOTHING()
  ret void
}

declare dso_local i32 @CVMX_USB_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_USB_LOG_PARAM(i8*, %struct.TYPE_11__*) #1

declare dso_local i8* @__cvmx_usb_read_csr32(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @CVMX_USBCX_GRXSTSPH(i32) #1

declare dso_local i32 @CVMX_USB_RETURN_NOTHING(...) #1

declare dso_local i64 @__cvmx_usb_read_csr64(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @CVMX_USBNX_DMA0_INB_CHN0(i32) #1

declare dso_local i32* @cvmx_phys_to_ptr(i64) #1

declare dso_local i32 @__cvmx_usb_write_csr64(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @USB_FIFO_ADDRESS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

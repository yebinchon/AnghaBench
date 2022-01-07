; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__, i8* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__, i8* }
%struct.TYPE_19__ = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@CVMX_USB_INITIALIZE_FLAGS_NO_DMA = common dso_local global i32 0, align 4
@CVMX_USB_CALLBACK_PORT_CHANGED = common dso_local global i32 0, align 4
@CVMX_USB_COMPLETE_SUCCESS = common dso_local global i32 0, align 4
@CVMX_USB_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_usb_poll(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_21__, align 8
  %5 = alloca %struct.TYPE_23__, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca %struct.TYPE_22__, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %11, %struct.TYPE_24__** %6, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %13 = call i32 @CVMX_PREFETCH(%struct.TYPE_24__* %12, i32 0)
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %15 = call i32 @CVMX_PREFETCH(%struct.TYPE_24__* %14, i32 128)
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %17 = call i32 @CVMX_PREFETCH(%struct.TYPE_24__* %16, i32 256)
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %19 = call i32 @CVMX_PREFETCH(%struct.TYPE_24__* %18, i32 384)
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = call i32 @CVMX_PREFETCH(%struct.TYPE_24__* %20, i32 512)
  %22 = call i32 (...) @CVMX_USB_LOG_CALLED()
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %23)
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CVMX_USBCX_HFNUM(i32 %28)
  %30 = call i8* @__cvmx_usb_read_csr32(%struct.TYPE_24__* %25, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 16383
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 16384
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %1
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = and i64 %49, -16384
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @CVMX_USBCX_GINTSTS(i32 %62)
  %64 = call i8* @__cvmx_usb_read_csr32(%struct.TYPE_24__* %59, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CVMX_USBCX_GINTSTS(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @__cvmx_usb_write_csr32(%struct.TYPE_24__* %66, i32 %70, i8* %72)
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %45
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_NO_DMA, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %87 = call i32 @__cvmx_usb_poll_rx_fifo(%struct.TYPE_24__* %86)
  br label %88

88:                                               ; preds = %85, %78
  br label %89

89:                                               ; preds = %88, %45
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %94, %89
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_NO_DMA, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %108 = call i32 @__cvmx_usb_poll_tx_fifo(%struct.TYPE_24__* %107)
  br label %109

109:                                              ; preds = %106, %99
  br label %110

110:                                              ; preds = %109, %94
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %115, %110
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %122 = load i32, i32* @CVMX_USB_CALLBACK_PORT_CHANGED, align 4
  %123 = load i32, i32* @CVMX_USB_COMPLETE_SUCCESS, align 4
  %124 = call i32 @__cvmx_usb_perform_callback(%struct.TYPE_24__* %121, i32* null, i32* null, i32 %122, i32 %123)
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @CVMX_USBCX_HPRT(i32 %128)
  %130 = call i8* @__cvmx_usb_read_csr32(%struct.TYPE_24__* %125, i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i8* %130, i8** %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @CVMX_USBCX_HPRT(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @__cvmx_usb_write_csr32(%struct.TYPE_24__* %134, i32 %138, i8* %140)
  br label %142

142:                                              ; preds = %120, %115
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %142
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @CVMX_USBCX_HAINT(i32 %151)
  %153 = call i8* @__cvmx_usb_read_csr32(%struct.TYPE_24__* %148, i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %160, %147
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @CVMX_CLZ(i32 %161, i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = sub nsw i32 31, %165
  store i32 %166, i32* %9, align 4
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @__cvmx_usb_poll_channel(%struct.TYPE_24__* %167, i32 %168)
  %170 = load i32, i32* %9, align 4
  %171 = shl i32 1, %170
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = xor i32 %173, %171
  store i32 %174, i32* %172, align 4
  br label %156

175:                                              ; preds = %156
  br label %176

176:                                              ; preds = %175, %142
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @__cvmx_usb_schedule(%struct.TYPE_24__* %177, i32 %180)
  %182 = load i32, i32* @CVMX_USB_SUCCESS, align 4
  %183 = call i32 @CVMX_USB_RETURN(i32 %182)
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @CVMX_PREFETCH(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @CVMX_USB_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_USB_LOG_PARAM(i8*, i32*) #1

declare dso_local i8* @__cvmx_usb_read_csr32(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @CVMX_USBCX_HFNUM(i32) #1

declare dso_local i32 @CVMX_USBCX_GINTSTS(i32) #1

declare dso_local i32 @__cvmx_usb_write_csr32(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i32 @__cvmx_usb_poll_rx_fifo(%struct.TYPE_24__*) #1

declare dso_local i32 @__cvmx_usb_poll_tx_fifo(%struct.TYPE_24__*) #1

declare dso_local i32 @__cvmx_usb_perform_callback(%struct.TYPE_24__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @CVMX_USBCX_HPRT(i32) #1

declare dso_local i32 @CVMX_USBCX_HAINT(i32) #1

declare dso_local i32 @CVMX_CLZ(i32, i32) #1

declare dso_local i32 @__cvmx_usb_poll_channel(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @__cvmx_usb_schedule(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @CVMX_USB_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

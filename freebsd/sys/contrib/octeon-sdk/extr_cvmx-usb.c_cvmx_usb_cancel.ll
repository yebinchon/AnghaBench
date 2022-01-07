; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32**, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MAX_PIPES = common dso_local global i32 0, align 4
@CVMX_USB_INVALID_PARAM = common dso_local global i32 0, align 4
@MAX_TRANSACTIONS = common dso_local global i32 0, align 4
@__CVMX_USB_PIPE_FLAGS_OPEN = common dso_local global i32 0, align 4
@__CVMX_USB_TRANSACTION_FLAGS_IN_USE = common dso_local global i32 0, align 4
@__CVMX_USB_PIPE_FLAGS_SCHEDULED = common dso_local global i32 0, align 4
@CVMX_SYNCW = common dso_local global i32 0, align 4
@CVMX_USB_COMPLETE_CANCEL = common dso_local global i32 0, align 4
@CVMX_USB_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_usb_cancel(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %9, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i64 %18
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %10, align 8
  %20 = call i32 (...) @CVMX_USB_LOG_CALLED()
  %21 = load i32*, i32** %5, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAX_PIPES, align 4
  %33 = icmp sge i32 %31, %32
  br label %34

34:                                               ; preds = %30, %3
  %35 = phi i1 [ true, %3 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @cvmx_unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %41 = call i32 @CVMX_USB_RETURN(i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MAX_TRANSACTIONS, align 4
  %48 = icmp sge i32 %46, %47
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ true, %42 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @cvmx_unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %56 = call i32 @CVMX_USB_RETURN(i32 %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @__CVMX_USB_PIPE_FLAGS_OPEN, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i64 @cvmx_unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %69 = call i32 @CVMX_USB_RETURN(i32 %68)
  br label %70

70:                                               ; preds = %67, %57
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i64 %75
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %8, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @__CVMX_USB_TRANSACTION_FLAGS_IN_USE, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @cvmx_unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %88 = call i32 @CVMX_USB_RETURN(i32 %87)
  br label %89

89:                                               ; preds = %86, %70
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = icmp eq %struct.TYPE_13__* %92, %93
  br i1 %94, label %95, label %146

95:                                               ; preds = %89
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @__CVMX_USB_PIPE_FLAGS_SCHEDULED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %146

102:                                              ; preds = %95
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32**, i32*** %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32*, i32** %105, i64 %108
  store i32* null, i32** %109, align 8
  %110 = load i32, i32* @__CVMX_USB_PIPE_FLAGS_SCHEDULED, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* @CVMX_SYNCW, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @CVMX_USBCX_HCCHARX(i64 %120, i32 %123)
  %125 = call i32 @__cvmx_usb_read_csr32(%struct.TYPE_15__* %117, i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 %125, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %102
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @CVMX_USBCX_HCCHARX(i64 %137, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @__cvmx_usb_write_csr32(%struct.TYPE_15__* %134, i32 %141, i32 %143)
  br label %145

145:                                              ; preds = %131, %102
  br label %146

146:                                              ; preds = %145, %95, %89
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %150 = load i32, i32* @CVMX_USB_COMPLETE_CANCEL, align 4
  %151 = call i32 @__cvmx_usb_perform_complete(%struct.TYPE_15__* %147, %struct.TYPE_14__* %148, %struct.TYPE_13__* %149, i32 %150)
  %152 = load i32, i32* @CVMX_USB_SUCCESS, align 4
  %153 = call i32 @CVMX_USB_RETURN(i32 %152)
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @CVMX_USB_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_USB_LOG_PARAM(i8*, i32) #1

declare dso_local i64 @cvmx_unlikely(i32) #1

declare dso_local i32 @CVMX_USB_RETURN(i32) #1

declare dso_local i32 @__cvmx_usb_read_csr32(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @CVMX_USBCX_HCCHARX(i64, i32) #1

declare dso_local i32 @__cvmx_usb_write_csr32(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @__cvmx_usb_perform_complete(%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c___cvmx_usb_perform_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c___cvmx_usb_perform_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i32, i64, i64, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, %struct.TYPE_22__*, i64, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_22__ = type { %struct.TYPE_25__*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CVMX_USB_TRANSFER_ISOCHRONOUS = common dso_local global i64 0, align 8
@CVMX_USB_COMPLETE_SUCCESS = common dso_local global %struct.TYPE_25__* null, align 8
@CVMX_USB_STAGE_NON_CONTROL = common dso_local global i32 0, align 4
@CVMX_USB_CALLBACK_TRANSFER_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*)* @__cvmx_usb_perform_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_usb_perform_complete(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1, %struct.TYPE_25__* %2, %struct.TYPE_25__* %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %8, align 8
  %9 = call i32 (...) @CVMX_USB_LOG_CALLED()
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %11 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %10)
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %13 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %12)
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %15 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %14)
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %17 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_25__* %16)
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 12
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %22 = icmp eq %struct.TYPE_25__* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 12
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %25, align 8
  br label %26

26:                                               ; preds = %23, %4
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CVMX_USB_TRANSFER_ISOCHRONOUS, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @cvmx_unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %26
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 11
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 10
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  store i64 %38, i64* %43, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 10
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %49, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %72

54:                                               ; preds = %35
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** @CVMX_USB_COMPLETE_SUCCESS, align 8
  %57 = icmp eq %struct.TYPE_25__* %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 11
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 10
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 1
  store %struct.TYPE_22__* %68, %struct.TYPE_22__** %66, align 8
  %69 = load i32, i32* @CVMX_USB_STAGE_NON_CONTROL, align 4
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 8
  br label %140

72:                                               ; preds = %54, %35
  br label %73

73:                                               ; preds = %72, %26
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 6
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  %77 = icmp ne %struct.TYPE_24__* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 7
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  store %struct.TYPE_23__* %81, %struct.TYPE_23__** %85, align 8
  br label %92

86:                                               ; preds = %73
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 7
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %88, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 8
  store %struct.TYPE_23__* %89, %struct.TYPE_23__** %91, align 8
  br label %92

92:                                               ; preds = %86, %78
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 7
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = icmp ne %struct.TYPE_23__* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 6
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %99, align 8
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 7
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  store %struct.TYPE_24__* %100, %struct.TYPE_24__** %104, align 8
  br label %111

105:                                              ; preds = %92
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 5
  store %struct.TYPE_24__* %108, %struct.TYPE_24__** %110, align 8
  br label %111

111:                                              ; preds = %105, %97
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %113, align 8
  %115 = icmp ne %struct.TYPE_24__* %114, null
  br i1 %115, label %130, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %125 = call i32 @__cvmx_usb_remove_pipe(i64 %123, %struct.TYPE_25__* %124)
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %129 = call i32 @__cvmx_usb_append_pipe(i32* %127, %struct.TYPE_25__* %128)
  br label %130

130:                                              ; preds = %116, %111
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %134 = load i32, i32* @CVMX_USB_CALLBACK_TRANSFER_COMPLETE, align 4
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %136 = call i32 @__cvmx_usb_perform_callback(%struct.TYPE_25__* %131, %struct.TYPE_25__* %132, %struct.TYPE_25__* %133, i32 %134, %struct.TYPE_25__* %135)
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %139 = call i32 @__cvmx_usb_free_transaction(%struct.TYPE_25__* %137, %struct.TYPE_25__* %138)
  br label %140

140:                                              ; preds = %130, %58
  %141 = call i32 (...) @CVMX_USB_RETURN_NOTHING()
  ret void
}

declare dso_local i32 @CVMX_USB_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_USB_LOG_PARAM(i8*, %struct.TYPE_25__*) #1

declare dso_local i64 @cvmx_unlikely(i32) #1

declare dso_local i32 @__cvmx_usb_remove_pipe(i64, %struct.TYPE_25__*) #1

declare dso_local i32 @__cvmx_usb_append_pipe(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @__cvmx_usb_perform_callback(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @__cvmx_usb_free_transaction(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @CVMX_USB_RETURN_NOTHING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_submit_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_submit_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@CVMX_USB_INVALID_PARAM = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_usb_submit_control(i32* %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %19 = load i32*, i32** %9, align 8
  store i32* %19, i32** %17, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call %struct.TYPE_5__* @cvmx_phys_to_ptr(i64 %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %18, align 8
  %22 = call i32 (...) @CVMX_USB_LOG_CALLED()
  %23 = load i32*, i32** %9, align 8
  %24 = ptrtoint i32* %23 to i32
  %25 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* %12, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @cvmx_unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %7
  %43 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %44 = call i32 @CVMX_USB_RETURN(i32 %43)
  br label %45

45:                                               ; preds = %42, %7
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 @cvmx_unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %58 = call i32 @CVMX_USB_RETURN(i32 %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i1 [ false, %59 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @cvmx_unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %72 = call i32 @CVMX_USB_RETURN(i32 %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 128
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cvmx_le16_to_cpu(i32 %84)
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load i32*, i32** %17, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @CVMX_USB_TRANSFER_CONTROL, align 4
  %90 = load i64, i64* %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i64, i64* %11, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @__cvmx_usb_submit_transaction(i32* %87, i32 %88, i32 %89, i32 0, i64 %90, i32 %91, i64 %92, i32 0, i32 0, i32* null, i32 %93, i8* %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @CVMX_USB_RETURN(i32 %96)
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_5__* @cvmx_phys_to_ptr(i64) #1

declare dso_local i32 @CVMX_USB_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_USB_LOG_PARAM(i8*, i32) #1

declare dso_local i64 @cvmx_unlikely(i32) #1

declare dso_local i32 @CVMX_USB_RETURN(i32) #1

declare dso_local i32 @cvmx_le16_to_cpu(i32) #1

declare dso_local i32 @__cvmx_usb_submit_transaction(i32*, i32, i32, i32, i64, i32, i64, i32, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_submit_isochronous.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_submit_isochronous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@CVMX_USB_INVALID_PARAM = common dso_local global i32 0, align 4
@CVMX_USB_ISOCHRONOUS_FLAGS_ALLOW_SHORT = common dso_local global i32 0, align 4
@CVMX_USB_ISOCHRONOUS_FLAGS_ASAP = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_ISOCHRONOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_usb_submit_isochronous(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6, i32 %7, i32 %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  %24 = load i32*, i32** %12, align 8
  store i32* %24, i32** %23, align 8
  %25 = call i32 (...) @CVMX_USB_LOG_CALLED()
  %26 = load i32*, i32** %12, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %17, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* %18, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @cvmx_unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %10
  %51 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %52 = call i32 @CVMX_USB_RETURN(i32 %51)
  br label %53

53:                                               ; preds = %50, %10
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @CVMX_USB_ISOCHRONOUS_FLAGS_ALLOW_SHORT, align 4
  %56 = load i32, i32* @CVMX_USB_ISOCHRONOUS_FLAGS_ASAP, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %54, %58
  %60 = call i64 @cvmx_unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %64 = call i32 @CVMX_USB_RETURN(i32 %63)
  br label %65

65:                                               ; preds = %62, %53
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %66, 1
  %68 = zext i1 %67 to i32
  %69 = call i64 @cvmx_unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %73 = call i32 @CVMX_USB_RETURN(i32 %72)
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32*, i32** %17, align 8
  %76 = icmp ne i32* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @cvmx_unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %83 = call i32 @CVMX_USB_RETURN(i32 %82)
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i64, i64* %18, align 8
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i64 @cvmx_unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %93 = call i32 @CVMX_USB_RETURN(i32 %92)
  br label %94

94:                                               ; preds = %91, %84
  %95 = load i32, i32* %19, align 4
  %96 = icmp slt i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i64 @cvmx_unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %102 = call i32 @CVMX_USB_RETURN(i32 %101)
  br label %103

103:                                              ; preds = %100, %94
  %104 = load i32*, i32** %23, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @CVMX_USB_TRANSFER_ISOCHRONOUS, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i64, i64* %18, align 8
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32*, i32** %17, align 8
  %113 = load i32, i32* %20, align 4
  %114 = load i8*, i8** %21, align 8
  %115 = call i32 @__cvmx_usb_submit_transaction(i32* %104, i32 %105, i32 %106, i32 %107, i64 %108, i32 %109, i32 0, i32 %110, i32 %111, i32* %112, i32 %113, i8* %114)
  store i32 %115, i32* %22, align 4
  %116 = load i32, i32* %22, align 4
  %117 = call i32 @CVMX_USB_RETURN(i32 %116)
  %118 = load i32, i32* %11, align 4
  ret i32 %118
}

declare dso_local i32 @CVMX_USB_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_USB_LOG_PARAM(i8*, i32) #1

declare dso_local i64 @cvmx_unlikely(i32) #1

declare dso_local i32 @CVMX_USB_RETURN(i32) #1

declare dso_local i32 @__cvmx_usb_submit_transaction(i32*, i32, i32, i32, i64, i32, i32, i32, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_register_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c_cvmx_usb_register_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i8** }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__CVMX_USB_CALLBACK_END = common dso_local global i64 0, align 8
@CVMX_USB_INVALID_PARAM = common dso_local global i32 0, align 4
@CVMX_USB_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_usb_register_callback(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %10, align 8
  %13 = call i32 (...) @CVMX_USB_LOG_CALLED()
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @CVMX_USB_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @__CVMX_USB_CALLBACK_END, align 8
  %25 = icmp uge i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @cvmx_unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %31 = call i32 @CVMX_USB_RETURN(i32 %30)
  br label %32

32:                                               ; preds = %29, %4
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @cvmx_unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %41 = call i32 @CVMX_USB_RETURN(i32 %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8* %43, i8** %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  store i8* %49, i8** %54, align 8
  %55 = load i32, i32* @CVMX_USB_SUCCESS, align 4
  %56 = call i32 @CVMX_USB_RETURN(i32 %55)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @CVMX_USB_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_USB_LOG_PARAM(i8*, i8*) #1

declare dso_local i64 @cvmx_unlikely(i32) #1

declare dso_local i32 @CVMX_USB_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

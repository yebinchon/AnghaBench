; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_control_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_control_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LIBUSB20_CONTROL_SETUP_DECODED = type { i64, i64, i64, i8*, i8* }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB20_CONTROL_SETUP = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_PIPE = common dso_local global i32 0, align 4
@LIBUSB_ERROR_PIPE = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_TIMEOUT = common dso_local global i32 0, align 4
@LIBUSB_ERROR_TIMEOUT = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_control_transfer(i32* %0, i8* %1, i8* %2, i64 %3, i64 %4, i8** %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.LIBUSB20_CONTROL_SETUP_DECODED, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i8** %5, i8*** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %24, i32* %9, align 4
  br label %71

25:                                               ; preds = %8
  %26 = load i64, i64* %16, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8**, i8*** %15, align 8
  %30 = icmp eq i8** %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %32, i32* %9, align 4
  br label %71

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @LIBUSB20_CONTROL_SETUP, align 4
  %35 = call i32 @LIBUSB20_INIT(i32 %34, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %18)
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %18, i32 0, i32 4
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %18, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %18, i32 0, i32 2
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %18, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %18, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i8**, i8*** %15, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @libusb20_dev_request_sync(i32* %46, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %18, i8** %47, i64* %20, i32 %48, i32 0)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* @LIBUSB20_ERROR_PIPE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = load i32, i32* @LIBUSB_ERROR_PIPE, align 4
  store i32 %54, i32* %9, align 4
  br label %71

55:                                               ; preds = %33
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* @LIBUSB20_ERROR_TIMEOUT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @LIBUSB_ERROR_TIMEOUT, align 4
  store i32 %60, i32* %9, align 4
  br label %71

61:                                               ; preds = %55
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @LIBUSB_ERROR_NO_DEVICE, align 4
  store i32 %65, i32* %9, align 4
  br label %71

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %20, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %64, %59, %53, %31, %23
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @LIBUSB20_INIT(i32, %struct.LIBUSB20_CONTROL_SETUP_DECODED*) #1

declare dso_local i32 @libusb20_dev_request_sync(i32*, %struct.LIBUSB20_CONTROL_SETUP_DECODED*, i8**, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_req_string_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_req_string_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.LIBUSB20_CONTROL_SETUP_DECODED = type { i32, i32, i32, i32, i32 }

@LIBUSB20_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB20_CONTROL_SETUP = common dso_local global i32 0, align 4
@LIBUSB20_REQUEST_TYPE_STANDARD = common dso_local global i32 0, align 4
@LIBUSB20_RECIPIENT_DEVICE = common dso_local global i32 0, align 4
@LIBUSB20_ENDPOINT_IN = common dso_local global i32 0, align 4
@LIBUSB20_REQUEST_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@LIBUSB20_DT_STRING = common dso_local global i32 0, align 4
@LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb20_dev_req_string_sync(%struct.libusb20_device* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb20_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.LIBUSB20_CONTROL_SETUP_DECODED, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @memset(i8* %15, i32 0, i32 %16)
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @LIBUSB20_ERROR_INVALID_PARAM, align 4
  store i32 %21, i32* %6, align 4
  br label %82

22:                                               ; preds = %5
  %23 = load i32, i32* @LIBUSB20_CONTROL_SETUP, align 4
  %24 = call i32 @LIBUSB20_INIT(i32 %23, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12)
  %25 = load i32, i32* @LIBUSB20_REQUEST_TYPE_STANDARD, align 4
  %26 = load i32, i32* @LIBUSB20_RECIPIENT_DEVICE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @LIBUSB20_ENDPOINT_IN, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @LIBUSB20_REQUEST_GET_DESCRIPTOR, align 4
  %32 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @LIBUSB20_DT_STRING, align 4
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12, i32 0, i32 3
  store i32 4, i32* %40, align 4
  %41 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* @LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK, align 4
  %44 = call i32 @libusb20_dev_request_sync(%struct.libusb20_device* %41, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12, i8* %42, i32* null, i32 1000, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %22
  %48 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12, i32 0, i32 3
  store i32 255, i32* %48, align 4
  store i32 0, i32* %14, align 4
  br label %55

49:                                               ; preds = %22
  %50 = load i8*, i8** %10, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK, align 4
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %49, %47
  %56 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @libusb20_dev_request_sync(%struct.libusb20_device* %64, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %12, i8* %65, i32* null, i32 1000, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %6, align 4
  br label %82

72:                                               ; preds = %63
  %73 = load i8*, i8** %10, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @LIBUSB20_DT_STRING, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @LIBUSB20_ERROR_OTHER, align 4
  store i32 %80, i32* %6, align 4
  br label %82

81:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %79, %70, %20
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @LIBUSB20_INIT(i32, %struct.LIBUSB20_CONTROL_SETUP_DECODED*) #1

declare dso_local i32 @libusb20_dev_request_sync(%struct.libusb20_device*, %struct.LIBUSB20_CONTROL_SETUP_DECODED*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

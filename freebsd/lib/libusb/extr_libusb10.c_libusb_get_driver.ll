; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_get_driver.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_get_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB_ERROR_OTHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_get_driver(%struct.libusb20_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libusb20_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %13 = icmp eq %struct.libusb20_device* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %15, i32* %5, align 4
  br label %43

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %20, i32* %5, align 4
  br label %43

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 255
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 255, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @libusb20_dev_get_iface_desc(%struct.libusb20_device* %26, i32 %27, i8* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @LIBUSB_ERROR_OTHER, align 4
  store i32 %34, i32* %5, align 4
  br label %43

35:                                               ; preds = %25
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @strstr(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %35
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %33, %19, %14
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @libusb20_dev_get_iface_desc(%struct.libusb20_device*, i32, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

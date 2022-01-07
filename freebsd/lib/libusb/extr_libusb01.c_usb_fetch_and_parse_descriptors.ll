; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_fetch_and_parse_descriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_fetch_and_parse_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.libusb20_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.libusb20_device*, i32**, i32*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_fetch_and_parse_descriptors(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.libusb20_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %84

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.usb_device* @usb_device(i32* %14)
  store %struct.usb_device* %15, %struct.usb_device** %3, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.libusb20_device*
  store %struct.libusb20_device* %18, %struct.libusb20_device** %4, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %84

25:                                               ; preds = %13
  %26 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32* @malloc(i32 %33)
  %35 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  br label %84

42:                                               ; preds = %25
  %43 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @memset(i32* %45, i32 0, i32 %46)
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %80, %42
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %49, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %48
  %56 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %57 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.libusb20_device*, i32**, i32*, i32)*, i32 (%struct.libusb20_device*, i32**, i32*, i32)** %59, align 8
  %61 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 %60(%struct.libusb20_device* %61, i32** %5, i32* %8, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %68 = call i32 @usb_destroy_configuration(%struct.usb_device* %67)
  br label %84

69:                                               ; preds = %55
  %70 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %71 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @usb_parse_configuration(i32* %75, i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @free(i32* %78)
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %48

83:                                               ; preds = %48
  br label %84

84:                                               ; preds = %83, %66, %41, %24, %12
  ret void
}

declare dso_local %struct.usb_device* @usb_device(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_destroy_configuration(%struct.usb_device*) #1

declare dso_local i32 @usb_parse_configuration(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

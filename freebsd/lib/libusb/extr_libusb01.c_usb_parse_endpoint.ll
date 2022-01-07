; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_parse_endpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_parse_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_parse_state = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32*, %struct.libusb20_endpoint* }
%struct.libusb20_endpoint = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_parse_state*)* @usb_parse_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_parse_endpoint(%struct.usb_parse_state* %0) #0 {
  %2 = alloca %struct.usb_parse_state*, align 8
  %3 = alloca %struct.usb_endpoint_descriptor*, align 8
  %4 = alloca %struct.libusb20_endpoint*, align 8
  store %struct.usb_parse_state* %0, %struct.usb_parse_state** %2, align 8
  %5 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %6 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %7, align 8
  store %struct.libusb20_endpoint* %8, %struct.libusb20_endpoint** %4, align 8
  %9 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %10 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = sext i32 %12 to i64
  %15 = inttoptr i64 %14 to %struct.usb_endpoint_descriptor*
  store %struct.usb_endpoint_descriptor* %15, %struct.usb_endpoint_descriptor** %3, align 8
  %16 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %17 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %1
  %21 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %4, align 8
  %22 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %26 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %4, align 8
  %28 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %32 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %4, align 8
  %34 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %38 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %4, align 8
  %40 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %44 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %4, align 8
  %46 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %50 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %4, align 8
  %52 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %56 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %4, align 8
  %58 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %4, align 8
  %64 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %68 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %20, %1
  %70 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %4, align 8
  %71 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %70, i32 0, i32 0
  %72 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %73 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32* %71, i32** %74, align 8
  %75 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %77 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %76, i32 0, i32 1
  %78 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %79 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %78, i32 0, i32 0
  %80 = call i32 @usb_parse_extra(%struct.usb_parse_state* %75, i32* %77, i32* %79)
  ret void
}

declare dso_local i32 @usb_parse_extra(%struct.usb_parse_state*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

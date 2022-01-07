; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_parse_iface_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_parse_iface_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_parse_state = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i64, %struct.libusb20_interface* }
%struct.libusb20_interface = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.usb_interface_descriptor = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_parse_state*)* @usb_parse_iface_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_parse_iface_sub(%struct.usb_parse_state* %0) #0 {
  %2 = alloca %struct.usb_parse_state*, align 8
  %3 = alloca %struct.libusb20_interface*, align 8
  %4 = alloca %struct.usb_interface_descriptor*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_parse_state* %0, %struct.usb_parse_state** %2, align 8
  %6 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %7 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load %struct.libusb20_interface*, %struct.libusb20_interface** %8, align 8
  store %struct.libusb20_interface* %9, %struct.libusb20_interface** %3, align 8
  %10 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %11 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = sext i32 %13 to i64
  %16 = inttoptr i64 %15 to %struct.usb_interface_descriptor*
  store %struct.usb_interface_descriptor* %16, %struct.usb_interface_descriptor** %4, align 8
  %17 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %18 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %81

21:                                               ; preds = %1
  %22 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %23 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %27 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 8
  %28 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %29 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %33 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 4
  %34 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %35 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %39 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %41 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %45 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %47 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %50 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %52 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %56 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %58 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %62 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %64 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %68 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %70 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %74 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %76 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %80 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %21, %1
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %99, %81
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %85 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %90 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = add nsw i64 %91, %92
  %94 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %95 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i64 %93, i64* %96, align 8
  %97 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %98 = call i32 @usb_parse_endpoint(%struct.usb_parse_state* %97)
  br label %99

99:                                               ; preds = %88
  %100 = load i64, i64* %5, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %5, align 8
  br label %82

102:                                              ; preds = %82
  %103 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %104 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %103, i32 0, i32 2
  %105 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %106 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32* %104, i32** %107, align 8
  %108 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %109 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %110 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %109, i32 0, i32 2
  %111 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %112 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %111, i32 0, i32 1
  %113 = call i32 @usb_parse_extra(%struct.usb_parse_state* %108, i32* %110, i32* %112)
  ret void
}

declare dso_local i32 @usb_parse_endpoint(%struct.usb_parse_state*) #1

declare dso_local i32 @usb_parse_extra(%struct.usb_parse_state*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_parse_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_parse_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_parse_state = type { i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.libusb20_interface* }
%struct.libusb20_interface = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_interface = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_parse_state*)* @usb_parse_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_parse_iface(%struct.usb_parse_state* %0) #0 {
  %2 = alloca %struct.usb_parse_state*, align 8
  %3 = alloca %struct.libusb20_interface*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_parse_state* %0, %struct.usb_parse_state** %2, align 8
  %6 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %7 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.libusb20_interface*, %struct.libusb20_interface** %8, align 8
  store %struct.libusb20_interface* %9, %struct.libusb20_interface** %3, align 8
  %10 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %11 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = sext i32 %13 to i64
  %16 = inttoptr i64 %15 to %struct.usb_interface*
  store %struct.usb_interface* %16, %struct.usb_interface** %4, align 8
  %17 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %18 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %23 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %29 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %21, %1
  %35 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %36 = call i32 @usb_parse_iface_sub(%struct.usb_parse_state* %35)
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %55, %34
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %40 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.libusb20_interface*, %struct.libusb20_interface** %3, align 8
  %45 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add nsw i64 %46, %47
  %49 = inttoptr i64 %48 to %struct.libusb20_interface*
  %50 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %51 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store %struct.libusb20_interface* %49, %struct.libusb20_interface** %52, align 8
  %53 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %54 = call i32 @usb_parse_iface_sub(%struct.usb_parse_state* %53)
  br label %55

55:                                               ; preds = %43
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %37

58:                                               ; preds = %37
  ret void
}

declare dso_local i32 @usb_parse_iface_sub(%struct.usb_parse_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

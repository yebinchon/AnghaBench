; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_parse_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_parse_state = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i64, %struct.libusb20_config* }
%struct.libusb20_config = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.usb_config_descriptor* }
%struct.usb_config_descriptor = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_parse_state*)* @usb_parse_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_parse_config(%struct.usb_parse_state* %0) #0 {
  %2 = alloca %struct.usb_parse_state*, align 8
  %3 = alloca %struct.libusb20_config*, align 8
  %4 = alloca %struct.usb_config_descriptor*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_parse_state* %0, %struct.usb_parse_state** %2, align 8
  %6 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %7 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load %struct.libusb20_config*, %struct.libusb20_config** %8, align 8
  store %struct.libusb20_config* %9, %struct.libusb20_config** %3, align 8
  %10 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %11 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %12, align 8
  store %struct.usb_config_descriptor* %13, %struct.usb_config_descriptor** %4, align 8
  %14 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %15 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %72

18:                                               ; preds = %1
  %19 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  %20 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %24 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  %26 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %30 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  %32 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %36 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  %38 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %41 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  %43 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %47 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  %49 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %53 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  %55 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %59 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  %61 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %65 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %67 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %71 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %18, %1
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %90, %72
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  %76 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  %81 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %86 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i64 %84, i64* %87, align 8
  %88 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %89 = call i32 @usb_parse_iface(%struct.usb_parse_state* %88)
  br label %90

90:                                               ; preds = %79
  %91 = load i64, i64* %5, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %5, align 8
  br label %73

93:                                               ; preds = %73
  %94 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  %95 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %94, i32 0, i32 2
  %96 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %97 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32* %95, i32** %98, align 8
  %99 = load %struct.usb_parse_state*, %struct.usb_parse_state** %2, align 8
  %100 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %101 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %100, i32 0, i32 2
  %102 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %103 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %102, i32 0, i32 1
  %104 = call i32 @usb_parse_extra(%struct.usb_parse_state* %99, i32* %101, i32* %103)
  ret void
}

declare dso_local i32 @usb_parse_iface(%struct.usb_parse_state*) #1

declare dso_local i32 @usb_parse_extra(%struct.usb_parse_state*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_be_add_dev_quirk.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_be_add_dev_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.libusb20_quirk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb20_be_add_dev_quirk(%struct.libusb20_backend* %0, %struct.libusb20_quirk* %1) #0 {
  %3 = alloca %struct.libusb20_backend*, align 8
  %4 = alloca %struct.libusb20_quirk*, align 8
  store %struct.libusb20_backend* %0, %struct.libusb20_backend** %3, align 8
  store %struct.libusb20_quirk* %1, %struct.libusb20_quirk** %4, align 8
  %5 = load %struct.libusb20_backend*, %struct.libusb20_backend** %3, align 8
  %6 = getelementptr inbounds %struct.libusb20_backend, %struct.libusb20_backend* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.libusb20_backend*, %struct.libusb20_quirk*)**
  %10 = load i32 (%struct.libusb20_backend*, %struct.libusb20_quirk*)*, i32 (%struct.libusb20_backend*, %struct.libusb20_quirk*)** %9, align 8
  %11 = load %struct.libusb20_backend*, %struct.libusb20_backend** %3, align 8
  %12 = load %struct.libusb20_quirk*, %struct.libusb20_quirk** %4, align 8
  %13 = call i32 %10(%struct.libusb20_backend* %11, %struct.libusb20_quirk* %12)
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

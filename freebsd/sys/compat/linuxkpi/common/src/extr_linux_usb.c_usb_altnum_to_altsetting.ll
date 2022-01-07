; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_altnum_to_altsetting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_altnum_to_altsetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_interface = type { i32 }
%struct.usb_interface = type { i64, %struct.usb_host_interface* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_host_interface*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %8 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.usb_host_interface* null, %struct.usb_host_interface** %3, align 8
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 1
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %15, i64 %16
  store %struct.usb_host_interface* %17, %struct.usb_host_interface** %3, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.usb_host_interface*, %struct.usb_host_interface** %3, align 8
  ret %struct.usb_host_interface* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

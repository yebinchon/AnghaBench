; ModuleID = '/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_common.c_umass_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_common.c_umass_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@USB_MODE_HOST = common dso_local global i64 0, align 8
@UICLASS_MASS = common dso_local global i64 0, align 8
@UISUBCLASS_SCSI = common dso_local global i64 0, align 8
@UIPROTO_MASS_BBB = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @umass_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.usb_attach_arg* @device_get_ivars(i32 %5)
  store %struct.usb_attach_arg* %6, %struct.usb_attach_arg** %4, align 8
  %7 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %8 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @USB_MODE_HOST, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %37, label %12

12:                                               ; preds = %1
  %13 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %14 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UICLASS_MASS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %37, label %19

19:                                               ; preds = %12
  %20 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %21 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UISUBCLASS_SCSI, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %19
  %27 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %28 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UIPROTO_MASS_BBB, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @device_get_unit(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %26, %19, %12, %1
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i64 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

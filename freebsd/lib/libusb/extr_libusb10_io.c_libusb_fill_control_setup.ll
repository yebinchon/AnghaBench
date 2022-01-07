; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_fill_control_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_fill_control_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_control_setup = type { i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libusb_fill_control_setup(i8** %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.libusb_control_setup*, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i8**, i8*** %7, align 8
  %15 = bitcast i8** %14 to %struct.libusb_control_setup*
  store %struct.libusb_control_setup* %15, %struct.libusb_control_setup** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.libusb_control_setup*, %struct.libusb_control_setup** %13, align 8
  %18 = getelementptr inbounds %struct.libusb_control_setup, %struct.libusb_control_setup* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.libusb_control_setup*, %struct.libusb_control_setup** %13, align 8
  %21 = getelementptr inbounds %struct.libusb_control_setup, %struct.libusb_control_setup* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i8* @htole16(i32 %22)
  %24 = load %struct.libusb_control_setup*, %struct.libusb_control_setup** %13, align 8
  %25 = getelementptr inbounds %struct.libusb_control_setup, %struct.libusb_control_setup* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i8* @htole16(i32 %26)
  %28 = load %struct.libusb_control_setup*, %struct.libusb_control_setup** %13, align 8
  %29 = getelementptr inbounds %struct.libusb_control_setup, %struct.libusb_control_setup* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i8* @htole16(i32 %30)
  %32 = load %struct.libusb_control_setup*, %struct.libusb_control_setup** %13, align 8
  %33 = getelementptr inbounds %struct.libusb_control_setup, %struct.libusb_control_setup* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  ret void
}

declare dso_local i8* @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

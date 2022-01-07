; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_bulk_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_bulk_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { i32 }
%struct.urb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@usb_linux_wait_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_bulk_msg(%struct.usb_device* %0, %struct.usb_host_endpoint* %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_host_endpoint*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.urb*, align 8
  %15 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %8, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %17 = icmp eq %struct.usb_host_endpoint* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %57

21:                                               ; preds = %6
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %57

27:                                               ; preds = %21
  %28 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %29 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %30 = call i32 @usb_setup_endpoint(%struct.usb_device* %28, %struct.usb_host_endpoint* %29, i32 4096)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %7, align 4
  br label %57

35:                                               ; preds = %27
  %36 = call %struct.urb* @usb_alloc_urb(i32 0, i32 0)
  store %struct.urb* %36, %struct.urb** %14, align 8
  %37 = load %struct.urb*, %struct.urb** %14, align 8
  %38 = icmp eq %struct.urb* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %57

42:                                               ; preds = %35
  %43 = load %struct.urb*, %struct.urb** %14, align 8
  %44 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %45 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @usb_linux_wait_complete, align 4
  %49 = call i32 @usb_fill_bulk_urb(%struct.urb* %43, %struct.usb_device* %44, %struct.usb_host_endpoint* %45, i8* %46, i32 %47, i32 %48, i32* null)
  %50 = load %struct.urb*, %struct.urb** %14, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @usb_start_wait_urb(%struct.urb* %50, i32 %51, i32* %52)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.urb*, %struct.urb** %14, align 8
  %55 = call i32 @usb_free_urb(%struct.urb* %54)
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %42, %39, %33, %24, %18
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @usb_setup_endpoint(%struct.usb_device*, %struct.usb_host_endpoint*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, %struct.usb_host_endpoint*, i8*, i32, i32, i32*) #1

declare dso_local i32 @usb_start_wait_urb(%struct.urb*, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

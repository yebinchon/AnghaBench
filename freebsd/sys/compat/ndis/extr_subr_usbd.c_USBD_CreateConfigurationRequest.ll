; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_USBD_CreateConfigurationRequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_USBD_CreateConfigurationRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.usbd_urb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usbd_interface_list_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.usbd_urb* (i32*, i32*)* @USBD_CreateConfigurationRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.usbd_urb* @USBD_CreateConfigurationRequest(i32* %0, i32* %1) #0 {
  %3 = alloca %union.usbd_urb*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x %struct.usbd_interface_list_entry], align 4
  %7 = alloca %union.usbd_urb*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = getelementptr inbounds [2 x %struct.usbd_interface_list_entry], [2 x %struct.usbd_interface_list_entry]* %6, i64 0, i64 0
  %9 = call i32 @bzero(%struct.usbd_interface_list_entry* %8, i32 8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @USBD_ParseConfigurationDescriptorEx(i32* %10, i32* %11, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1)
  %13 = getelementptr inbounds [2 x %struct.usbd_interface_list_entry], [2 x %struct.usbd_interface_list_entry]* %6, i64 0, i64 0
  %14 = getelementptr inbounds %struct.usbd_interface_list_entry, %struct.usbd_interface_list_entry* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [2 x %struct.usbd_interface_list_entry], [2 x %struct.usbd_interface_list_entry]* %6, i64 0, i64 0
  %17 = call %union.usbd_urb* @USBD_CreateConfigurationRequestEx(i32* %15, %struct.usbd_interface_list_entry* %16)
  store %union.usbd_urb* %17, %union.usbd_urb** %7, align 8
  %18 = load %union.usbd_urb*, %union.usbd_urb** %7, align 8
  %19 = icmp eq %union.usbd_urb* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %union.usbd_urb* null, %union.usbd_urb** %3, align 8
  br label %29

21:                                               ; preds = %2
  %22 = load %union.usbd_urb*, %union.usbd_urb** %7, align 8
  %23 = bitcast %union.usbd_urb* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %union.usbd_urb*, %union.usbd_urb** %7, align 8
  store %union.usbd_urb* %28, %union.usbd_urb** %3, align 8
  br label %29

29:                                               ; preds = %21, %20
  %30 = load %union.usbd_urb*, %union.usbd_urb** %3, align 8
  ret %union.usbd_urb* %30
}

declare dso_local i32 @bzero(%struct.usbd_interface_list_entry*, i32) #1

declare dso_local i32 @USBD_ParseConfigurationDescriptorEx(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %union.usbd_urb* @USBD_CreateConfigurationRequestEx(i32*, %struct.usbd_interface_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

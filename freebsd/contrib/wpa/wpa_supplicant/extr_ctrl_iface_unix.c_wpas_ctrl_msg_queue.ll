; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_ctrl_msg_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_ctrl_msg_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_list = type { i32 }
%struct.wpa_supplicant = type { i32 }
%struct.ctrl_iface_msg = type { i32, i32, i8*, i64, i32, %struct.wpa_supplicant* }

@wpas_ctrl_msg_queue_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dl_list*, %struct.wpa_supplicant*, i32, i32, i8*, i64)* @wpas_ctrl_msg_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_ctrl_msg_queue(%struct.dl_list* %0, %struct.wpa_supplicant* %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.dl_list*, align 8
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ctrl_iface_msg*, align 8
  store %struct.dl_list* %0, %struct.dl_list** %7, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %12, align 8
  %15 = add i64 40, %14
  %16 = trunc i64 %15 to i32
  %17 = call %struct.ctrl_iface_msg* @os_zalloc(i32 %16)
  store %struct.ctrl_iface_msg* %17, %struct.ctrl_iface_msg** %13, align 8
  %18 = load %struct.ctrl_iface_msg*, %struct.ctrl_iface_msg** %13, align 8
  %19 = icmp ne %struct.ctrl_iface_msg* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %54

21:                                               ; preds = %6
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %23 = load %struct.ctrl_iface_msg*, %struct.ctrl_iface_msg** %13, align 8
  %24 = getelementptr inbounds %struct.ctrl_iface_msg, %struct.ctrl_iface_msg* %23, i32 0, i32 5
  store %struct.wpa_supplicant* %22, %struct.wpa_supplicant** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ctrl_iface_msg*, %struct.ctrl_iface_msg** %13, align 8
  %27 = getelementptr inbounds %struct.ctrl_iface_msg, %struct.ctrl_iface_msg* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.ctrl_iface_msg*, %struct.ctrl_iface_msg** %13, align 8
  %30 = getelementptr inbounds %struct.ctrl_iface_msg, %struct.ctrl_iface_msg* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ctrl_iface_msg*, %struct.ctrl_iface_msg** %13, align 8
  %32 = getelementptr inbounds %struct.ctrl_iface_msg, %struct.ctrl_iface_msg* %31, i64 1
  %33 = load i8*, i8** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @os_memcpy(%struct.ctrl_iface_msg* %32, i8* %33, i64 %34)
  %36 = load %struct.ctrl_iface_msg*, %struct.ctrl_iface_msg** %13, align 8
  %37 = getelementptr inbounds %struct.ctrl_iface_msg, %struct.ctrl_iface_msg* %36, i64 1
  %38 = bitcast %struct.ctrl_iface_msg* %37 to i8*
  %39 = load %struct.ctrl_iface_msg*, %struct.ctrl_iface_msg** %13, align 8
  %40 = getelementptr inbounds %struct.ctrl_iface_msg, %struct.ctrl_iface_msg* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.ctrl_iface_msg*, %struct.ctrl_iface_msg** %13, align 8
  %43 = getelementptr inbounds %struct.ctrl_iface_msg, %struct.ctrl_iface_msg* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.dl_list*, %struct.dl_list** %7, align 8
  %45 = load %struct.ctrl_iface_msg*, %struct.ctrl_iface_msg** %13, align 8
  %46 = getelementptr inbounds %struct.ctrl_iface_msg, %struct.ctrl_iface_msg* %45, i32 0, i32 4
  %47 = call i32 @dl_list_add_tail(%struct.dl_list* %44, i32* %46)
  %48 = load i32, i32* @wpas_ctrl_msg_queue_timeout, align 4
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %50 = call i32 @eloop_cancel_timeout(i32 %48, %struct.wpa_supplicant* %49, i32* null)
  %51 = load i32, i32* @wpas_ctrl_msg_queue_timeout, align 4
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %53 = call i32 @eloop_register_timeout(i32 0, i32 0, i32 %51, %struct.wpa_supplicant* %52, i32* null)
  br label %54

54:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.ctrl_iface_msg* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(%struct.ctrl_iface_msg*, i8*, i64) #1

declare dso_local i32 @dl_list_add_tail(%struct.dl_list*, i32*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

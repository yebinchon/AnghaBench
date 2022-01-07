; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_ctrl_msg_queue_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_ctrl_msg_queue_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__*, %struct.ctrl_iface_priv* }
%struct.TYPE_2__ = type { %struct.ctrl_iface_global_priv* }
%struct.ctrl_iface_global_priv = type { i32, i32 }
%struct.ctrl_iface_priv = type { i32, i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"CTRL: Had to throttle pending event message transmission for (sock %d gsock %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @wpas_ctrl_msg_queue_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_ctrl_msg_queue_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.ctrl_iface_priv*, align 8
  %7 = alloca %struct.ctrl_iface_global_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %11, %struct.wpa_supplicant** %5, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @wpas_ctrl_msg_send_pending_global(%struct.TYPE_2__* %14)
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %17 = call i32 @wpas_ctrl_msg_send_pending_iface(%struct.wpa_supplicant* %16)
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 1
  %20 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %19, align 8
  store %struct.ctrl_iface_priv* %20, %struct.ctrl_iface_priv** %6, align 8
  %21 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %6, align 8
  %22 = icmp ne %struct.ctrl_iface_priv* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %6, align 8
  %25 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %24, i32 0, i32 1
  %26 = call i32 @dl_list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %23, %2
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %36, align 8
  store %struct.ctrl_iface_global_priv* %37, %struct.ctrl_iface_global_priv** %7, align 8
  %38 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %7, align 8
  %39 = icmp ne %struct.ctrl_iface_global_priv* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %7, align 8
  %42 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %41, i32 0, i32 1
  %43 = call i32 @dl_list_empty(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %7, align 8
  %47 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %40, %32
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %62

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @MSG_MSGDUMP, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %61 = call i32 @eloop_register_timeout(i32 0, i32 20000, void (i8*, i8*)* @wpas_ctrl_msg_queue_timeout, %struct.wpa_supplicant* %60, i32* null)
  br label %62

62:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @wpas_ctrl_msg_send_pending_global(%struct.TYPE_2__*) #1

declare dso_local i32 @wpas_ctrl_msg_send_pending_iface(%struct.wpa_supplicant*) #1

declare dso_local i32 @dl_list_empty(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

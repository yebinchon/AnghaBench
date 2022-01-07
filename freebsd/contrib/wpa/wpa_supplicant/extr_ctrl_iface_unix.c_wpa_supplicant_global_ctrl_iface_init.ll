; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_global_ctrl_iface_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_global_ctrl_iface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_iface_global_priv = type { i32, %struct.wpa_global*, i32, i32 }
%struct.wpa_global = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@wpa_supplicant_ctrl_iface_msg_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ctrl_iface_global_priv* @wpa_supplicant_global_ctrl_iface_init(%struct.wpa_global* %0) #0 {
  %2 = alloca %struct.ctrl_iface_global_priv*, align 8
  %3 = alloca %struct.wpa_global*, align 8
  %4 = alloca %struct.ctrl_iface_global_priv*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %3, align 8
  %5 = call %struct.ctrl_iface_global_priv* @os_zalloc(i32 24)
  store %struct.ctrl_iface_global_priv* %5, %struct.ctrl_iface_global_priv** %4, align 8
  %6 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %4, align 8
  %7 = icmp eq %struct.ctrl_iface_global_priv* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.ctrl_iface_global_priv* null, %struct.ctrl_iface_global_priv** %2, align 8
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %10, i32 0, i32 3
  %12 = call i32 @dl_list_init(i32* %11)
  %13 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %4, align 8
  %14 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %13, i32 0, i32 2
  %15 = call i32 @dl_list_init(i32* %14)
  %16 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %17 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %4, align 8
  %18 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %17, i32 0, i32 1
  store %struct.wpa_global* %16, %struct.wpa_global** %18, align 8
  %19 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %4, align 8
  %20 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %22 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %9
  %27 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %4, align 8
  store %struct.ctrl_iface_global_priv* %27, %struct.ctrl_iface_global_priv** %2, align 8
  br label %40

28:                                               ; preds = %9
  %29 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %30 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %4, align 8
  %31 = call i64 @wpas_global_ctrl_iface_open_sock(%struct.wpa_global* %29, %struct.ctrl_iface_global_priv* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %4, align 8
  %35 = call i32 @os_free(%struct.ctrl_iface_global_priv* %34)
  store %struct.ctrl_iface_global_priv* null, %struct.ctrl_iface_global_priv** %2, align 8
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @wpa_supplicant_ctrl_iface_msg_cb, align 4
  %38 = call i32 @wpa_msg_register_cb(i32 %37)
  %39 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %4, align 8
  store %struct.ctrl_iface_global_priv* %39, %struct.ctrl_iface_global_priv** %2, align 8
  br label %40

40:                                               ; preds = %36, %33, %26, %8
  %41 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %2, align 8
  ret %struct.ctrl_iface_global_priv* %41
}

declare dso_local %struct.ctrl_iface_global_priv* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

declare dso_local i64 @wpas_global_ctrl_iface_open_sock(%struct.wpa_global*, %struct.ctrl_iface_global_priv*) #1

declare dso_local i32 @os_free(%struct.ctrl_iface_global_priv*) #1

declare dso_local i32 @wpa_msg_register_cb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

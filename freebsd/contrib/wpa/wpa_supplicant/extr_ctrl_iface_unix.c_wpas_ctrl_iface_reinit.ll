; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_ctrl_iface_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_ctrl_iface_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.ctrl_iface_priv = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.ctrl_iface_priv*)* @wpas_ctrl_iface_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_iface_reinit(%struct.wpa_supplicant* %0, %struct.ctrl_iface_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.ctrl_iface_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.ctrl_iface_priv* %1, %struct.ctrl_iface_priv** %5, align 8
  %7 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %8 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %12
  %22 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %23 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @eloop_unregister_read_sock(i32 %24)
  %26 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %27 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @close(i32 %28)
  %30 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %33 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %34 = call i32 @wpas_ctrl_iface_open_sock(%struct.wpa_supplicant* %32, %struct.ctrl_iface_priv* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %42

38:                                               ; preds = %21
  %39 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %40 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %37, %17, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @eloop_unregister_read_sock(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @wpas_ctrl_iface_open_sock(%struct.wpa_supplicant*, %struct.ctrl_iface_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

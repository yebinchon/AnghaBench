; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_iface_priv = type { i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"CTRL_IFACE wait for attached monitors to receive messages\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_ctrl_iface_deinit(%struct.ctrl_iface_priv* %0) #0 {
  %2 = alloca %struct.ctrl_iface_priv*, align 8
  store %struct.ctrl_iface_priv* %0, %struct.ctrl_iface_priv** %2, align 8
  %3 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @eloop_unregister_read_sock(i32 %10)
  %12 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @os_sleep(i32 0, i32 100000)
  br label %20

20:                                               ; preds = %16, %7
  %21 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %22 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @close(i32 %23)
  %25 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %26 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %29 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wpas_ctrl_iface_free_dst(i64 %30)
  %32 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %33 = call i32 @os_free(%struct.ctrl_iface_priv* %32)
  ret void
}

declare dso_local i32 @eloop_unregister_read_sock(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_sleep(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @wpas_ctrl_iface_free_dst(i64) #1

declare dso_local i32 @os_free(%struct.ctrl_iface_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

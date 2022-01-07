; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_process_wakeup_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_process_wakeup_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpas_dbus_priv = type { i32 }

@SIGPOLL = common dso_local global i32 0, align 4
@DBUS_DISPATCH_DATA_REMAINS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @process_wakeup_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_wakeup_main(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpas_dbus_priv*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.wpas_dbus_priv*
  store %struct.wpas_dbus_priv* %7, %struct.wpas_dbus_priv** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SIGPOLL, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %5, align 8
  %13 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  br label %38

17:                                               ; preds = %11
  %18 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %5, align 8
  %19 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @dbus_connection_get_dispatch_status(i32 %20)
  %22 = load i64, i64* @DBUS_DISPATCH_DATA_REMAINS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %38

25:                                               ; preds = %17
  %26 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %5, align 8
  %27 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dbus_connection_ref(i32 %28)
  %30 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %5, align 8
  %31 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dbus_connection_dispatch(i32 %32)
  %34 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %5, align 8
  %35 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dbus_connection_unref(i32 %36)
  br label %38

38:                                               ; preds = %25, %24, %16
  ret void
}

declare dso_local i64 @dbus_connection_get_dispatch_status(i32) #1

declare dso_local i32 @dbus_connection_ref(i32) #1

declare dso_local i32 @dbus_connection_dispatch(i32) #1

declare dso_local i32 @dbus_connection_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

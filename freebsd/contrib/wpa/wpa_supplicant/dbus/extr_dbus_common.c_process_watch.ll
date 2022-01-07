; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_process_watch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_process_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpas_dbus_priv = type { i32, i64 }

@EVENT_TYPE_READ = common dso_local global i64 0, align 8
@DBUS_WATCH_READABLE = common dso_local global i32 0, align 4
@EVENT_TYPE_WRITE = common dso_local global i64 0, align 8
@DBUS_WATCH_WRITABLE = common dso_local global i32 0, align 4
@EVENT_TYPE_EXCEPTION = common dso_local global i64 0, align 8
@DBUS_WATCH_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpas_dbus_priv*, i32*, i64)* @process_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_watch(%struct.wpas_dbus_priv* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpas_dbus_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.wpas_dbus_priv* %0, %struct.wpas_dbus_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %8 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dbus_connection_ref(i32 %9)
  %11 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %12 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @EVENT_TYPE_READ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @DBUS_WATCH_READABLE, align 4
  %19 = call i32 @dbus_watch_handle(i32* %17, i32 %18)
  br label %38

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @EVENT_TYPE_WRITE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @DBUS_WATCH_WRITABLE, align 4
  %27 = call i32 @dbus_watch_handle(i32* %25, i32 %26)
  br label %37

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @EVENT_TYPE_EXCEPTION, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @DBUS_WATCH_ERROR, align 4
  %35 = call i32 @dbus_watch_handle(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %24
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %40 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %45 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dispatch_data(i32 %46)
  %48 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %49 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %52 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dbus_connection_unref(i32 %53)
  ret void
}

declare dso_local i32 @dbus_connection_ref(i32) #1

declare dso_local i32 @dbus_watch_handle(i32*, i32) #1

declare dso_local i32 @dispatch_data(i32) #1

declare dso_local i32 @dbus_connection_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

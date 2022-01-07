; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_add_watch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_add_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpas_dbus_priv = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@EVENT_TYPE_EXCEPTION = common dso_local global i32 0, align 4
@process_watch_exception = common dso_local global i32 0, align 4
@DBUS_WATCH_READABLE = common dso_local global i32 0, align 4
@EVENT_TYPE_READ = common dso_local global i32 0, align 4
@process_watch_read = common dso_local global i32 0, align 4
@DBUS_WATCH_WRITABLE = common dso_local global i32 0, align 4
@EVENT_TYPE_WRITE = common dso_local global i32 0, align 4
@process_watch_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @add_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_watch(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpas_dbus_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.wpas_dbus_priv*
  store %struct.wpas_dbus_priv* %10, %struct.wpas_dbus_priv** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @dbus_watch_get_enabled(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @dbus_watch_get_flags(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @dbus_watch_get_unix_fd(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @EVENT_TYPE_EXCEPTION, align 4
  %23 = load i32, i32* @process_watch_exception, align 4
  %24 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @eloop_register_sock(i32 %21, i32 %22, i32 %23, %struct.wpas_dbus_priv* %24, i32* %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DBUS_WATCH_READABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %16
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @EVENT_TYPE_READ, align 4
  %34 = load i32, i32* @process_watch_read, align 4
  %35 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %6, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @eloop_register_sock(i32 %32, i32 %33, i32 %34, %struct.wpas_dbus_priv* %35, i32* %36)
  br label %38

38:                                               ; preds = %31, %16
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @DBUS_WATCH_WRITABLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @EVENT_TYPE_WRITE, align 4
  %46 = load i32, i32* @process_watch_write, align 4
  %47 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %6, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @eloop_register_sock(i32 %44, i32 %45, i32 %46, %struct.wpas_dbus_priv* %47, i32* %48)
  br label %50

50:                                               ; preds = %43, %38
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %6, align 8
  %53 = call i32 @dbus_watch_set_data(i32* %51, %struct.wpas_dbus_priv* %52, i32* null)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @dbus_watch_get_enabled(i32*) #1

declare dso_local i32 @dbus_watch_get_flags(i32*) #1

declare dso_local i32 @dbus_watch_get_unix_fd(i32*) #1

declare dso_local i32 @eloop_register_sock(i32, i32, i32, %struct.wpas_dbus_priv*, i32*) #1

declare dso_local i32 @dbus_watch_set_data(i32*, %struct.wpas_dbus_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

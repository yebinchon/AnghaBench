; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_save_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_save_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Not allowed to update configuration (update_config=0)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to update configuration\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_save_config(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @wpas_dbus_error_unknown_error(i32* %14, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %3, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @wpa_config_write(i32 %19, %struct.TYPE_2__* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @wpas_dbus_error_unknown_error(i32* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %3, align 8
  br label %30

29:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %30

30:                                               ; preds = %29, %26, %13
  %31 = load i32*, i32** %3, align 8
  ret i32* %31
}

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #1

declare dso_local i32 @wpa_config_write(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_role.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_supplicant = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"GO\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_p2p_role(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.wpa_dbus_property_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_supplicant*, align 8
  %10 = alloca i8*, align 8
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %12, %struct.wpa_supplicant** %9, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %14 = call i32 @wpas_get_p2p_role(%struct.wpa_supplicant* %13)
  switch i32 %14, label %17 [
    i32 128, label %15
    i32 129, label %16
  ]

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %18

16:                                               ; preds = %4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %18

17:                                               ; preds = %4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %18

18:                                               ; preds = %17, %16, %15
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @wpas_dbus_simple_property_getter(i32* %19, i32 %20, i8** %10, i32* %21)
  ret i32 %22
}

declare dso_local i32 @wpas_get_p2p_role(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_dbus_simple_property_getter(i32*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

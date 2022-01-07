; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_current_auth_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_current_auth_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_supplicant = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WPAS_DBUS_AUTH_MODE_MAX = common dso_local global i32 0, align 4
@WPA_COMPLETED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"INACTIVE\00", align 1
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_IEEE8021X_NO_WPA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"EAP-%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_current_auth_mode(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.wpa_dbus_property_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_supplicant*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %15, %struct.wpa_supplicant** %9, align 8
  %16 = load i32, i32* @WPAS_DBUS_AUTH_MODE_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WPA_COMPLETED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %62

26:                                               ; preds = %4
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WPA_KEY_MGMT_IEEE8021X, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WPA_KEY_MGMT_IEEE8021X_NO_WPA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %26
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %40 = call i8* @wpa_supplicant_get_eap_mode(%struct.wpa_supplicant* %39)
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* @WPAS_DBUS_AUTH_MODE_MAX, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @os_snprintf(i8* %19, i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i8* %19, i8** %11, align 8
  br label %61

44:                                               ; preds = %32
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %51 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @wpa_key_mgmt_txt(i64 %52, i32 %57)
  store i8* %58, i8** %11, align 8
  br label %60

59:                                               ; preds = %44
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %61, %25
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @wpas_dbus_simple_property_getter(i32* %63, i32 %64, i8** %11, i32* %65)
  %67 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @wpa_supplicant_get_eap_mode(%struct.wpa_supplicant*) #2

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @wpa_key_mgmt_txt(i64, i32) #2

declare dso_local i32 @wpas_dbus_simple_property_getter(i32*, i32, i8**, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

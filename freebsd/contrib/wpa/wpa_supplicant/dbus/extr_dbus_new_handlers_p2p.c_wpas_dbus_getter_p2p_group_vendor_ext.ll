; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_group_vendor_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_group_vendor_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_supplicant = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hostapd_data** }
%struct.hostapd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wpabuf** }
%struct.wpabuf = type { i32 }

@MAX_WPS_VENDOR_EXTENSIONS = common dso_local global i32 0, align 4
@WPAS_P2P_ROLE_GO = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@DBUS_TYPE_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_p2p_group_vendor_ext(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca %struct.hostapd_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %18, %struct.wpa_supplicant** %10, align 8
  %19 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.wpabuf*, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %23 = mul nuw i64 8, %20
  %24 = trunc i64 %23 to i32
  %25 = call i32 @os_memset(%struct.wpabuf** %22, i32 0, i32 %24)
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %27 = call i64 @wpas_get_p2p_role(%struct.wpa_supplicant* %26)
  %28 = load i64, i64* @WPAS_P2P_ROLE_GO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %4
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp eq %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %85

37:                                               ; preds = %30
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.hostapd_data**, %struct.hostapd_data*** %41, align 8
  %43 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %42, i64 0
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %43, align 8
  store %struct.hostapd_data* %44, %struct.hostapd_data** %11, align 8
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %75, %37
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = load %struct.hostapd_data*, %struct.hostapd_data** %11, align 8
  %51 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.wpabuf**, %struct.wpabuf*** %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %54, i64 %56
  %58 = load %struct.wpabuf*, %struct.wpabuf** %57, align 8
  %59 = icmp eq %struct.wpabuf* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %75

61:                                               ; preds = %49
  %62 = load %struct.hostapd_data*, %struct.hostapd_data** %11, align 8
  %63 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.wpabuf**, %struct.wpabuf*** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %66, i64 %68
  %70 = load %struct.wpabuf*, %struct.wpabuf** %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %15, align 4
  %73 = zext i32 %71 to i64
  %74 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %22, i64 %73
  store %struct.wpabuf* %70, %struct.wpabuf** %74, align 8
  br label %75

75:                                               ; preds = %61, %60
  %76 = load i32, i32* %14, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %45

78:                                               ; preds = %45
  br label %79

79:                                               ; preds = %78, %4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @DBUS_TYPE_BYTE, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @wpas_dbus_simple_array_array_property_getter(i32* %80, i32 %81, %struct.wpabuf** %22, i32 %82, i32* %83)
  store i32 %84, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %85

85:                                               ; preds = %79, %35
  %86 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(%struct.wpabuf**, i32, i32) #2

declare dso_local i64 @wpas_get_p2p_role(%struct.wpa_supplicant*) #2

declare dso_local i32 @wpas_dbus_simple_array_array_property_getter(i32*, i32, %struct.wpabuf**, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

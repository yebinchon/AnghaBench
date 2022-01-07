; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_wpas_mesh_init_rsn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_wpas_mesh_init_rsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_4__*, %struct.wpa_ssid*, %struct.hostapd_iface* }
%struct.TYPE_4__ = type { i64* }
%struct.wpa_ssid = type { i8*, i8*, i32, i32 }
%struct.hostapd_iface = type { i32, %struct.hostapd_data** }
%struct.hostapd_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@wpas_mesh_init_rsn.default_groups = internal global [6 x i32] [i32 19, i32 20, i32 21, i32 25, i32 26, i32 -1], align 16
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"mesh: Passphrase for SAE not configured\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @wpas_mesh_init_rsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_mesh_init_rsn(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 3
  %11 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  store %struct.hostapd_iface* %11, %struct.hostapd_iface** %4, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 2
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  store %struct.wpa_ssid* %14, %struct.wpa_ssid** %5, align 8
  %15 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %16 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %15, i32 0, i32 1
  %17 = load %struct.hostapd_data**, %struct.hostapd_data*** %16, align 8
  %18 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %17, i64 0
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %18, align 8
  store %struct.hostapd_data* %19, %struct.hostapd_data** %6, align 8
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %25, %1
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @MSG_ERROR, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %108

35:                                               ; preds = %29
  %36 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %40 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i32 %38, i32* %42, align 4
  %43 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %44 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %47 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 4
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %51 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %35
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %68 = call i32 @wpas_mesh_copy_groups(%struct.hostapd_data* %66, %struct.wpa_supplicant* %67)
  br label %83

69:                                               ; preds = %56, %35
  %70 = call i32 @os_memdup(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @wpas_mesh_init_rsn.default_groups, i64 0, i64 0), i32 24)
  %71 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %72 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 4
  %75 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %76 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %69
  store i32 -1, i32* %2, align 4
  br label %108

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %65
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @os_strlen(i8* %84)
  store i64 %85, i64* %8, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @dup_binstr(i8* %86, i64 %87)
  %89 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %90 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %88, i32* %93, align 4
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %95 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %96 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @mesh_rsn_auth_init(%struct.wpa_supplicant* %94, i32 %97)
  %99 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %100 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %102 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 -1, i32 0
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %83, %81, %32
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpas_mesh_copy_groups(%struct.hostapd_data*, %struct.wpa_supplicant*) #1

declare dso_local i32 @os_memdup(i32*, i32) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @dup_binstr(i8*, i64) #1

declare dso_local i32 @mesh_rsn_auth_init(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

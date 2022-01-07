; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_add_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_add_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.TYPE_4__, i32, i32*, %struct.wpa_supplicant* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.wpa_interface = type { i64, i32, i64, i64 }
%struct.wpa_supplicant = type { i32, %struct.wpa_global*, %struct.TYPE_3__*, i32, %struct.wpa_supplicant* }
%struct.TYPE_3__ = type { i32, %struct.wpa_ssid* }
%struct.wpa_ssid = type { %struct.wpa_ssid* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Override interface parameter: driver ('%s' -> '%s')\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Override interface parameter: ctrl_interface ('%s' -> '%s')\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to add interface %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Added interface %s\00", align 1
@WPA_DISCONNECTED = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_supplicant* @wpa_supplicant_add_iface(%struct.wpa_global* %0, %struct.wpa_interface* %1, %struct.wpa_supplicant* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_global*, align 8
  %6 = alloca %struct.wpa_interface*, align 8
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca %struct.wpa_interface, align 8
  %10 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %5, align 8
  store %struct.wpa_interface* %1, %struct.wpa_interface** %6, align 8
  store %struct.wpa_supplicant* %2, %struct.wpa_supplicant** %7, align 8
  %11 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %12 = icmp eq %struct.wpa_global* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.wpa_interface*, %struct.wpa_interface** %6, align 8
  %15 = icmp eq %struct.wpa_interface* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %4, align 8
  br label %132

17:                                               ; preds = %13
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %19 = call %struct.wpa_supplicant* @wpa_supplicant_alloc(%struct.wpa_supplicant* %18)
  store %struct.wpa_supplicant* %19, %struct.wpa_supplicant** %8, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %21 = icmp eq %struct.wpa_supplicant* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %4, align 8
  br label %132

23:                                               ; preds = %17
  %24 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 1
  store %struct.wpa_global* %24, %struct.wpa_global** %26, align 8
  %27 = load %struct.wpa_interface*, %struct.wpa_interface** %6, align 8
  %28 = bitcast %struct.wpa_interface* %9 to i8*
  %29 = bitcast %struct.wpa_interface* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 32, i1 false)
  %30 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %23
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load %struct.wpa_interface*, %struct.wpa_interface** %6, align 8
  %38 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %41 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %43)
  %45 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %46 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %9, i32 0, i32 3
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %35, %23
  %51 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %52 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.wpa_interface*, %struct.wpa_interface** %6, align 8
  %59 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %62 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %64)
  %66 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %67 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %9, i32 0, i32 2
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %56, %50
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %73 = call i64 @wpa_supplicant_init_iface(%struct.wpa_supplicant* %72, %struct.wpa_interface* %9)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = load %struct.wpa_interface*, %struct.wpa_interface** %6, align 8
  %78 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %82 = call i32 @wpa_supplicant_deinit_iface(%struct.wpa_supplicant* %81, i32 0, i32 0)
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %4, align 8
  br label %132

83:                                               ; preds = %71
  %84 = load %struct.wpa_interface*, %struct.wpa_interface** %6, align 8
  %85 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %83
  %89 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %90 = call i64 @wpas_notify_iface_added(%struct.wpa_supplicant* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %94 = call i32 @wpa_supplicant_deinit_iface(%struct.wpa_supplicant* %93, i32 1, i32 0)
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %4, align 8
  br label %132

95:                                               ; preds = %88
  %96 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %97 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load %struct.wpa_ssid*, %struct.wpa_ssid** %99, align 8
  store %struct.wpa_ssid* %100, %struct.wpa_ssid** %10, align 8
  br label %101

101:                                              ; preds = %108, %95
  %102 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %103 = icmp ne %struct.wpa_ssid* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %106 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %107 = call i32 @wpas_notify_network_added(%struct.wpa_supplicant* %105, %struct.wpa_ssid* %106)
  br label %108

108:                                              ; preds = %104
  %109 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %110 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %109, i32 0, i32 0
  %111 = load %struct.wpa_ssid*, %struct.wpa_ssid** %110, align 8
  store %struct.wpa_ssid* %111, %struct.wpa_ssid** %10, align 8
  br label %101

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %83
  %114 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %115 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %114, i32 0, i32 3
  %116 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %115, align 8
  %117 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %118 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %117, i32 0, i32 4
  store %struct.wpa_supplicant* %116, %struct.wpa_supplicant** %118, align 8
  %119 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %120 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %121 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %120, i32 0, i32 3
  store %struct.wpa_supplicant* %119, %struct.wpa_supplicant** %121, align 8
  %122 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %125 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @wpa_dbg(%struct.wpa_supplicant* %122, i32 %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %129 = load i32, i32* @WPA_DISCONNECTED, align 4
  %130 = call i32 @wpa_supplicant_set_state(%struct.wpa_supplicant* %128, i32 %129)
  %131 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  store %struct.wpa_supplicant* %131, %struct.wpa_supplicant** %4, align 8
  br label %132

132:                                              ; preds = %113, %92, %75, %22, %16
  %133 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  ret %struct.wpa_supplicant* %133
}

declare dso_local %struct.wpa_supplicant* @wpa_supplicant_alloc(%struct.wpa_supplicant*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpa_supplicant_init_iface(%struct.wpa_supplicant*, %struct.wpa_interface*) #1

declare dso_local i32 @wpa_supplicant_deinit_iface(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i64 @wpas_notify_iface_added(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_notify_network_added(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, i32) #1

declare dso_local i32 @wpa_supplicant_set_state(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

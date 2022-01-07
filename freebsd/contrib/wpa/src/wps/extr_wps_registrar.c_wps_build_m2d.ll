; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_m2d.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_m2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 (i32)*, i32, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"WPS: Building Message M2D\00", align 1
@WPS_CFG_NO_ERROR = common dso_local global i64 0, align 8
@WPS_CFG_SETUP_LOCKED = common dso_local global i64 0, align 8
@WPS_M2D = common dso_local global i32 0, align 4
@RECV_M2D_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m2d(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i64, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %6 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %7 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %11, %struct.wpabuf** %4, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %140

15:                                               ; preds = %1
  %16 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %17 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %24 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @WPS_CFG_NO_ERROR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @WPS_CFG_SETUP_LOCKED, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %33, %29, %22, %15
  %36 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %37 = call i64 @wps_build_version(%struct.wpabuf* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %132, label %39

39:                                               ; preds = %35
  %40 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %41 = load i32, i32* @WPS_M2D, align 4
  %42 = call i64 @wps_build_msg_type(%struct.wpabuf* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %132, label %44

44:                                               ; preds = %39
  %45 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %47 = call i64 @wps_build_enrollee_nonce(%struct.wps_data* %45, %struct.wpabuf* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %132, label %49

49:                                               ; preds = %44
  %50 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %52 = call i64 @wps_build_registrar_nonce(%struct.wps_data* %50, %struct.wpabuf* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %132, label %54

54:                                               ; preds = %49
  %55 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %56 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %57 = call i64 @wps_build_uuid_r(%struct.wps_data* %55, %struct.wpabuf* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %132, label %59

59:                                               ; preds = %54
  %60 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %61 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %62 = call i64 @wps_build_auth_type_flags(%struct.wps_data* %60, %struct.wpabuf* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %132, label %64

64:                                               ; preds = %59
  %65 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %66 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %67 = call i64 @wps_build_encr_type_flags(%struct.wps_data* %65, %struct.wpabuf* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %132, label %69

69:                                               ; preds = %64
  %70 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %71 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %72 = call i64 @wps_build_conn_type_flags(%struct.wps_data* %70, %struct.wpabuf* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %132, label %74

74:                                               ; preds = %69
  %75 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %76 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %81 = call i64 @wps_build_config_methods_r(i32 %79, %struct.wpabuf* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %132, label %83

83:                                               ; preds = %74
  %84 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %85 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %89 = call i64 @wps_build_device_attrs(i32* %87, %struct.wpabuf* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %132, label %91

91:                                               ; preds = %83
  %92 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %93 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %97 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %98 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32 (i32)*, i32 (i32)** %100, align 8
  %102 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %103 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 %101(i32 %106)
  %108 = call i64 @wps_build_rf_bands(i32* %95, %struct.wpabuf* %96, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %91
  %111 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %112 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %113 = call i64 @wps_build_assoc_state(%struct.wps_data* %111, %struct.wpabuf* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %132, label %115

115:                                              ; preds = %110
  %116 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i64 @wps_build_config_error(%struct.wpabuf* %116, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %115
  %121 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %122 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %126 = call i64 @wps_build_os_version(i32* %124, %struct.wpabuf* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %120
  %129 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %130 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %129, i32 0, i32* null, i32 0, i32 0)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128, %120, %115, %110, %91, %83, %74, %69, %64, %59, %54, %49, %44, %39, %35
  %133 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %134 = call i32 @wpabuf_free(%struct.wpabuf* %133)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %140

135:                                              ; preds = %128
  %136 = load i32, i32* @RECV_M2D_ACK, align 4
  %137 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %138 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %139, %struct.wpabuf** %2, align 8
  br label %140

140:                                              ; preds = %135, %132, %14
  %141 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %141
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_enrollee_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_registrar_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_uuid_r(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_auth_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_encr_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_conn_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_config_methods_r(i32, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_device_attrs(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_rf_bands(i32*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_assoc_state(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_config_error(%struct.wpabuf*, i64) #1

declare dso_local i64 @wps_build_os_version(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_m7.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_m7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPS: Building Message M7\00", align 1
@WPS_M7 = common dso_local global i32 0, align 4
@RECV_M8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m7(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %9 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 500, %12
  %14 = call %struct.wpabuf* @wpabuf_alloc(i64 %13)
  store %struct.wpabuf* %14, %struct.wpabuf** %5, align 8
  %15 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %16 = icmp eq %struct.wpabuf* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %120

18:                                               ; preds = %1
  %19 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 1000, %23
  %25 = call %struct.wpabuf* @wpabuf_alloc(i64 %24)
  store %struct.wpabuf* %25, %struct.wpabuf** %4, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %27 = icmp eq %struct.wpabuf* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %30 = call i32 @wpabuf_free(%struct.wpabuf* %29)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %120

31:                                               ; preds = %18
  %32 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %33 = call i64 @wps_build_version(%struct.wpabuf* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %82, label %35

35:                                               ; preds = %31
  %36 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %37 = load i32, i32* @WPS_M7, align 4
  %38 = call i64 @wps_build_msg_type(%struct.wpabuf* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %82, label %40

40:                                               ; preds = %35
  %41 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %43 = call i64 @wps_build_registrar_nonce(%struct.wps_data* %41, %struct.wpabuf* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %82, label %45

45:                                               ; preds = %40
  %46 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %48 = call i64 @wps_build_e_snonce2(%struct.wps_data* %46, %struct.wpabuf* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %82, label %50

50:                                               ; preds = %45
  %51 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %52 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %60 = call i64 @wps_build_ap_settings(%struct.wps_data* %58, %struct.wpabuf* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %57, %50
  %63 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %64 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %65 = call i64 @wps_build_key_wrap_auth(%struct.wps_data* %63, %struct.wpabuf* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %62
  %68 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %70 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %71 = call i64 @wps_build_encr_settings(%struct.wps_data* %68, %struct.wpabuf* %69, %struct.wpabuf* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %67
  %74 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %75 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %74, i32 0, i32* null, i32 0, i32 0)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %79 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %80 = call i64 @wps_build_authenticator(%struct.wps_data* %78, %struct.wpabuf* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77, %73, %67, %62, %57, %45, %40, %35, %31
  %83 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %84 = call i32 @wpabuf_clear_free(%struct.wpabuf* %83)
  %85 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %86 = call i32 @wpabuf_free(%struct.wpabuf* %85)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %120

87:                                               ; preds = %77
  %88 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %89 = call i32 @wpabuf_clear_free(%struct.wpabuf* %88)
  %90 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %91 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %87
  %97 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %98 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %105 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %104, i32 0, i32 3
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %110 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %109, i32 0, i32 2
  %111 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %112 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @wps_device_store(i64 %108, i32* %110, i32 %113)
  br label %115

115:                                              ; preds = %103, %96, %87
  %116 = load i32, i32* @RECV_M8, align 4
  %117 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %118 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %119, %struct.wpabuf** %2, align 8
  br label %120

120:                                              ; preds = %115, %82, %28, %17
  %121 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %121
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_registrar_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_e_snonce2(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_ap_settings(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_key_wrap_auth(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_encr_settings(%struct.wps_data*, %struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32, i32) #1

declare dso_local i64 @wps_build_authenticator(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i32 @wps_device_store(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

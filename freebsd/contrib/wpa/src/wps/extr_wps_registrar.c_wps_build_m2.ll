; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_m2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_m2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 (i32)*, i32 }

@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"WPS: Registrar Nonce\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"WPS: UUID-R\00", align 1
@WPS_UUID_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"WPS: Building Message M2\00", align 1
@WPS_M2 = common dso_local global i32 0, align 4
@WPS_CFG_NO_ERROR = common dso_local global i32 0, align 4
@RECV_DONE = common dso_local global i32 0, align 4
@RECV_M3 = common dso_local global i32 0, align 4
@DEV_PW_NFC_CONNECTION_HANDOVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m2(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %7 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @WPS_NONCE_LEN, align 4
  %10 = call i64 @random_get_bytes(i32 %8, i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %170

13:                                               ; preds = %1
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %16 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @WPS_NONCE_LEN, align 4
  %19 = call i32 @wpa_hexdump(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %22 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @WPS_UUID_LEN, align 4
  %25 = call i32 @wpa_hexdump(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %28 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %28, %struct.wpabuf** %4, align 8
  %29 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %30 = icmp eq %struct.wpabuf* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %170

32:                                               ; preds = %13
  %33 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %34 = call i64 @wps_build_version(%struct.wpabuf* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %145, label %36

36:                                               ; preds = %32
  %37 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %38 = load i32, i32* @WPS_M2, align 4
  %39 = call i64 @wps_build_msg_type(%struct.wpabuf* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %145, label %41

41:                                               ; preds = %36
  %42 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %44 = call i64 @wps_build_enrollee_nonce(%struct.wps_data* %42, %struct.wpabuf* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %145, label %46

46:                                               ; preds = %41
  %47 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %49 = call i64 @wps_build_registrar_nonce(%struct.wps_data* %47, %struct.wpabuf* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %145, label %51

51:                                               ; preds = %46
  %52 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %54 = call i64 @wps_build_uuid_r(%struct.wps_data* %52, %struct.wpabuf* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %145, label %56

56:                                               ; preds = %51
  %57 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %58 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %59 = call i64 @wps_build_public_key(%struct.wps_data* %57, %struct.wpabuf* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %145, label %61

61:                                               ; preds = %56
  %62 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %63 = call i64 @wps_derive_keys(%struct.wps_data* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %145, label %65

65:                                               ; preds = %61
  %66 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %67 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %68 = call i64 @wps_build_auth_type_flags(%struct.wps_data* %66, %struct.wpabuf* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %145, label %70

70:                                               ; preds = %65
  %71 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %72 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %73 = call i64 @wps_build_encr_type_flags(%struct.wps_data* %71, %struct.wpabuf* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %145, label %75

75:                                               ; preds = %70
  %76 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %77 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %78 = call i64 @wps_build_conn_type_flags(%struct.wps_data* %76, %struct.wpabuf* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %145, label %80

80:                                               ; preds = %75
  %81 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %82 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %81, i32 0, i32 3
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %87 = call i64 @wps_build_config_methods_r(i32 %85, %struct.wpabuf* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %145, label %89

89:                                               ; preds = %80
  %90 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %91 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %90, i32 0, i32 3
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %95 = call i64 @wps_build_device_attrs(i32* %93, %struct.wpabuf* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %145, label %97

97:                                               ; preds = %89
  %98 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %99 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %98, i32 0, i32 3
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %103 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %104 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32 (i32)*, i32 (i32)** %106, align 8
  %108 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %109 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %108, i32 0, i32 3
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 %107(i32 %112)
  %114 = call i64 @wps_build_rf_bands(i32* %101, %struct.wpabuf* %102, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %145, label %116

116:                                              ; preds = %97
  %117 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %118 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %119 = call i64 @wps_build_assoc_state(%struct.wps_data* %117, %struct.wpabuf* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %145, label %121

121:                                              ; preds = %116
  %122 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %123 = load i32, i32* @WPS_CFG_NO_ERROR, align 4
  %124 = call i64 @wps_build_config_error(%struct.wpabuf* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %121
  %127 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %128 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %129 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @wps_build_dev_password_id(%struct.wpabuf* %127, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %126
  %134 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %135 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %134, i32 0, i32 3
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %139 = call i64 @wps_build_os_version(i32* %137, %struct.wpabuf* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %133
  %142 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %143 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %142, i32 0, i32* null, i32 0, i32 0)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141, %133, %126, %121, %116, %97, %89, %80, %75, %70, %65, %61, %56, %51, %46, %41, %36, %32
  %146 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %147 = call i32 @wpabuf_free(%struct.wpabuf* %146)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %170

148:                                              ; preds = %141
  %149 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %150 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %151 = call i64 @wps_build_authenticator(%struct.wps_data* %149, %struct.wpabuf* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %155 = call i32 @wpabuf_free(%struct.wpabuf* %154)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %170

156:                                              ; preds = %148
  %157 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %158 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* @RECV_DONE, align 4
  br label %165

163:                                              ; preds = %156
  %164 = load i32, i32* @RECV_M3, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %168 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %169, %struct.wpabuf** %2, align 8
  br label %170

170:                                              ; preds = %165, %153, %145, %31, %12
  %171 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %171
}

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_enrollee_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_registrar_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_uuid_r(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_public_key(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_derive_keys(%struct.wps_data*) #1

declare dso_local i64 @wps_build_auth_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_encr_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_conn_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_config_methods_r(i32, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_device_attrs(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_rf_bands(i32*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_assoc_state(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_config_error(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_dev_password_id(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_os_version(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_authenticator(%struct.wps_data*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

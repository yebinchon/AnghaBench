; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_m1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_m1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i64, i32, %struct.TYPE_2__*, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 (i32)*, i64 }

@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"WPS: Enrollee Nonce\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"WPS: Building Message M1\00", align 1
@WPS_CONFIG_DISPLAY = common dso_local global i32 0, align 4
@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@MULTI_AP_BACKHAUL_STA = common dso_local global i32 0, align 4
@WPS_M1 = common dso_local global i32 0, align 4
@WPS_CFG_NO_ERROR = common dso_local global i32 0, align 4
@RECV_M2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m1(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %8 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WPS_NONCE_LEN, align 4
  %11 = call i64 @random_get_bytes(i32 %9, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %203

14:                                               ; preds = %1
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %17 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WPS_NONCE_LEN, align 4
  %20 = call i32 @wpa_hexdump(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %23, %struct.wpabuf** %4, align 8
  %24 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %25 = icmp eq %struct.wpabuf* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %203

27:                                               ; preds = %14
  %28 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %29 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %5, align 4
  %33 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %34 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %27
  %40 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %41 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %39
  %45 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %46 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49, %44
  %55 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @WPS_CONFIG_VIRT_PUSHBUTTON, align 4
  %60 = load i32, i32* @WPS_CONFIG_PHY_PUSHBUTTON, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %54, %49, %39, %27
  %66 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %67 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @MULTI_AP_BACKHAUL_STA, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %74 = call i64 @wps_build_version(%struct.wpabuf* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %195, label %76

76:                                               ; preds = %72
  %77 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %78 = load i32, i32* @WPS_M1, align 4
  %79 = call i64 @wps_build_msg_type(%struct.wpabuf* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %195, label %81

81:                                               ; preds = %76
  %82 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %83 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %84 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @wps_build_uuid_e(%struct.wpabuf* %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %195, label %88

88:                                               ; preds = %81
  %89 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %90 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %91 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @wps_build_mac_addr(%struct.wpabuf* %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %195, label %95

95:                                               ; preds = %88
  %96 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %97 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %98 = call i64 @wps_build_enrollee_nonce(%struct.wps_data* %96, %struct.wpabuf* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %195, label %100

100:                                              ; preds = %95
  %101 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %102 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %103 = call i64 @wps_build_public_key(%struct.wps_data* %101, %struct.wpabuf* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %195, label %105

105:                                              ; preds = %100
  %106 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %107 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %108 = call i64 @wps_build_auth_type_flags(%struct.wps_data* %106, %struct.wpabuf* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %195, label %110

110:                                              ; preds = %105
  %111 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %112 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %113 = call i64 @wps_build_encr_type_flags(%struct.wps_data* %111, %struct.wpabuf* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %195, label %115

115:                                              ; preds = %110
  %116 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %117 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %118 = call i64 @wps_build_conn_type_flags(%struct.wps_data* %116, %struct.wpabuf* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %195, label %120

120:                                              ; preds = %115
  %121 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i64 @wps_build_config_methods(%struct.wpabuf* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %195, label %125

125:                                              ; preds = %120
  %126 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %127 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %128 = call i64 @wps_build_wps_state(%struct.wps_data* %126, %struct.wpabuf* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %195, label %130

130:                                              ; preds = %125
  %131 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %132 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %136 = call i64 @wps_build_device_attrs(i32* %134, %struct.wpabuf* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %195, label %138

138:                                              ; preds = %130
  %139 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %140 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %144 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %145 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %144, i32 0, i32 2
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i32 (i32)*, i32 (i32)** %147, align 8
  %149 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %150 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 %148(i32 %153)
  %155 = call i64 @wps_build_rf_bands(i32* %142, %struct.wpabuf* %143, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %195, label %157

157:                                              ; preds = %138
  %158 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %159 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %160 = call i64 @wps_build_assoc_state(%struct.wps_data* %158, %struct.wpabuf* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %195, label %162

162:                                              ; preds = %157
  %163 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %164 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %165 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @wps_build_dev_password_id(%struct.wpabuf* %163, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %195, label %169

169:                                              ; preds = %162
  %170 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %171 = load i32, i32* @WPS_CFG_NO_ERROR, align 4
  %172 = call i64 @wps_build_config_error(%struct.wpabuf* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %195, label %174

174:                                              ; preds = %169
  %175 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %176 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %175, i32 0, i32 2
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %180 = call i64 @wps_build_os_version(i32* %178, %struct.wpabuf* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %174
  %183 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %184 = load i32, i32* %6, align 4
  %185 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %183, i32 0, i32* null, i32 0, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %182
  %188 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %189 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %188, i32 0, i32 2
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %193 = call i64 @wps_build_vendor_ext_m1(i32* %191, %struct.wpabuf* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %187, %182, %174, %169, %162, %157, %138, %130, %125, %120, %115, %110, %105, %100, %95, %88, %81, %76, %72
  %196 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %197 = call i32 @wpabuf_free(%struct.wpabuf* %196)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %203

198:                                              ; preds = %187
  %199 = load i32, i32* @RECV_M2, align 4
  %200 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %201 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 8
  %202 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %202, %struct.wpabuf** %2, align 8
  br label %203

203:                                              ; preds = %198, %195, %26, %13
  %204 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %204
}

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_uuid_e(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_mac_addr(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_enrollee_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_public_key(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_auth_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_encr_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_conn_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_config_methods(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_wps_state(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_device_attrs(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_rf_bands(i32*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_assoc_state(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_dev_password_id(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_config_error(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_os_version(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32, i32) #1

declare dso_local i64 @wps_build_vendor_ext_m1(i32*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

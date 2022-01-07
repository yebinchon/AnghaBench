; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_reload_bss.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_reload_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_5__*, i32*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64, i32, %struct.hostapd_ssid, i64, i64, i64, i32 }
%struct.hostapd_ssid = type { i32, i32, i64, %struct.TYPE_6__*, i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Failed to re-configure WPA PSK after reloading configuration\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to configure WPA IE for the kernel driver.\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Could not set SSID for kernel driver\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Reconfigured interface %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*)* @hostapd_reload_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_reload_bss(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  %3 = alloca %struct.hostapd_ssid*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %233

11:                                               ; preds = %1
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %25 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i64 %23, i64* %27, align 8
  br label %28

28:                                               ; preds = %18, %11
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %30 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %33 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @radius_client_reconfig(i32 %31, i32 %36)
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %39 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store %struct.hostapd_ssid* %41, %struct.hostapd_ssid** %3, align 8
  %42 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %43 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %28
  %47 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %48 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %53 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %52, i32 0, i32 3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %51
  %59 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %60 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %65 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %70 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %72, i32 0, i32 3
  %74 = call i32 @hostapd_config_clear_wpa_psk(%struct.TYPE_6__** %73)
  br label %75

75:                                               ; preds = %68, %63, %58, %51, %46, %28
  %76 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %77 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = call i64 @hostapd_setup_wpa_psk(%struct.TYPE_5__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @MSG_ERROR, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %75
  %85 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %86 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %93 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %91, %84
  %99 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %100 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %101 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @hostapd_set_drv_ieee8021x(%struct.hostapd_data* %99, i32 %104, i32 1)
  br label %114

106:                                              ; preds = %91
  %107 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %108 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %109 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @hostapd_set_drv_ieee8021x(%struct.hostapd_data* %107, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %106, %98
  %115 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %116 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %123 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %121, %114
  %129 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %130 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %146

133:                                              ; preds = %128
  %134 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %135 = call i32 @hostapd_setup_wpa(%struct.hostapd_data* %134)
  %136 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %137 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %142 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @wpa_init_keys(i32* %143)
  br label %145

145:                                              ; preds = %140, %133
  br label %194

146:                                              ; preds = %128, %121
  %147 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %148 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %146
  %154 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %155 = call i32 @hostapd_reconfig_wpa(%struct.hostapd_data* %154)
  %156 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %157 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = call i32* @wpa_auth_get_wpa_ie(i32* %158, i64* %5)
  store i32* %159, i32** %4, align 8
  %160 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %161 = load i32*, i32** %4, align 8
  %162 = load i64, i64* %5, align 8
  %163 = call i64 @hostapd_set_generic_elem(%struct.hostapd_data* %160, i32* %161, i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  %166 = load i32, i32* @MSG_ERROR, align 4
  %167 = call i32 (i32, i8*, ...) @wpa_printf(i32 %166, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %153
  br label %193

169:                                              ; preds = %146
  %170 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %171 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %192

174:                                              ; preds = %169
  %175 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %176 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @wpa_deinit(i32* %177)
  %179 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %180 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %179, i32 0, i32 1
  store i32* null, i32** %180, align 8
  %181 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %182 = call i32 @hostapd_set_privacy(%struct.hostapd_data* %181, i32 0)
  %183 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %184 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %189 = call i32 @hostapd_setup_encryption(i32 %187, %struct.hostapd_data* %188)
  %190 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %191 = call i64 @hostapd_set_generic_elem(%struct.hostapd_data* %190, i32* bitcast ([1 x i8]* @.str.2 to i32*), i64 0)
  br label %192

192:                                              ; preds = %174, %169
  br label %193

193:                                              ; preds = %192, %168
  br label %194

194:                                              ; preds = %193, %145
  %195 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %196 = call i32 @ieee802_11_set_beacon(%struct.hostapd_data* %195)
  %197 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %198 = call i32 @hostapd_update_wps(%struct.hostapd_data* %197)
  %199 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %200 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %199, i32 0, i32 0
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %225

206:                                              ; preds = %194
  %207 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %208 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %209 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %208, i32 0, i32 0
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %215 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %214, i32 0, i32 0
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @hostapd_set_ssid(%struct.hostapd_data* %207, i32 %213, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %206
  %223 = load i32, i32* @MSG_ERROR, align 4
  %224 = call i32 (i32, i8*, ...) @wpa_printf(i32 %223, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %206, %194
  %226 = load i32, i32* @MSG_DEBUG, align 4
  %227 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %228 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %227, i32 0, i32 0
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @wpa_printf(i32 %226, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %225, %10
  ret void
}

declare dso_local i32 @radius_client_reconfig(i32, i32) #1

declare dso_local i32 @hostapd_config_clear_wpa_psk(%struct.TYPE_6__**) #1

declare dso_local i64 @hostapd_setup_wpa_psk(%struct.TYPE_5__*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hostapd_set_drv_ieee8021x(%struct.hostapd_data*, i32, i32) #1

declare dso_local i32 @hostapd_setup_wpa(%struct.hostapd_data*) #1

declare dso_local i32 @wpa_init_keys(i32*) #1

declare dso_local i32 @hostapd_reconfig_wpa(%struct.hostapd_data*) #1

declare dso_local i32* @wpa_auth_get_wpa_ie(i32*, i64*) #1

declare dso_local i64 @hostapd_set_generic_elem(%struct.hostapd_data*, i32*, i64) #1

declare dso_local i32 @wpa_deinit(i32*) #1

declare dso_local i32 @hostapd_set_privacy(%struct.hostapd_data*, i32) #1

declare dso_local i32 @hostapd_setup_encryption(i32, %struct.hostapd_data*) #1

declare dso_local i32 @ieee802_11_set_beacon(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_update_wps(%struct.hostapd_data*) #1

declare dso_local i64 @hostapd_set_ssid(%struct.hostapd_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

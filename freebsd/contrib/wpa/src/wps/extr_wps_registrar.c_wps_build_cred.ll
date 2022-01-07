; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i8*, i8*, i32, i32, i8*, i32, %struct.TYPE_3__*, %struct.wps_credential, i64, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i64, i8*, i8*, i32, %struct.wps_registrar*, i64, i64, i32, i32 }
%struct.wps_registrar = type { i32, i8*, i8*, i32, %struct.wpabuf*, i32, i32, i64 }
%struct.wps_credential = type { i32, i32, i32, i32, %struct.wps_credential*, %struct.wps_credential*, %struct.wps_credential* }
%struct.TYPE_4__ = type { i64 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"WPS:  * Credential\00", align 1
@MULTI_AP_BACKHAUL_STA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"WPS: Use backhaul STA credentials\00", align 1
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@WPS_ENCR_AES = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"WPS: Own auth types 0x%x - masked Enrollee auth types 0x%x\00", align 1
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_AUTH_OPEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"WPS: Unsupported auth_type 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"WPS: Own encr types 0x%x (rsn: 0x%x, wpa: 0x%x) - masked Enrollee encr types 0x%x\00", align 1
@WPS_ENCR_TKIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"WPS: No suitable encryption type for WPA/WPA2\00", align 1
@WPS_ENCR_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"WPS: No suitable encryption type for non-WPA/WPA2 mode\00", align 1
@WPS_STATE_NOT_CONFIGURED = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"WPS: Could not generate random PSK\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"WPS: Generated passphrase\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"WPS: Use PSK format for Network Key\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"WPS: Generated per-device PSK\00", align 1
@ATTR_CRED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"WPS:  * Credential (pre-configured)\00", align 1
@WPS_ENCR_WEP = common dso_local global i32 0, align 4
@wps_testing_dummy_cred = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_cred(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wps_registrar*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca [65 x i8], align 16
  %10 = alloca [65 x i8], align 16
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %11 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %12 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %11, i32 0, i32 6
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 8
  %15 = load %struct.wps_registrar*, %struct.wps_registrar** %14, align 8
  store %struct.wps_registrar* %15, %struct.wps_registrar** %7, align 8
  %16 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %17 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %16, i32 0, i32 6
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 8
  %20 = load %struct.wps_registrar*, %struct.wps_registrar** %19, align 8
  %21 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %629

25:                                               ; preds = %2
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %29 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %34 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %33, i32 0, i32 7
  %35 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %36 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @os_memcpy(%struct.wps_credential* %34, i8* %37, i32 40)
  br label %602

39:                                               ; preds = %25
  %40 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %41 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %40, i32 0, i32 7
  %42 = call i32 @os_memset(%struct.wps_credential* %41, i32 0, i32 40)
  %43 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %44 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MULTI_AP_BACKHAUL_STA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %114

49:                                               ; preds = %39
  %50 = load %struct.wps_registrar*, %struct.wps_registrar** %7, align 8
  %51 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %114

54:                                               ; preds = %49
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %58 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %58, i32 0, i32 6
  %60 = load %struct.wps_credential*, %struct.wps_credential** %59, align 8
  %61 = load %struct.wps_registrar*, %struct.wps_registrar** %7, align 8
  %62 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.wps_registrar*, %struct.wps_registrar** %7, align 8
  %65 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @os_memcpy(%struct.wps_credential* %60, i8* %63, i32 %66)
  %68 = load %struct.wps_registrar*, %struct.wps_registrar** %7, align 8
  %69 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %72 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %75 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %76 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @WPS_ENCR_AES, align 4
  %79 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %80 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  %82 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %83 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %83, i32 0, i32 4
  %85 = load %struct.wps_credential*, %struct.wps_credential** %84, align 8
  %86 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %87 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* @ETH_ALEN, align 4
  %90 = call i32 @os_memcpy(%struct.wps_credential* %85, i8* %88, i32 %89)
  %91 = load %struct.wps_registrar*, %struct.wps_registrar** %7, align 8
  %92 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %54
  %96 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %97 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %97, i32 0, i32 5
  %99 = load %struct.wps_credential*, %struct.wps_credential** %98, align 8
  %100 = load %struct.wps_registrar*, %struct.wps_registrar** %7, align 8
  %101 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.wps_registrar*, %struct.wps_registrar** %7, align 8
  %104 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @os_memcpy(%struct.wps_credential* %99, i8* %102, i32 %105)
  %107 = load %struct.wps_registrar*, %struct.wps_registrar** %7, align 8
  %108 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %111 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %111, i32 0, i32 3
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %95, %54
  br label %602

114:                                              ; preds = %49, %39
  %115 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %116 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %116, i32 0, i32 6
  %118 = load %struct.wps_credential*, %struct.wps_credential** %117, align 8
  %119 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %120 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %119, i32 0, i32 6
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %125 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %124, i32 0, i32 6
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @os_memcpy(%struct.wps_credential* %118, i8* %123, i32 %128)
  %130 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %131 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %130, i32 0, i32 6
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %136 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %135, i32 0, i32 7
  %137 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load i32, i32* @MSG_DEBUG, align 4
  %139 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %140 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %139, i32 0, i32 6
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 12
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %145 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, ...) @wpa_printf(i32 %138, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %146)
  %148 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %149 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %114
  %155 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %156 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %157 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  br label %188

158:                                              ; preds = %114
  %159 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %160 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %167 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %168 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  br label %187

169:                                              ; preds = %158
  %170 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %171 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @WPS_AUTH_OPEN, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i32, i32* @WPS_AUTH_OPEN, align 4
  %178 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %179 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  br label %186

180:                                              ; preds = %169
  %181 = load i32, i32* @MSG_DEBUG, align 4
  %182 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %183 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i32, i8*, ...) @wpa_printf(i32 %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  store i32 -1, i32* %3, align 4
  br label %651

186:                                              ; preds = %176
  br label %187

187:                                              ; preds = %186, %165
  br label %188

188:                                              ; preds = %187, %154
  %189 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %190 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %193 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* @MSG_DEBUG, align 4
  %196 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %197 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %196, i32 0, i32 6
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 11
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %202 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %201, i32 0, i32 6
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %207 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %206, i32 0, i32 6
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %212 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i32, i8*, ...) @wpa_printf(i32 %195, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i32 %200, i32 %205, i32 %210, i32 %213)
  %215 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %216 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %215, i32 0, i32 6
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 10
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %188
  %222 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %223 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %237

227:                                              ; preds = %221
  %228 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %229 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %228, i32 0, i32 6
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %234 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, %232
  store i32 %236, i32* %234, align 4
  br label %261

237:                                              ; preds = %221, %188
  %238 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %239 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %238, i32 0, i32 6
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 10
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %260

244:                                              ; preds = %237
  %245 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %246 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %260

250:                                              ; preds = %244
  %251 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %252 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %251, i32 0, i32 6
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %257 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = and i32 %258, %255
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %250, %244, %237
  br label %261

261:                                              ; preds = %260, %227
  %262 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %263 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %273, label %267

267:                                              ; preds = %261
  %268 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %269 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %300

273:                                              ; preds = %267, %261
  %274 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %275 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @WPS_ENCR_AES, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %273
  %281 = load i32, i32* @WPS_ENCR_AES, align 4
  %282 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %283 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 4
  br label %299

284:                                              ; preds = %273
  %285 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %286 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %284
  %292 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %293 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %294 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %293, i32 0, i32 3
  store i32 %292, i32* %294, align 4
  br label %298

295:                                              ; preds = %284
  %296 = load i32, i32* @MSG_DEBUG, align 4
  %297 = call i32 (i32, i8*, ...) @wpa_printf(i32 %296, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %651

298:                                              ; preds = %291
  br label %299

299:                                              ; preds = %298, %280
  br label %315

300:                                              ; preds = %267
  %301 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %302 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @WPS_ENCR_NONE, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %300
  %308 = load i32, i32* @WPS_ENCR_NONE, align 4
  %309 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %310 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %309, i32 0, i32 3
  store i32 %308, i32* %310, align 4
  br label %314

311:                                              ; preds = %300
  %312 = load i32, i32* @MSG_DEBUG, align 4
  %313 = call i32 (i32, i8*, ...) @wpa_printf(i32 %312, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %651

314:                                              ; preds = %307
  br label %315

315:                                              ; preds = %314, %299
  %316 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %317 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %320 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %319, i32 0, i32 7
  %321 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %320, i32 0, i32 2
  store i32 %318, i32* %321, align 8
  %322 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %323 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %322, i32 0, i32 7
  %324 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %323, i32 0, i32 4
  %325 = load %struct.wps_credential*, %struct.wps_credential** %324, align 8
  %326 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %327 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %326, i32 0, i32 1
  %328 = load i8*, i8** %327, align 8
  %329 = load i32, i32* @ETH_ALEN, align 4
  %330 = call i32 @os_memcpy(%struct.wps_credential* %325, i8* %328, i32 %329)
  %331 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %332 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %331, i32 0, i32 6
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 4
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @WPS_STATE_NOT_CONFIGURED, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %436

338:                                              ; preds = %315
  %339 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %340 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %339, i32 0, i32 6
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 10
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %436

345:                                              ; preds = %338
  %346 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %347 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %346, i32 0, i32 6
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 8
  %350 = load %struct.wps_registrar*, %struct.wps_registrar** %349, align 8
  %351 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %436, label %354

354:                                              ; preds = %345
  %355 = call i32 (...) @random_pool_ready()
  %356 = icmp ne i32 %355, 1
  br i1 %356, label %361, label %357

357:                                              ; preds = %354
  %358 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %359 = call i64 @random_get_bytes(i8* %358, i32 16)
  %360 = icmp slt i64 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %357, %354
  %362 = load i32, i32* @MSG_INFO, align 4
  %363 = call i32 (i32, i8*, ...) @wpa_printf(i32 %362, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %651

364:                                              ; preds = %357
  %365 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %366 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %365, i32 0, i32 4
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @os_free(i8* %367)
  %369 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %370 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %371 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %370, i32 0, i32 5
  %372 = call i8* @base64_encode(i8* %369, i32 16, i32* %371)
  %373 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %374 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %373, i32 0, i32 4
  store i8* %372, i8** %374, align 8
  %375 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %376 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %375, i32 0, i32 4
  %377 = load i8*, i8** %376, align 8
  %378 = icmp eq i8* %377, null
  br i1 %378, label %379, label %380

379:                                              ; preds = %364
  store i32 -1, i32* %3, align 4
  br label %651

380:                                              ; preds = %364
  %381 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %382 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 8
  %384 = add nsw i32 %383, -1
  store i32 %384, i32* %382, align 8
  br label %385

385:                                              ; preds = %405, %380
  %386 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %387 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %386, i32 0, i32 5
  %388 = load i32, i32* %387, align 8
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %403

390:                                              ; preds = %385
  %391 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %392 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %391, i32 0, i32 4
  %393 = load i8*, i8** %392, align 8
  %394 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %395 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 8
  %397 = sub nsw i32 %396, 1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %393, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = sext i8 %400 to i32
  %402 = icmp eq i32 %401, 61
  br label %403

403:                                              ; preds = %390, %385
  %404 = phi i1 [ false, %385 ], [ %402, %390 ]
  br i1 %404, label %405, label %410

405:                                              ; preds = %403
  %406 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %407 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 8
  %409 = add nsw i32 %408, -1
  store i32 %409, i32* %407, align 8
  br label %385

410:                                              ; preds = %403
  %411 = load i32, i32* @MSG_DEBUG, align 4
  %412 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %413 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %412, i32 0, i32 4
  %414 = load i8*, i8** %413, align 8
  %415 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %416 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %415, i32 0, i32 5
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @wpa_hexdump_ascii_key(i32 %411, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %414, i32 %417)
  %419 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %420 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %419, i32 0, i32 7
  %421 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %420, i32 0, i32 5
  %422 = load %struct.wps_credential*, %struct.wps_credential** %421, align 8
  %423 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %424 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %423, i32 0, i32 4
  %425 = load i8*, i8** %424, align 8
  %426 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %427 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %426, i32 0, i32 5
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @os_memcpy(%struct.wps_credential* %422, i8* %425, i32 %428)
  %430 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %431 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %434 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %433, i32 0, i32 7
  %435 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %434, i32 0, i32 3
  store i32 %432, i32* %435, align 4
  br label %601

436:                                              ; preds = %345, %338, %315
  %437 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %438 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %437, i32 0, i32 6
  %439 = load %struct.TYPE_3__*, %struct.TYPE_3__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 8
  %441 = load %struct.wps_registrar*, %struct.wps_registrar** %440, align 8
  %442 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %441, i32 0, i32 5
  %443 = load i32, i32* %442, align 8
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %476, label %445

445:                                              ; preds = %436
  %446 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %447 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %446, i32 0, i32 8
  %448 = load i64, i64* %447, align 8
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %476

450:                                              ; preds = %445
  %451 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %452 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %451, i32 0, i32 6
  %453 = load %struct.TYPE_3__*, %struct.TYPE_3__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %453, i32 0, i32 9
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %476

457:                                              ; preds = %450
  %458 = load i32, i32* @MSG_DEBUG, align 4
  %459 = call i32 (i32, i8*, ...) @wpa_printf(i32 %458, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %460 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %461 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %462 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %461, i32 0, i32 6
  %463 = load %struct.TYPE_3__*, %struct.TYPE_3__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %463, i32 0, i32 5
  %465 = load i8*, i8** %464, align 8
  %466 = call i32 @wpa_snprintf_hex(i8* %460, i32 65, i8* %465, i32 32)
  %467 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %468 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %467, i32 0, i32 7
  %469 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %468, i32 0, i32 5
  %470 = load %struct.wps_credential*, %struct.wps_credential** %469, align 8
  %471 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %472 = call i32 @os_memcpy(%struct.wps_credential* %470, i8* %471, i32 64)
  %473 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %474 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %473, i32 0, i32 7
  %475 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %474, i32 0, i32 3
  store i32 64, i32* %475, align 4
  br label %600

476:                                              ; preds = %450, %445, %436
  %477 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %478 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %477, i32 0, i32 6
  %479 = load %struct.TYPE_3__*, %struct.TYPE_3__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %479, i32 0, i32 8
  %481 = load %struct.wps_registrar*, %struct.wps_registrar** %480, align 8
  %482 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %481, i32 0, i32 5
  %483 = load i32, i32* %482, align 8
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %516, label %485

485:                                              ; preds = %476
  %486 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %487 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %486, i32 0, i32 6
  %488 = load %struct.TYPE_3__*, %struct.TYPE_3__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %488, i32 0, i32 6
  %490 = load i8*, i8** %489, align 8
  %491 = icmp ne i8* %490, null
  br i1 %491, label %492, label %516

492:                                              ; preds = %485
  %493 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %494 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %493, i32 0, i32 7
  %495 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %494, i32 0, i32 5
  %496 = load %struct.wps_credential*, %struct.wps_credential** %495, align 8
  %497 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %498 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %497, i32 0, i32 6
  %499 = load %struct.TYPE_3__*, %struct.TYPE_3__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %499, i32 0, i32 6
  %501 = load i8*, i8** %500, align 8
  %502 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %503 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %502, i32 0, i32 6
  %504 = load %struct.TYPE_3__*, %struct.TYPE_3__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %504, i32 0, i32 7
  %506 = load i32, i32* %505, align 8
  %507 = call i32 @os_memcpy(%struct.wps_credential* %496, i8* %501, i32 %506)
  %508 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %509 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %508, i32 0, i32 6
  %510 = load %struct.TYPE_3__*, %struct.TYPE_3__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %510, i32 0, i32 7
  %512 = load i32, i32* %511, align 8
  %513 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %514 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %513, i32 0, i32 7
  %515 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %514, i32 0, i32 3
  store i32 %512, i32* %515, align 4
  br label %599

516:                                              ; preds = %485, %476
  %517 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %518 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %517, i32 0, i32 2
  %519 = load i32, i32* %518, align 8
  %520 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %521 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %522 = or i32 %520, %521
  %523 = and i32 %519, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %598

525:                                              ; preds = %516
  %526 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %527 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %526, i32 0, i32 4
  %528 = load i8*, i8** %527, align 8
  %529 = call i32 @os_free(i8* %528)
  %530 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %531 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %530, i32 0, i32 5
  store i32 32, i32* %531, align 8
  %532 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %533 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %532, i32 0, i32 5
  %534 = load i32, i32* %533, align 8
  %535 = call i8* @os_malloc(i32 %534)
  %536 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %537 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %536, i32 0, i32 4
  store i8* %535, i8** %537, align 8
  %538 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %539 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %538, i32 0, i32 4
  %540 = load i8*, i8** %539, align 8
  %541 = icmp eq i8* %540, null
  br i1 %541, label %542, label %543

542:                                              ; preds = %525
  store i32 -1, i32* %3, align 4
  br label %651

543:                                              ; preds = %525
  %544 = call i32 (...) @random_pool_ready()
  %545 = icmp ne i32 %544, 1
  br i1 %545, label %555, label %546

546:                                              ; preds = %543
  %547 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %548 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %547, i32 0, i32 4
  %549 = load i8*, i8** %548, align 8
  %550 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %551 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %550, i32 0, i32 5
  %552 = load i32, i32* %551, align 8
  %553 = call i64 @random_get_bytes(i8* %549, i32 %552)
  %554 = icmp slt i64 %553, 0
  br i1 %554, label %555, label %564

555:                                              ; preds = %546, %543
  %556 = load i32, i32* @MSG_INFO, align 4
  %557 = call i32 (i32, i8*, ...) @wpa_printf(i32 %556, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %558 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %559 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %558, i32 0, i32 4
  %560 = load i8*, i8** %559, align 8
  %561 = call i32 @os_free(i8* %560)
  %562 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %563 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %562, i32 0, i32 4
  store i8* null, i8** %563, align 8
  store i32 -1, i32* %3, align 4
  br label %651

564:                                              ; preds = %546
  %565 = load i32, i32* @MSG_DEBUG, align 4
  %566 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %567 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %566, i32 0, i32 4
  %568 = load i8*, i8** %567, align 8
  %569 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %570 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %569, i32 0, i32 5
  %571 = load i32, i32* %570, align 8
  %572 = call i32 @wpa_hexdump_key(i32 %565, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %568, i32 %571)
  %573 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %574 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %575 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %574, i32 0, i32 4
  %576 = load i8*, i8** %575, align 8
  %577 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %578 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %577, i32 0, i32 5
  %579 = load i32, i32* %578, align 8
  %580 = call i32 @wpa_snprintf_hex(i8* %573, i32 65, i8* %576, i32 %579)
  %581 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %582 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %581, i32 0, i32 7
  %583 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %582, i32 0, i32 5
  %584 = load %struct.wps_credential*, %struct.wps_credential** %583, align 8
  %585 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %586 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %587 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %586, i32 0, i32 5
  %588 = load i32, i32* %587, align 8
  %589 = mul nsw i32 %588, 2
  %590 = call i32 @os_memcpy(%struct.wps_credential* %584, i8* %585, i32 %589)
  %591 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %592 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %591, i32 0, i32 5
  %593 = load i32, i32* %592, align 8
  %594 = mul nsw i32 %593, 2
  %595 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %596 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %595, i32 0, i32 7
  %597 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %596, i32 0, i32 3
  store i32 %594, i32* %597, align 4
  br label %598

598:                                              ; preds = %564, %516
  br label %599

599:                                              ; preds = %598, %492
  br label %600

600:                                              ; preds = %599, %457
  br label %601

601:                                              ; preds = %600, %410
  br label %602

602:                                              ; preds = %601, %113, %32
  %603 = call %struct.wpabuf* @wpabuf_alloc(i32 200)
  store %struct.wpabuf* %603, %struct.wpabuf** %6, align 8
  %604 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %605 = icmp eq %struct.wpabuf* %604, null
  br i1 %605, label %606, label %607

606:                                              ; preds = %602
  store i32 -1, i32* %3, align 4
  br label %651

607:                                              ; preds = %602
  %608 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %609 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %610 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %609, i32 0, i32 7
  %611 = call i64 @wps_build_credential(%struct.wpabuf* %608, %struct.wps_credential* %610)
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %616

613:                                              ; preds = %607
  %614 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %615 = call i32 @wpabuf_clear_free(%struct.wpabuf* %614)
  store i32 -1, i32* %3, align 4
  br label %651

616:                                              ; preds = %607
  %617 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %618 = load i32, i32* @ATTR_CRED, align 4
  %619 = call i32 @wpabuf_put_be16(%struct.wpabuf* %617, i32 %618)
  %620 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %621 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %622 = call i32 @wpabuf_len(%struct.wpabuf* %621)
  %623 = call i32 @wpabuf_put_be16(%struct.wpabuf* %620, i32 %622)
  %624 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %625 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %626 = call i32 @wpabuf_put_buf(%struct.wpabuf* %624, %struct.wpabuf* %625)
  %627 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %628 = call i32 @wpabuf_clear_free(%struct.wpabuf* %627)
  br label %629

629:                                              ; preds = %616, %24
  %630 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %631 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %630, i32 0, i32 6
  %632 = load %struct.TYPE_3__*, %struct.TYPE_3__** %631, align 8
  %633 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %632, i32 0, i32 8
  %634 = load %struct.wps_registrar*, %struct.wps_registrar** %633, align 8
  %635 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %634, i32 0, i32 4
  %636 = load %struct.wpabuf*, %struct.wpabuf** %635, align 8
  %637 = icmp ne %struct.wpabuf* %636, null
  br i1 %637, label %638, label %650

638:                                              ; preds = %629
  %639 = load i32, i32* @MSG_DEBUG, align 4
  %640 = call i32 (i32, i8*, ...) @wpa_printf(i32 %639, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %641 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %642 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %643 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %642, i32 0, i32 6
  %644 = load %struct.TYPE_3__*, %struct.TYPE_3__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %644, i32 0, i32 8
  %646 = load %struct.wps_registrar*, %struct.wps_registrar** %645, align 8
  %647 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %646, i32 0, i32 4
  %648 = load %struct.wpabuf*, %struct.wpabuf** %647, align 8
  %649 = call i32 @wpabuf_put_buf(%struct.wpabuf* %641, %struct.wpabuf* %648)
  br label %650

650:                                              ; preds = %638, %629
  store i32 0, i32* %3, align 4
  br label %651

651:                                              ; preds = %650, %613, %606, %555, %542, %379, %361, %311, %295, %180
  %652 = load i32, i32* %3, align 4
  ret i32 %652
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(%struct.wps_credential*, i8*, i32) #1

declare dso_local i32 @os_memset(%struct.wps_credential*, i32, i32) #1

declare dso_local i32 @random_pool_ready(...) #1

declare dso_local i64 @random_get_bytes(i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @base64_encode(i8*, i32, i32*) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i8*, i32) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i8*, i32) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i8*, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_credential(%struct.wpabuf*, %struct.wps_credential*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

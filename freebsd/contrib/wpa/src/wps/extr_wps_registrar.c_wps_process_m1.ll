; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_m1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_m1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, i32, i32, i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_11__*, i32, %struct.wps_nfc_pw_token* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.wps_nfc_pw_token = type { i32, i32, i64 }
%struct.wps_parse_attr = type { i64, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M1\00", align 1
@RECV_M1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M1\00", align 1
@WPS_FAILURE = common dso_local global i32 0, align 4
@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@DEV_PW_P2PS_DEFAULT = common dso_local global i32 0, align 4
@DEV_PW_USER_SPECIFIED = common dso_local global i32 0, align 4
@DEV_PW_MACHINE_SPECIFIED = common dso_local global i32 0, align 4
@DEV_PW_REGISTRAR_SPECIFIED = common dso_local global i32 0, align 4
@DEV_PW_PUSHBUTTON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"WPS: Unsupported Device Password ID %d\00", align 1
@SEND_M2D = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"WPS: PBC overlap - deny PBC negotiation\00", align 1
@WPS_CFG_MULTIPLE_PBC_DETECTED = common dso_local global i32 0, align 4
@WPS_M1 = common dso_local global i32 0, align 4
@WPS_EI_NO_ERROR = common dso_local global i32 0, align 4
@SEND_M2 = common dso_local global i64 0, align 8
@DEV_PW_NFC_CONNECTION_HANDOVER = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@WPS_CFG_PUBLIC_KEY_HASH_MISMATCH = common dso_local global i32 0, align 4
@WPS_HASH_LEN = common dso_local global i32 0, align 4
@WPS_OOB_PUBKEY_HASH_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wps_parse_attr*)* @wps_process_m1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m1(%struct.wps_data* %0, %struct.wps_parse_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wps_parse_attr*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wps_parse_attr* %1, %struct.wps_parse_attr** %5, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 (i32, i8*, ...) @wpa_printf(i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %9 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RECV_M1, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %16 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %19, i32* %3, align 4
  br label %286

20:                                               ; preds = %2
  %21 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %22 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %23 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %22, i32 0, i32 15
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @wps_process_uuid_e(%struct.wps_data* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %129, label %27

27:                                               ; preds = %20
  %28 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %29 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %30 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @wps_process_mac_addr(%struct.wps_data* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %129, label %34

34:                                               ; preds = %27
  %35 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %36 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %37 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @wps_process_enrollee_nonce(%struct.wps_data* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %129, label %41

41:                                               ; preds = %34
  %42 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %43 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %44 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %47 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @wps_process_pubkey(%struct.wps_data* %42, i32* %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %129, label %51

51:                                               ; preds = %41
  %52 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %53 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %54 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @wps_process_auth_type_flags(%struct.wps_data* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %129, label %58

58:                                               ; preds = %51
  %59 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %60 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %61 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @wps_process_encr_type_flags(%struct.wps_data* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %129, label %65

65:                                               ; preds = %58
  %66 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %67 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %68 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @wps_process_conn_type_flags(%struct.wps_data* %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %129, label %72

72:                                               ; preds = %65
  %73 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %74 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %75 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @wps_process_config_methods(%struct.wps_data* %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %129, label %79

79:                                               ; preds = %72
  %80 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %81 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %82 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @wps_process_wps_state(%struct.wps_data* %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %129, label %86

86:                                               ; preds = %79
  %87 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %88 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %87, i32 0, i32 4
  %89 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %90 = call i64 @wps_process_device_attrs(%struct.TYPE_10__* %88, %struct.wps_parse_attr* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %129, label %92

92:                                               ; preds = %86
  %93 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %94 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %93, i32 0, i32 4
  %95 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %96 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @wps_process_rf_bands(%struct.TYPE_10__* %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %129, label %100

100:                                              ; preds = %92
  %101 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %102 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %103 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @wps_process_assoc_state(%struct.wps_data* %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %129, label %107

107:                                              ; preds = %100
  %108 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %109 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %110 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @wps_process_dev_password_id(%struct.wps_data* %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %107
  %115 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %116 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %117 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @wps_process_config_error(%struct.wps_data* %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %114
  %122 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %123 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %122, i32 0, i32 4
  %124 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %125 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @wps_process_os_version(%struct.TYPE_10__* %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121, %114, %107, %100, %92, %86, %79, %72, %65, %58, %51, %41, %34, %27, %20
  %130 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %130, i32* %3, align 4
  br label %286

131:                                              ; preds = %121
  %132 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %133 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %134, 16
  br i1 %135, label %136, label %192

136:                                              ; preds = %131
  %137 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %138 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @DEV_PW_DEFAULT, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %192

142:                                              ; preds = %136
  %143 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %144 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @DEV_PW_P2PS_DEFAULT, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %192

148:                                              ; preds = %142
  %149 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %150 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @DEV_PW_USER_SPECIFIED, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %192

154:                                              ; preds = %148
  %155 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %156 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @DEV_PW_MACHINE_SPECIFIED, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %192

160:                                              ; preds = %154
  %161 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %162 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @DEV_PW_REGISTRAR_SPECIFIED, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %192

166:                                              ; preds = %160
  %167 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %168 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @DEV_PW_PUSHBUTTON, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %181, label %172

172:                                              ; preds = %166
  %173 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %174 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %173, i32 0, i32 7
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %172, %166
  %182 = load i32, i32* @MSG_DEBUG, align 4
  %183 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %184 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (i32, i8*, ...) @wpa_printf(i32 %182, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  %187 = load i8*, i8** @SEND_M2D, align 8
  %188 = ptrtoint i8* %187 to i64
  %189 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %190 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  %191 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %191, i32* %3, align 4
  br label %286

192:                                              ; preds = %172, %160, %154, %148, %142, %136, %131
  %193 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %194 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @DEV_PW_PUSHBUTTON, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %275

198:                                              ; preds = %192
  %199 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %200 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %199, i32 0, i32 7
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %225, label %207

207:                                              ; preds = %198
  %208 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %209 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %208, i32 0, i32 7
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %214 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %217 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = call i64 @wps_registrar_pbc_overlap(%struct.TYPE_9__* %212, i32 %215, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %207
  %222 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %223 = call i32 @wps_registrar_p2p_dev_addr_match(%struct.wps_data* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %260, label %225

225:                                              ; preds = %221, %207, %198
  %226 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %227 = call i32 @wps_registrar_skip_overlap(%struct.wps_data* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %260, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* @MSG_DEBUG, align 4
  %231 = call i32 (i32, i8*, ...) @wpa_printf(i32 %230, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %232 = load i8*, i8** @SEND_M2D, align 8
  %233 = ptrtoint i8* %232 to i64
  %234 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %235 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  %236 = load i32, i32* @WPS_CFG_MULTIPLE_PBC_DETECTED, align 4
  %237 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %238 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %237, i32 0, i32 8
  store i32 %236, i32* %238, align 8
  %239 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %240 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %239, i32 0, i32 7
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = call i32 @wps_pbc_overlap_event(%struct.TYPE_11__* %241)
  %243 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %244 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %243, i32 0, i32 7
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = load i32, i32* @WPS_M1, align 4
  %247 = load i32, i32* @WPS_CFG_MULTIPLE_PBC_DETECTED, align 4
  %248 = load i32, i32* @WPS_EI_NO_ERROR, align 4
  %249 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %250 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @wps_fail_event(%struct.TYPE_11__* %245, i32 %246, i32 %247, i32 %248, i32 %251)
  %253 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %254 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %253, i32 0, i32 7
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  store i32 1, i32* %258, align 4
  %259 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %259, i32* %3, align 4
  br label %286

260:                                              ; preds = %225, %221
  %261 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %262 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %261, i32 0, i32 7
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %264, align 8
  %266 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %267 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %270 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @wps_registrar_add_pbc_session(%struct.TYPE_9__* %265, i32 %268, i32 %271)
  %273 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %274 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %273, i32 0, i32 2
  store i32 1, i32* %274, align 4
  br label %275

275:                                              ; preds = %260, %192
  %276 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %277 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %276, i32 0, i32 4
  %278 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %279 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @wps_process_vendor_ext_m1(%struct.TYPE_10__* %277, i32 %280)
  %282 = load i64, i64* @SEND_M2, align 8
  %283 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %284 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %283, i32 0, i32 0
  store i64 %282, i64* %284, align 8
  %285 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %275, %229, %181, %129, %13
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_process_uuid_e(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_mac_addr(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_enrollee_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_pubkey(%struct.wps_data*, i32*, i64) #1

declare dso_local i64 @wps_process_auth_type_flags(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_encr_type_flags(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_conn_type_flags(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_config_methods(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_wps_state(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_device_attrs(%struct.TYPE_10__*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_process_rf_bands(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @wps_process_assoc_state(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_dev_password_id(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_config_error(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_os_version(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @wps_registrar_pbc_overlap(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @wps_registrar_p2p_dev_addr_match(%struct.wps_data*) #1

declare dso_local i32 @wps_registrar_skip_overlap(%struct.wps_data*) #1

declare dso_local i32 @wps_pbc_overlap_event(%struct.TYPE_11__*) #1

declare dso_local i32 @wps_fail_event(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @wps_registrar_add_pbc_session(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @wps_process_vendor_ext_m1(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

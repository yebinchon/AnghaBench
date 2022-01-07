; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32*, i32*, i32, i64, i32, i64, i32*, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wps_config = type { i64, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, %struct.TYPE_5__*, i64, i32* }
%struct.wps_parse_attr = type { i32* }

@WPS_UUID_LEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPS: AP PIN dev_password\00", align 1
@DEV_PW_PUSHBUTTON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"00000000\00", align 1
@RECV_M1 = common dso_local global i32 0, align 4
@SEND_M1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"WPS: WPS IE from (Re)AssocReq\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"WPS: Failed to parse WPS IE from (Re)AssocReq\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"WPS: No Request Type attribute in (Re)AssocReq WPS IE\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"WPS: Request Type (from WPS IE in (Re)AssocReq WPS IE): %d\00", align 1
@WPS_OOB_PUBKEY_HASH_LEN = common dso_local global i32 0, align 4
@DEV_PW_NFC_CONNECTION_HANDOVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wps_data* @wps_init(%struct.wps_config* %0) #0 {
  %2 = alloca %struct.wps_data*, align 8
  %3 = alloca %struct.wps_config*, align 8
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wps_parse_attr, align 8
  store %struct.wps_config* %0, %struct.wps_config** %3, align 8
  %6 = call %struct.wps_data* @os_zalloc(i32 136)
  store %struct.wps_data* %6, %struct.wps_data** %4, align 8
  %7 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %8 = icmp eq %struct.wps_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.wps_data* null, %struct.wps_data** %2, align 8
  br label %276

10:                                               ; preds = %1
  %11 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %12 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %11, i32 0, i32 11
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %15 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %14, i32 0, i32 21
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %15, align 8
  %16 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %17 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %16, i32 0, i32 12
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 14
  store i64 %18, i64* %20, align 8
  %21 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %22 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %21, i32 0, i32 12
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %10
  %26 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %27 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %26, i32 0, i32 20
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %30 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %29, i32 0, i32 11
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @WPS_UUID_LEN, align 4
  %35 = call i32 @os_memcpy(i32 %28, i32 %33, i32 %34)
  br label %58

36:                                               ; preds = %10
  %37 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %38 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %37, i32 0, i32 19
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %41 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %40, i32 0, i32 11
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @os_memcpy(i32 %39, i32 %45, i32 %46)
  %48 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %49 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %48, i32 0, i32 18
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %52 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %51, i32 0, i32 11
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @WPS_UUID_LEN, align 4
  %57 = call i32 @os_memcpy(i32 %50, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %36, %25
  %59 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %60 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %59, i32 0, i32 13
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %100

63:                                               ; preds = %58
  %64 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %65 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %68 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %70 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %69, i32 0, i32 13
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %73 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @os_memdup(i32* %71, i32 %74)
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %78 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %77, i32 0, i32 11
  store i32* %76, i32** %78, align 8
  %79 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %80 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %79, i32 0, i32 11
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %63
  %84 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %85 = call i32 @os_free(%struct.wps_data* %84)
  store %struct.wps_data* null, %struct.wps_data** %2, align 8
  br label %276

86:                                               ; preds = %63
  %87 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %88 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %91 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %94 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %93, i32 0, i32 11
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %97 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @wpa_hexdump_key(i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %95, i32 %98)
  br label %100

100:                                              ; preds = %86, %58
  %101 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %102 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %101, i32 0, i32 10
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %105 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %104, i32 0, i32 16
  store i64 %103, i64* %105, align 8
  %106 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %107 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %106, i32 0, i32 10
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %135

110:                                              ; preds = %100
  %111 = load i64, i64* @DEV_PW_PUSHBUTTON, align 8
  %112 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %113 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %115 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %114, i32 0, i32 11
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %118 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @bin_clear_free(i32* %116, i32 %119)
  %121 = call i64 @os_strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %122 = inttoptr i64 %121 to i32*
  %123 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %124 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %123, i32 0, i32 11
  store i32* %122, i32** %124, align 8
  %125 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %126 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %125, i32 0, i32 11
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %110
  %130 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %131 = call i32 @os_free(%struct.wps_data* %130)
  store %struct.wps_data* null, %struct.wps_data** %2, align 8
  br label %276

132:                                              ; preds = %110
  %133 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %134 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %133, i32 0, i32 1
  store i32 8, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %100
  %136 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %137 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %136, i32 0, i32 14
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @RECV_M1, align 4
  br label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @SEND_M1, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %146 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %147 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %146, i32 0, i32 15
  store i32 %145, i32* %147, align 8
  %148 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %149 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %186

152:                                              ; preds = %144
  %153 = load i32, i32* @MSG_DEBUG, align 4
  %154 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %155 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %154, i32 0, i32 9
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @wpa_hexdump_buf(i32 %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %156)
  %158 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %159 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %158, i32 0, i32 9
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @wps_parse_msg(i64 %160, %struct.wps_parse_attr* %5)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %152
  %164 = load i32, i32* @MSG_DEBUG, align 4
  %165 = call i32 (i32, i8*, ...) @wpa_printf(i32 %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %185

166:                                              ; preds = %152
  %167 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %5, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i32, i32* @MSG_DEBUG, align 4
  %172 = call i32 (i32, i8*, ...) @wpa_printf(i32 %171, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %184

173:                                              ; preds = %166
  %174 = load i32, i32* @MSG_DEBUG, align 4
  %175 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %5, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %177)
  %179 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %5, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %183 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %182, i32 0, i32 13
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %173, %170
  br label %185

185:                                              ; preds = %184, %163
  br label %186

186:                                              ; preds = %185, %144
  %187 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %188 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %187, i32 0, i32 8
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %214

191:                                              ; preds = %186
  %192 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %193 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %192, i32 0, i32 8
  %194 = load i32*, i32** %193, align 8
  %195 = call i8* @os_memdup(i32* %194, i32 4)
  %196 = bitcast i8* %195 to i32*
  %197 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %198 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %197, i32 0, i32 12
  store i32* %196, i32** %198, align 8
  %199 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %200 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %199, i32 0, i32 12
  %201 = load i32*, i32** %200, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %213

203:                                              ; preds = %191
  %204 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %205 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %204, i32 0, i32 11
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %208 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @bin_clear_free(i32* %206, i32 %209)
  %211 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %212 = call i32 @os_free(%struct.wps_data* %211)
  store %struct.wps_data* null, %struct.wps_data** %2, align 8
  br label %276

213:                                              ; preds = %191
  br label %214

214:                                              ; preds = %213, %186
  %215 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %216 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %214
  %220 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %221 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %220, i32 0, i32 10
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %225 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @ETH_ALEN, align 4
  %228 = call i32 @os_memcpy(i32 %223, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %219, %214
  %230 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %231 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %229
  %235 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %236 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %239 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @ETH_ALEN, align 4
  %242 = call i32 @os_memcpy(i32 %237, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %234, %229
  %244 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %245 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %248 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %247, i32 0, i32 8
  store i32 %246, i32* %248, align 4
  %249 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %250 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %253 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %252, i32 0, i32 7
  store i32 %251, i32* %253, align 8
  %254 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %255 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %243
  %259 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %260 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %263 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @WPS_OOB_PUBKEY_HASH_LEN, align 4
  %266 = call i32 @os_memcpy(i32 %261, i32 %264, i32 %265)
  %267 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %268 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %267, i32 0, i32 4
  store i32 1, i32* %268, align 4
  br label %269

269:                                              ; preds = %258, %243
  %270 = load %struct.wps_config*, %struct.wps_config** %3, align 8
  %271 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %274 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %273, i32 0, i32 5
  store i32 %272, i32* %274, align 8
  %275 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  store %struct.wps_data* %275, %struct.wps_data** %2, align 8
  br label %276

276:                                              ; preds = %269, %203, %129, %83, %9
  %277 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  ret %struct.wps_data* %277
}

declare dso_local %struct.wps_data* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i8* @os_memdup(i32*, i32) #1

declare dso_local i32 @os_free(%struct.wps_data*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @bin_clear_free(i32*, i32) #1

declare dso_local i64 @os_strdup(i8*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, i64) #1

declare dso_local i64 @wps_parse_msg(i64, %struct.wps_parse_attr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

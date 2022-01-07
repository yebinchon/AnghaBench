; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sake.c_eap_sake_process_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sake.c_eap_sake_process_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_sake_data = type { i64, i32, i64, i32, i32*, i64, i64, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.eap_method_ret = type { i32 }
%struct.eap_sake_parse_attr = type { i32, i64, i32 }

@IDENTITY = common dso_local global i64 0, align 8
@CHALLENGE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"EAP-SAKE: Request/Challenge received in unexpected state (%d)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"EAP-SAKE: Received Request/Challenge\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"EAP-SAKE: Request/Challenge did not include AT_RAND_S\00", align 1
@EAP_SAKE_RAND_LEN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"EAP-SAKE: RAND_S (server rand)\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"EAP-SAKE: Failed to get random data\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"EAP-SAKE: RAND_P (peer rand)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"EAP-SAKE: SERVERID\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"EAP-SAKE: Failed to derive keys\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"EAP-SAKE: Sending Response/Challenge\00", align 1
@EAP_SAKE_MIC_LEN = common dso_local global i32 0, align 4
@EAP_SAKE_SUBTYPE_CHALLENGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"EAP-SAKE: * AT_RAND_P\00", align 1
@EAP_SAKE_AT_RAND_P = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"EAP-SAKE: * AT_PEERID\00", align 1
@EAP_SAKE_AT_PEERID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"EAP-SAKE: * AT_MIC_P\00", align 1
@EAP_SAKE_AT_MIC_P = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"EAP-SAKE: Failed to compute MIC\00", align 1
@CONFIRM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sake_data*, %struct.eap_method_ret*, i32, i32*, i64)* @eap_sake_process_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sake_process_challenge(%struct.eap_sm* %0, %struct.eap_sake_data* %1, %struct.eap_method_ret* %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_sake_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.eap_sake_parse_attr, align 8
  %15 = alloca %struct.wpabuf*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_sake_data* %1, %struct.eap_sake_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %19 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IDENTITY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %6
  %24 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %25 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHALLENGE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %32 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @TRUE, align 4
  %36 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %37 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %264

38:                                               ; preds = %23, %6
  %39 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %40 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IDENTITY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %46 = load i64, i64* @CHALLENGE, align 8
  %47 = call i32 @eap_sake_state(%struct.eap_sake_data* %45, i64 %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call i64 @eap_sake_parse_attributes(i32* %51, i64 %52, %struct.eap_sake_parse_attr* %14)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %264

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %14, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @MSG_INFO, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %264

63:                                               ; preds = %56
  %64 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %65 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %14, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %70 = call i32 @os_memcpy(i64 %66, i32 %68, i32 %69)
  %71 = load i32, i32* @MSG_MSGDUMP, align 4
  %72 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %73 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %76 = call i32 @wpa_hexdump(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %74, i32 %75)
  %77 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %78 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %81 = call i64 @random_get_bytes(i64 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %63
  %84 = load i32, i32* @MSG_ERROR, align 4
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %264

86:                                               ; preds = %63
  %87 = load i32, i32* @MSG_MSGDUMP, align 4
  %88 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %89 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %92 = call i32 @wpa_hexdump(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %90, i32 %91)
  %93 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %94 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @os_free(i32* %95)
  %97 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %98 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %97, i32 0, i32 4
  store i32* null, i32** %98, align 8
  %99 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %100 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %99, i32 0, i32 3
  store i32 0, i32* %100, align 8
  %101 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %14, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %86
  %105 = load i32, i32* @MSG_MSGDUMP, align 4
  %106 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %14, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %14, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @wpa_hexdump_ascii(i32 %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %107, i32 %109)
  %111 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %14, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %14, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32* @os_memdup(i64 %112, i32 %114)
  %116 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %117 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %116, i32 0, i32 4
  store i32* %115, i32** %117, align 8
  %118 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %119 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %104
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %264

123:                                              ; preds = %104
  %124 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %14, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %127 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %123, %86
  %129 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %130 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %129, i32 0, i32 11
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %133 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %136 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %139 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %142 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %141, i32 0, i32 7
  %143 = bitcast %struct.TYPE_2__* %142 to i32*
  %144 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %145 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %148 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @eap_sake_derive_keys(i32 %131, i32 %134, i64 %137, i64 %140, i32* %143, i32 %146, i32 %149)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %128
  %153 = load i32, i32* @MSG_INFO, align 4
  %154 = call i32 (i32, i8*, ...) @wpa_printf(i32 %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %264

155:                                              ; preds = %128
  %156 = load i32, i32* @MSG_DEBUG, align 4
  %157 = call i32 (i32, i8*, ...) @wpa_printf(i32 %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %158 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %159 = add nsw i32 2, %158
  %160 = add nsw i32 %159, 2
  %161 = load i32, i32* @EAP_SAKE_MIC_LEN, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %17, align 8
  %164 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %165 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %155
  %169 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %170 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 2, %171
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %17, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %17, align 8
  br label %176

176:                                              ; preds = %168, %155
  %177 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load i64, i64* %17, align 8
  %180 = load i32, i32* @EAP_SAKE_SUBTYPE_CHALLENGE, align 4
  %181 = call %struct.wpabuf* @eap_sake_build_msg(%struct.eap_sake_data* %177, i32 %178, i64 %179, i32 %180)
  store %struct.wpabuf* %181, %struct.wpabuf** %15, align 8
  %182 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %183 = icmp eq %struct.wpabuf* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %264

185:                                              ; preds = %176
  %186 = load i32, i32* @MSG_DEBUG, align 4
  %187 = call i32 (i32, i8*, ...) @wpa_printf(i32 %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %188 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %189 = load i32, i32* @EAP_SAKE_AT_RAND_P, align 4
  %190 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %191 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %194 = call i32 @eap_sake_add_attr(%struct.wpabuf* %188, i32 %189, i64 %192, i32 %193)
  %195 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %196 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %185
  %200 = load i32, i32* @MSG_DEBUG, align 4
  %201 = call i32 (i32, i8*, ...) @wpa_printf(i32 %200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %202 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %203 = load i32, i32* @EAP_SAKE_AT_PEERID, align 4
  %204 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %205 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %208 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @eap_sake_add_attr(%struct.wpabuf* %202, i32 %203, i64 %206, i32 %209)
  br label %211

211:                                              ; preds = %199, %185
  %212 = load i32, i32* @MSG_DEBUG, align 4
  %213 = call i32 (i32, i8*, ...) @wpa_printf(i32 %212, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %214 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %215 = load i32, i32* @EAP_SAKE_AT_MIC_P, align 4
  %216 = call i32 @wpabuf_put_u8(%struct.wpabuf* %214, i32 %215)
  %217 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %218 = load i32, i32* @EAP_SAKE_MIC_LEN, align 4
  %219 = add nsw i32 2, %218
  %220 = call i32 @wpabuf_put_u8(%struct.wpabuf* %217, i32 %219)
  %221 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %222 = load i32, i32* @EAP_SAKE_MIC_LEN, align 4
  %223 = call i32* @wpabuf_put(%struct.wpabuf* %221, i32 %222)
  store i32* %223, i32** %16, align 8
  %224 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %225 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %224, i32 0, i32 7
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %229 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %228, i32 0, i32 6
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %232 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %235 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %238 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %241 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %244 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %247 = call i32 @wpabuf_head(%struct.wpabuf* %246)
  %248 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %249 = call i32 @wpabuf_len(%struct.wpabuf* %248)
  %250 = load i32*, i32** %16, align 8
  %251 = load i32*, i32** %16, align 8
  %252 = call i64 @eap_sake_compute_mic(i32 %227, i64 %230, i64 %233, i32* %236, i32 %239, i64 %242, i32 %245, i32 1, i32 %247, i32 %249, i32* %250, i32* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %211
  %255 = load i32, i32* @MSG_INFO, align 4
  %256 = call i32 (i32, i8*, ...) @wpa_printf(i32 %255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %257 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %258 = call i32 @wpabuf_free(%struct.wpabuf* %257)
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %264

259:                                              ; preds = %211
  %260 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %261 = load i64, i64* @CONFIRM, align 8
  %262 = call i32 @eap_sake_state(%struct.eap_sake_data* %260, i64 %261)
  %263 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %263, %struct.wpabuf** %7, align 8
  br label %264

264:                                              ; preds = %259, %254, %184, %152, %122, %83, %60, %55, %29
  %265 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %265
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_sake_state(%struct.eap_sake_data*, i64) #1

declare dso_local i64 @eap_sake_parse_attributes(i32*, i64, %struct.eap_sake_parse_attr*) #1

declare dso_local i32 @os_memcpy(i64, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64, i32) #1

declare dso_local i64 @random_get_bytes(i64, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i64, i32) #1

declare dso_local i32* @os_memdup(i64, i32) #1

declare dso_local i64 @eap_sake_derive_keys(i32, i32, i64, i64, i32*, i32, i32) #1

declare dso_local %struct.wpabuf* @eap_sake_build_msg(%struct.eap_sake_data*, i32, i64, i32) #1

declare dso_local i32 @eap_sake_add_attr(%struct.wpabuf*, i32, i64, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i64 @eap_sake_compute_mic(i32, i64, i64, i32*, i32, i64, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

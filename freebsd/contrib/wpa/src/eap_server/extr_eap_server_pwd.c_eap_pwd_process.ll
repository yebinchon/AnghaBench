; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_pwd_data = type { i64, i32*, i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PWD = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Bad EAP header! pos %s and len = %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"is NULL\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"is not NULL\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"EAP-pwd: Bad response! Fragmenting but not an ACK\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"EAP-pwd: received ACK from peer\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"EAP-pwd: Frame too short to contain Total-Length field\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"EAP-pwd: Incoming fragments, total length = %d\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"EAP-pwd: Unexpected new fragment start when previous fragment is still in use\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"EAP-pwd: Out of memory to buffer fragments!\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"EAP-pwd: No buffer for reassembly\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [55 x i8] c"EAP-pwd: Buffer overflow attack detected! (%d+%d > %d)\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"EAP-pwd: Got a %d byte fragment\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"EAP-pwd: Last fragment, %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_pwd_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_pwd_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.eap_pwd_data*
  store %struct.eap_pwd_data* %13, %struct.eap_pwd_data** %7, align 8
  %14 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %15 = load i32, i32* @EAP_TYPE_PWD, align 4
  %16 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %17 = call i32* @eap_hdr_validate(i32 %14, i32 %15, %struct.wpabuf* %16, i64* %9)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 1
  br i1 %22, label %23, label %32

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %30)
  br label %225

32:                                               ; preds = %20
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %9, align 8
  %39 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %40 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load i64, i64* %9, align 8
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @MSG_INFO, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  br label %225

53:                                               ; preds = %32
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @EAP_PWD_GET_LENGTH_BIT(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %99

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = icmp ult i64 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %225

63:                                               ; preds = %57
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @WPA_GET_BE16(i32* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %69, 15000
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %225

72:                                               ; preds = %63
  %73 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %74 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0))
  br label %225

80:                                               ; preds = %72
  %81 = load i32, i32* %11, align 4
  %82 = call i32* @wpabuf_alloc(i32 %81)
  %83 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %84 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  %85 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %86 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* @MSG_INFO, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %225

92:                                               ; preds = %80
  %93 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %94 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32* %96, i32** %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = sub i64 %97, 4
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %92, %53
  %100 = load i32, i32* %10, align 4
  %101 = call i64 @EAP_PWD_GET_MORE_BIT(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %105 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %159

108:                                              ; preds = %103, %99
  %109 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %110 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %116 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %117 = load i32, i32* @FAILURE, align 4
  %118 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %116, i32 %117)
  br label %225

119:                                              ; preds = %108
  %120 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %121 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %122, %123
  %125 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %126 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = call i64 @wpabuf_size(i32* %127)
  %129 = icmp ugt i64 %124, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %119
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %133 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i64, i64* %9, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %139 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = call i64 @wpabuf_size(i32* %140)
  %142 = trunc i64 %141 to i32
  %143 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %135, i32 %137, i32 %142)
  %144 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %145 = load i32, i32* @FAILURE, align 4
  %146 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %144, i32 %145)
  br label %225

147:                                              ; preds = %119
  %148 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %149 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32*, i32** %8, align 8
  %152 = load i64, i64* %9, align 8
  %153 = call i32 @wpabuf_put_data(i32* %150, i32* %151, i64 %152)
  %154 = load i64, i64* %9, align 8
  %155 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %156 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, %154
  store i64 %158, i64* %156, align 8
  br label %159

159:                                              ; preds = %147, %103
  %160 = load i32, i32* %10, align 4
  %161 = call i64 @EAP_PWD_GET_MORE_BIT(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load i32, i32* @MSG_DEBUG, align 4
  %165 = load i64, i64* %9, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 (i32, i8*, ...) @wpa_printf(i32 %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %166)
  br label %225

168:                                              ; preds = %159
  %169 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %170 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %168
  %174 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %175 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %190

178:                                              ; preds = %173
  %179 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %180 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = call i32* @wpabuf_head_u8(i32* %181)
  store i32* %182, i32** %8, align 8
  %183 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %184 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %9, align 8
  %186 = load i32, i32* @MSG_DEBUG, align 4
  %187 = load i64, i64* %9, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 (i32, i8*, ...) @wpa_printf(i32 %186, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %178, %173, %168
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @EAP_PWD_GET_EXCHANGE(i32 %191)
  switch i32 %192, label %211 [
    i32 128, label %193
    i32 130, label %199
    i32 129, label %205
  ]

193:                                              ; preds = %190
  %194 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %195 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = load i64, i64* %9, align 8
  %198 = call i32 @eap_pwd_process_id_resp(%struct.eap_sm* %194, %struct.eap_pwd_data* %195, i32* %196, i64 %197)
  br label %211

199:                                              ; preds = %190
  %200 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %201 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %202 = load i32*, i32** %8, align 8
  %203 = load i64, i64* %9, align 8
  %204 = call i32 @eap_pwd_process_commit_resp(%struct.eap_sm* %200, %struct.eap_pwd_data* %201, i32* %202, i64 %203)
  br label %211

205:                                              ; preds = %190
  %206 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %207 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = load i64, i64* %9, align 8
  %210 = call i32 @eap_pwd_process_confirm_resp(%struct.eap_sm* %206, %struct.eap_pwd_data* %207, i32* %208, i64 %209)
  br label %211

211:                                              ; preds = %190, %205, %199, %193
  %212 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %213 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %211
  %217 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %218 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @wpabuf_free(i32* %219)
  %221 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %222 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %221, i32 0, i32 1
  store i32* null, i32** %222, align 8
  %223 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %7, align 8
  %224 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %223, i32 0, i32 0
  store i64 0, i64* %224, align 8
  br label %225

225:                                              ; preds = %23, %52, %60, %71, %77, %89, %113, %130, %163, %216, %211
  ret void
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @EAP_PWD_GET_LENGTH_BIT(i32) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i64 @EAP_PWD_GET_MORE_BIT(i32) #1

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #1

declare dso_local i64 @wpabuf_size(i32*) #1

declare dso_local i32 @wpabuf_put_data(i32*, i32*, i64) #1

declare dso_local i32* @wpabuf_head_u8(i32*) #1

declare dso_local i32 @EAP_PWD_GET_EXCHANGE(i32) #1

declare dso_local i32 @eap_pwd_process_id_resp(%struct.eap_sm*, %struct.eap_pwd_data*, i32*, i64) #1

declare dso_local i32 @eap_pwd_process_commit_resp(%struct.eap_sm*, %struct.eap_pwd_data*, i32*, i64) #1

declare dso_local i32 @eap_pwd_process_confirm_resp(%struct.eap_sm*, %struct.eap_pwd_data*, i32*, i64) #1

declare dso_local i32 @wpabuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

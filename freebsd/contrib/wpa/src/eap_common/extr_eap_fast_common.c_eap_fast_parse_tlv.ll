; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_fast_common.c_eap_fast_parse_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_fast_common.c_eap_fast_parse_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_tlv_parse = type { i8*, i64, i8*, i32, i64, i32*, i8*, %struct.eap_tlv_crypto_binding_tlv*, i32* }
%struct.eap_tlv_crypto_binding_tlv = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EAP-FAST: EAP-Payload TLV\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"EAP-FAST: More than one EAP-Payload TLV in the message\00", align 1
@EAP_TLV_RESULT_FAILURE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"EAP-FAST: Result TLV\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"EAP-FAST: More than one Result TLV in the message\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"EAP-FAST: Too short Result TLV\00", align 1
@EAP_TLV_RESULT_SUCCESS = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"EAP-FAST: Unknown Result %d\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"EAP-FAST: Result: %s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Failure\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"EAP-FAST: Intermediate Result TLV\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"EAP-FAST: Too short Intermediate-Result TLV\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"EAP-FAST: More than one Intermediate-Result TLV in the message\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"EAP-FAST: Unknown Intermediate Result %d\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"EAP-FAST: Intermediate Result: %s\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"EAP-FAST: Crypto-Binding TLV\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"EAP-FAST: More than one Crypto-Binding TLV in the message\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"EAP-FAST: Too short Crypto-Binding TLV\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"EAP-FAST: Request-Action TLV\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"EAP-FAST: More than one Request-Action TLV in the message\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"EAP-FAST: Too short Request-Action TLV\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"EAP-FAST: Request-Action: %d\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"EAP-FAST: PAC TLV\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"EAP-FAST: More than one PAC TLV in the message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_fast_parse_tlv(%struct.eap_fast_tlv_parse* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_fast_tlv_parse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_fast_tlv_parse* %0, %struct.eap_fast_tlv_parse** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %245 [
    i32 132, label %11
    i32 128, label %33
    i32 131, label %92
    i32 133, label %151
    i32 129, label %189
    i32 130, label %223
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @MSG_MSGDUMP, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @wpa_hexdump(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %13, i64 %14)
  %16 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %17 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %24 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %25 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  store i32 -2, i32* %5, align 4
  br label %247

26:                                               ; preds = %11
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %29 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %28, i32 0, i32 8
  store i32* %27, i32** %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %32 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %246

33:                                               ; preds = %4
  %34 = load i32, i32* @MSG_MSGDUMP, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @wpa_hexdump(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %35, i64 %36)
  %38 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %39 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %46 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %47 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  store i32 -2, i32* %5, align 4
  br label %247

48:                                               ; preds = %33
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %49, 2
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %55 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %56 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %246

57:                                               ; preds = %48
  %58 = load i32*, i32** %8, align 8
  %59 = call i8* @WPA_GET_BE16(i32* %58)
  %60 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %61 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %63 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** @EAP_TLV_RESULT_SUCCESS, align 8
  %66 = icmp ne i8* %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %57
  %68 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %69 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %72 = icmp ne i8* %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %76 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  %79 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %80 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %81 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %73, %67, %57
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %85 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** @EAP_TLV_RESULT_SUCCESS, align 8
  %88 = icmp eq i8* %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %90)
  br label %246

92:                                               ; preds = %4
  %93 = load i32, i32* @MSG_MSGDUMP, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @wpa_hexdump(i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32* %94, i64 %95)
  %97 = load i64, i64* %9, align 8
  %98 = icmp ult i64 %97, 2
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  %102 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %103 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %104 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %246

105:                                              ; preds = %92
  %106 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %107 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32, i32* @MSG_DEBUG, align 4
  %112 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0))
  %113 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %114 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %115 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  store i32 -2, i32* %5, align 4
  br label %247

116:                                              ; preds = %105
  %117 = load i32*, i32** %8, align 8
  %118 = call i8* @WPA_GET_BE16(i32* %117)
  %119 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %120 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %122 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** @EAP_TLV_RESULT_SUCCESS, align 8
  %125 = icmp ne i8* %123, %124
  br i1 %125, label %126, label %141

126:                                              ; preds = %116
  %127 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %128 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %131 = icmp ne i8* %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load i32, i32* @MSG_DEBUG, align 4
  %134 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %135 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %133, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8* %136)
  %138 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %139 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %140 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %132, %126, %116
  %142 = load i32, i32* @MSG_DEBUG, align 4
  %143 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %144 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** @EAP_TLV_RESULT_SUCCESS, align 8
  %147 = icmp eq i8* %145, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %142, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* %149)
  br label %246

151:                                              ; preds = %4
  %152 = load i32, i32* @MSG_MSGDUMP, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @wpa_hexdump(i32 %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32* %153, i64 %154)
  %156 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %157 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %156, i32 0, i32 7
  %158 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %157, align 8
  %159 = icmp ne %struct.eap_tlv_crypto_binding_tlv* %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = load i32, i32* @MSG_DEBUG, align 4
  %162 = call i32 (i32, i8*, ...) @wpa_printf(i32 %161, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0))
  %163 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %164 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %165 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  store i32 -2, i32* %5, align 4
  br label %247

166:                                              ; preds = %151
  %167 = load i64, i64* %9, align 8
  %168 = add i64 4, %167
  %169 = trunc i64 %168 to i32
  %170 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %171 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  %172 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %173 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = icmp ult i64 %175, 4
  br i1 %176, label %177, label %183

177:                                              ; preds = %166
  %178 = load i32, i32* @MSG_DEBUG, align 4
  %179 = call i32 (i32, i8*, ...) @wpa_printf(i32 %178, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  %180 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %181 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %182 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  store i32 -2, i32* %5, align 4
  br label %247

183:                                              ; preds = %166
  %184 = load i32*, i32** %8, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 -4
  %186 = bitcast i32* %185 to %struct.eap_tlv_crypto_binding_tlv*
  %187 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %188 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %187, i32 0, i32 7
  store %struct.eap_tlv_crypto_binding_tlv* %186, %struct.eap_tlv_crypto_binding_tlv** %188, align 8
  br label %246

189:                                              ; preds = %4
  %190 = load i32, i32* @MSG_MSGDUMP, align 4
  %191 = load i32*, i32** %8, align 8
  %192 = load i64, i64* %9, align 8
  %193 = call i32 @wpa_hexdump(i32 %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32* %191, i64 %192)
  %194 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %195 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %194, i32 0, i32 6
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %204

198:                                              ; preds = %189
  %199 = load i32, i32* @MSG_DEBUG, align 4
  %200 = call i32 (i32, i8*, ...) @wpa_printf(i32 %199, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0))
  %201 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %202 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %203 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %202, i32 0, i32 0
  store i8* %201, i8** %203, align 8
  store i32 -2, i32* %5, align 4
  br label %247

204:                                              ; preds = %189
  %205 = load i64, i64* %9, align 8
  %206 = icmp ult i64 %205, 2
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load i32, i32* @MSG_DEBUG, align 4
  %209 = call i32 (i32, i8*, ...) @wpa_printf(i32 %208, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0))
  %210 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %211 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %212 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %211, i32 0, i32 0
  store i8* %210, i8** %212, align 8
  br label %246

213:                                              ; preds = %204
  %214 = load i32*, i32** %8, align 8
  %215 = call i8* @WPA_GET_BE16(i32* %214)
  %216 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %217 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %216, i32 0, i32 6
  store i8* %215, i8** %217, align 8
  %218 = load i32, i32* @MSG_DEBUG, align 4
  %219 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %220 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %219, i32 0, i32 6
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 (i32, i8*, ...) @wpa_printf(i32 %218, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8* %221)
  br label %246

223:                                              ; preds = %4
  %224 = load i32, i32* @MSG_MSGDUMP, align 4
  %225 = load i32*, i32** %8, align 8
  %226 = load i64, i64* %9, align 8
  %227 = call i32 @wpa_hexdump(i32 %224, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32* %225, i64 %226)
  %228 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %229 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %228, i32 0, i32 5
  %230 = load i32*, i32** %229, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %223
  %233 = load i32, i32* @MSG_DEBUG, align 4
  %234 = call i32 (i32, i8*, ...) @wpa_printf(i32 %233, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0))
  %235 = load i8*, i8** @EAP_TLV_RESULT_FAILURE, align 8
  %236 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %237 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %236, i32 0, i32 0
  store i8* %235, i8** %237, align 8
  store i32 -2, i32* %5, align 4
  br label %247

238:                                              ; preds = %223
  %239 = load i32*, i32** %8, align 8
  %240 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %241 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %240, i32 0, i32 5
  store i32* %239, i32** %241, align 8
  %242 = load i64, i64* %9, align 8
  %243 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %6, align 8
  %244 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %243, i32 0, i32 4
  store i64 %242, i64* %244, align 8
  br label %246

245:                                              ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %247

246:                                              ; preds = %238, %213, %207, %183, %141, %99, %82, %51, %26
  store i32 0, i32* %5, align 4
  br label %247

247:                                              ; preds = %246, %245, %232, %198, %177, %160, %110, %42, %20
  %248 = load i32, i32* %5, align 4
  ret i32 %248
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @WPA_GET_BE16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

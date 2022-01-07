; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_parse_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_parse_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_tlv_parse = type { i8*, i8**, i64, i8*, i8**, i64, i8**, i64, i32, i8**, i64, i8**, i64, %struct.teap_tlv_crypto_binding*, i8*, i8* }
%struct.teap_tlv_crypto_binding = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"EAP-TEAP: Result TLV\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"EAP-TEAP: More than one Result TLV in the message\00", align 1
@TEAP_STATUS_FAILURE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"EAP-TEAP: Too short Result TLV\00", align 1
@TEAP_STATUS_SUCCESS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"EAP-TEAP: Unknown Result %d\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"EAP-TEAP: Result: %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Failure\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"EAP-TEAP: NAK TLV\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"EAP-TEAP: Too short NAK TLV\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"EAP-TEAP: Request-Action TLV\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"EAP-TEAP: More than one Request-Action TLV in the message\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"EAP-TEAP: Too short Request-Action TLV\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"EAP-TEAP: Request-Action: Status=%u Action=%u\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"EAP-TEAP: EAP-Payload TLV\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"EAP-TEAP: More than one EAP-Payload TLV in the message\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"EAP-TEAP: Intermediate-Result TLV\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"EAP-TEAP: Too short Intermediate-Result TLV\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"EAP-TEAP: More than one Intermediate-Result TLV in the message\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"EAP-TEAP: Unknown Intermediate Result %d\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"EAP-TEAP: Intermediate Result: %s\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"EAP-TEAP: PAC TLV\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"EAP-TEAP: More than one PAC TLV in the message\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"EAP-TEAP: Crypto-Binding TLV\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"EAP-TEAP: More than one Crypto-Binding TLV in the message\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"EAP-TEAP: Too short Crypto-Binding TLV\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"EAP-TEAP: Basic-Password-Auth-Req TLV\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"EAP-TEAP: More than one Basic-Password-Auth-Req TLV in the message\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"EAP-TEAP: Basic-Password-Auth-Resp TLV\00", align 1
@.str.28 = private unnamed_addr constant [68 x i8] c"EAP-TEAP: More than one Basic-Password-Auth-Resp TLV in the message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_teap_parse_tlv(%struct.eap_teap_tlv_parse* %0, i32 %1, i8** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_teap_tlv_parse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  store %struct.eap_teap_tlv_parse* %0, %struct.eap_teap_tlv_parse** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %318 [
    i32 128, label %11
    i32 131, label %70
    i32 129, label %90
    i32 133, label %133
    i32 132, label %155
    i32 130, label %214
    i32 134, label %236
    i32 136, label %274
    i32 135, label %296
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @MSG_MSGDUMP, align 4
  %13 = load i8**, i8*** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @wpa_hexdump(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %13, i64 %14)
  %16 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %17 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %24 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %25 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  store i32 -2, i32* %5, align 4
  br label %320

26:                                               ; preds = %11
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %27, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %33 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %34 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %319

35:                                               ; preds = %26
  %36 = load i8**, i8*** %8, align 8
  %37 = call i8* @WPA_GET_BE16(i8** %36)
  %38 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %39 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %41 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** @TEAP_STATUS_SUCCESS, align 8
  %44 = icmp ne i8* %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %35
  %46 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %47 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* @MSG_INFO, align 4
  %53 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %54 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %58 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %59 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %51, %45, %35
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %63 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** @TEAP_STATUS_SUCCESS, align 8
  %66 = icmp eq i8* %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  br label %319

70:                                               ; preds = %4
  %71 = load i32, i32* @MSG_MSGDUMP, align 4
  %72 = load i8**, i8*** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @wpa_hexdump(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %72, i64 %73)
  %75 = load i64, i64* %9, align 8
  %76 = icmp ult i64 %75, 6
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @MSG_INFO, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %80 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %81 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %82 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %319

83:                                               ; preds = %70
  %84 = load i8**, i8*** %8, align 8
  %85 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %86 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %85, i32 0, i32 1
  store i8** %84, i8*** %86, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %89 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  br label %319

90:                                               ; preds = %4
  %91 = load i32, i32* @MSG_MSGDUMP, align 4
  %92 = load i8**, i8*** %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @wpa_hexdump(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8** %92, i64 %93)
  %95 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %96 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %95, i32 0, i32 14
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load i32, i32* @MSG_INFO, align 4
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  %102 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %103 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %104 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  store i32 -2, i32* %5, align 4
  br label %320

105:                                              ; preds = %90
  %106 = load i64, i64* %9, align 8
  %107 = icmp ult i64 %106, 2
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* @MSG_INFO, align 4
  %110 = call i32 (i32, i8*, ...) @wpa_printf(i32 %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %111 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %112 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %113 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  br label %319

114:                                              ; preds = %105
  %115 = load i8**, i8*** %8, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %119 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %118, i32 0, i32 15
  store i8* %117, i8** %119, align 8
  %120 = load i8**, i8*** %8, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %124 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %123, i32 0, i32 14
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @MSG_DEBUG, align 4
  %126 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %127 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %126, i32 0, i32 15
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %130 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %129, i32 0, i32 14
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (i32, i8*, ...) @wpa_printf(i32 %125, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i8* %128, i8* %131)
  br label %319

133:                                              ; preds = %4
  %134 = load i32, i32* @MSG_MSGDUMP, align 4
  %135 = load i8**, i8*** %8, align 8
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @wpa_hexdump(i32 %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8** %135, i64 %136)
  %138 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %139 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %138, i32 0, i32 4
  %140 = load i8**, i8*** %139, align 8
  %141 = icmp ne i8** %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = load i32, i32* @MSG_INFO, align 4
  %144 = call i32 (i32, i8*, ...) @wpa_printf(i32 %143, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  %145 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %146 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %147 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  store i32 -2, i32* %5, align 4
  br label %320

148:                                              ; preds = %133
  %149 = load i8**, i8*** %8, align 8
  %150 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %151 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %150, i32 0, i32 4
  store i8** %149, i8*** %151, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %154 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %153, i32 0, i32 5
  store i64 %152, i64* %154, align 8
  br label %319

155:                                              ; preds = %4
  %156 = load i32, i32* @MSG_MSGDUMP, align 4
  %157 = load i8**, i8*** %8, align 8
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @wpa_hexdump(i32 %156, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8** %157, i64 %158)
  %160 = load i64, i64* %9, align 8
  %161 = icmp ult i64 %160, 2
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i32, i32* @MSG_INFO, align 4
  %164 = call i32 (i32, i8*, ...) @wpa_printf(i32 %163, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  %165 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %166 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %167 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  br label %319

168:                                              ; preds = %155
  %169 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %170 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %169, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load i32, i32* @MSG_INFO, align 4
  %175 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i64 0, i64 0))
  %176 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %177 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %178 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %177, i32 0, i32 3
  store i8* %176, i8** %178, align 8
  store i32 -2, i32* %5, align 4
  br label %320

179:                                              ; preds = %168
  %180 = load i8**, i8*** %8, align 8
  %181 = call i8* @WPA_GET_BE16(i8** %180)
  %182 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %183 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %182, i32 0, i32 3
  store i8* %181, i8** %183, align 8
  %184 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %185 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %184, i32 0, i32 3
  %186 = load i8*, i8** %185, align 8
  %187 = load i8*, i8** @TEAP_STATUS_SUCCESS, align 8
  %188 = icmp ne i8* %186, %187
  br i1 %188, label %189, label %204

189:                                              ; preds = %179
  %190 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %191 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %190, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %194 = icmp ne i8* %192, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %189
  %196 = load i32, i32* @MSG_INFO, align 4
  %197 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %198 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %197, i32 0, i32 3
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 (i32, i8*, ...) @wpa_printf(i32 %196, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i8* %199)
  %201 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %202 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %203 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  br label %204

204:                                              ; preds = %195, %189, %179
  %205 = load i32, i32* @MSG_DEBUG, align 4
  %206 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %207 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %206, i32 0, i32 3
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** @TEAP_STATUS_SUCCESS, align 8
  %210 = icmp eq i8* %208, %209
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %213 = call i32 (i32, i8*, ...) @wpa_printf(i32 %205, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i8* %212)
  br label %319

214:                                              ; preds = %4
  %215 = load i32, i32* @MSG_MSGDUMP, align 4
  %216 = load i8**, i8*** %8, align 8
  %217 = load i64, i64* %9, align 8
  %218 = call i32 @wpa_hexdump(i32 %215, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i8** %216, i64 %217)
  %219 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %220 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %219, i32 0, i32 6
  %221 = load i8**, i8*** %220, align 8
  %222 = icmp ne i8** %221, null
  br i1 %222, label %223, label %229

223:                                              ; preds = %214
  %224 = load i32, i32* @MSG_INFO, align 4
  %225 = call i32 (i32, i8*, ...) @wpa_printf(i32 %224, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0))
  %226 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %227 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %228 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %227, i32 0, i32 3
  store i8* %226, i8** %228, align 8
  store i32 -2, i32* %5, align 4
  br label %320

229:                                              ; preds = %214
  %230 = load i8**, i8*** %8, align 8
  %231 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %232 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %231, i32 0, i32 6
  store i8** %230, i8*** %232, align 8
  %233 = load i64, i64* %9, align 8
  %234 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %235 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %234, i32 0, i32 7
  store i64 %233, i64* %235, align 8
  br label %319

236:                                              ; preds = %4
  %237 = load i32, i32* @MSG_MSGDUMP, align 4
  %238 = load i8**, i8*** %8, align 8
  %239 = load i64, i64* %9, align 8
  %240 = call i32 @wpa_hexdump(i32 %237, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i8** %238, i64 %239)
  %241 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %242 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %241, i32 0, i32 13
  %243 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %242, align 8
  %244 = icmp ne %struct.teap_tlv_crypto_binding* %243, null
  br i1 %244, label %245, label %251

245:                                              ; preds = %236
  %246 = load i32, i32* @MSG_INFO, align 4
  %247 = call i32 (i32, i8*, ...) @wpa_printf(i32 %246, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.23, i64 0, i64 0))
  %248 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %249 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %250 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %249, i32 0, i32 3
  store i8* %248, i8** %250, align 8
  store i32 -2, i32* %5, align 4
  br label %320

251:                                              ; preds = %236
  %252 = load i64, i64* %9, align 8
  %253 = add i64 4, %252
  %254 = trunc i64 %253 to i32
  %255 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %256 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %255, i32 0, i32 8
  store i32 %254, i32* %256, align 8
  %257 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %258 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %257, i32 0, i32 8
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = icmp ult i64 %260, 4
  br i1 %261, label %262, label %268

262:                                              ; preds = %251
  %263 = load i32, i32* @MSG_INFO, align 4
  %264 = call i32 (i32, i8*, ...) @wpa_printf(i32 %263, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0))
  %265 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %266 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %267 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %266, i32 0, i32 3
  store i8* %265, i8** %267, align 8
  store i32 -2, i32* %5, align 4
  br label %320

268:                                              ; preds = %251
  %269 = load i8**, i8*** %8, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 -4
  %271 = bitcast i8** %270 to %struct.teap_tlv_crypto_binding*
  %272 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %273 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %272, i32 0, i32 13
  store %struct.teap_tlv_crypto_binding* %271, %struct.teap_tlv_crypto_binding** %273, align 8
  br label %319

274:                                              ; preds = %4
  %275 = load i32, i32* @MSG_MSGDUMP, align 4
  %276 = load i8**, i8*** %8, align 8
  %277 = load i64, i64* %9, align 8
  %278 = call i32 @wpa_hexdump_ascii(i32 %275, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i8** %276, i64 %277)
  %279 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %280 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %279, i32 0, i32 9
  %281 = load i8**, i8*** %280, align 8
  %282 = icmp ne i8** %281, null
  br i1 %282, label %283, label %289

283:                                              ; preds = %274
  %284 = load i32, i32* @MSG_INFO, align 4
  %285 = call i32 (i32, i8*, ...) @wpa_printf(i32 %284, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.26, i64 0, i64 0))
  %286 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %287 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %288 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %287, i32 0, i32 3
  store i8* %286, i8** %288, align 8
  store i32 -2, i32* %5, align 4
  br label %320

289:                                              ; preds = %274
  %290 = load i8**, i8*** %8, align 8
  %291 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %292 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %291, i32 0, i32 9
  store i8** %290, i8*** %292, align 8
  %293 = load i64, i64* %9, align 8
  %294 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %295 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %294, i32 0, i32 10
  store i64 %293, i64* %295, align 8
  br label %319

296:                                              ; preds = %4
  %297 = load i32, i32* @MSG_MSGDUMP, align 4
  %298 = load i8**, i8*** %8, align 8
  %299 = load i64, i64* %9, align 8
  %300 = call i32 @wpa_hexdump_ascii(i32 %297, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0), i8** %298, i64 %299)
  %301 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %302 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %301, i32 0, i32 11
  %303 = load i8**, i8*** %302, align 8
  %304 = icmp ne i8** %303, null
  br i1 %304, label %305, label %311

305:                                              ; preds = %296
  %306 = load i32, i32* @MSG_INFO, align 4
  %307 = call i32 (i32, i8*, ...) @wpa_printf(i32 %306, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.28, i64 0, i64 0))
  %308 = load i8*, i8** @TEAP_STATUS_FAILURE, align 8
  %309 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %310 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %309, i32 0, i32 3
  store i8* %308, i8** %310, align 8
  store i32 -2, i32* %5, align 4
  br label %320

311:                                              ; preds = %296
  %312 = load i8**, i8*** %8, align 8
  %313 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %314 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %313, i32 0, i32 11
  store i8** %312, i8*** %314, align 8
  %315 = load i64, i64* %9, align 8
  %316 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %317 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %316, i32 0, i32 12
  store i64 %315, i64* %317, align 8
  br label %319

318:                                              ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %320

319:                                              ; preds = %311, %289, %268, %229, %204, %162, %148, %114, %108, %83, %77, %60, %29
  store i32 0, i32* %5, align 4
  br label %320

320:                                              ; preds = %319, %318, %305, %283, %262, %245, %223, %173, %142, %99, %20
  %321 = load i32, i32* %5, align 4
  ret i32 %321
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i8**, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @WPA_GET_BE16(i8**) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

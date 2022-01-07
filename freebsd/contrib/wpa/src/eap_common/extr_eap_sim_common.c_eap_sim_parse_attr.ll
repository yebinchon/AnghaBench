; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_parse_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_parse_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_attrs = type { i32, i32, i32, i32, i32*, i64, i32*, i32*, i32*, i32*, i64, i32*, i64, i32, i32*, i32*, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i32*, i64, i32, i32*, i64, i64, i32*, i8**, i8*, i32 }

@NO_ID_REQ = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"EAP-SIM: Attribute overflow(1)\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"EAP-SIM: Attribute: Type=%d Len=%d\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"EAP-SIM: Attribute overflow (pos=%p len=%d end=%p)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"EAP-SIM: Attribute underflow\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"EAP-SIM: Attribute data\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"EAP-SIM: AT_RAND\00", align 1
@GSM_RAND_LEN = common dso_local global i64 0, align 8
@EAP_AKA_RAND_LEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"EAP-SIM: Invalid AT_RAND (len %lu)\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"EAP-AKA: AT_AUTN\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"EAP-SIM: Unexpected AT_AUTN\00", align 1
@EAP_AKA_AUTN_LEN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"EAP-AKA: Invalid AT_AUTN (len %lu)\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"EAP-SIM: Unencrypted AT_PADDING\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"EAP-SIM: (encr) AT_PADDING\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"EAP-SIM: (encr) AT_PADDING used a non-zero padding byte\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"EAP-SIM: (encr) padding bytes\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"EAP-SIM: AT_NONCE_MT\00", align 1
@EAP_SIM_NONCE_MT_LEN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"EAP-SIM: Invalid AT_NONCE_MT length\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"EAP-SIM: AT_PERMANENT_ID_REQ\00", align 1
@PERMANENT_ID = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"EAP-SIM: AT_MAC\00", align 1
@EAP_SIM_MAC_LEN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"EAP-SIM: Invalid AT_MAC length\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"EAP-SIM: Invalid AT_NOTIFICATION length %lu\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"EAP-SIM: AT_NOTIFICATION %d\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"EAP-SIM: AT_ANY_ID_REQ\00", align 1
@ANY_ID = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"EAP-SIM: AT_IDENTITY\00", align 1
@.str.23 = private unnamed_addr constant [71 x i8] c"EAP-SIM: Invalid AT_IDENTITY (Actual Length %lu, remaining length %lu)\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"EAP-AKA: Unexpected AT_VERSION_LIST\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"EAP-SIM: AT_VERSION_LIST\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [61 x i8] c"EAP-SIM: Invalid AT_VERSION_LIST (list_len=%lu attr_len=%lu)\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"EAP-SIM: AT_SELECTED_VERSION\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"EAP-SIM: Invalid AT_SELECTED_VERSION length %lu\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"EAP-SIM: AT_SELECTED_VERSION %d\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"EAP-SIM: AT_FULLAUTH_ID_REQ\00", align 1
@FULLAUTH_ID = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [32 x i8] c"EAP-SIM: Unencrypted AT_COUNTER\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"EAP-SIM: (encr) Invalid AT_COUNTER (alen=%lu)\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"EAP-SIM: (encr) AT_COUNTER %d\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"EAP-SIM: Unencrypted AT_COUNTER_TOO_SMALL\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"EAP-SIM: (encr) Invalid AT_COUNTER_TOO_SMALL (alen=%lu)\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"EAP-SIM: (encr) AT_COUNTER_TOO_SMALL\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"EAP-SIM: Unencrypted AT_NONCE_S\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"EAP-SIM: (encr) AT_NONCE_S\00", align 1
@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [46 x i8] c"EAP-SIM: (encr) Invalid AT_NONCE_S (alen=%lu)\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"EAP-SIM: Invalid AT_CLIENT_ERROR_CODE length %lu\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"EAP-SIM: AT_CLIENT_ERROR_CODE %d\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"EAP-SIM: AT_IV\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"EAP-SIM: Invalid AT_IV length %lu\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"EAP-SIM: AT_ENCR_DATA\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"EAP-SIM: Invalid AT_ENCR_DATA length %lu\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"EAP-SIM: Unencrypted AT_NEXT_PSEUDONYM\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"EAP-SIM: (encr) AT_NEXT_PSEUDONYM\00", align 1
@.str.48 = private unnamed_addr constant [73 x i8] c"EAP-SIM: (encr) Invalid AT_NEXT_PSEUDONYM (actual len %lu, attr len %lu)\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"EAP-SIM: Unencrypted AT_NEXT_REAUTH_ID\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"EAP-SIM: (encr) AT_NEXT_REAUTH_ID\00", align 1
@.str.51 = private unnamed_addr constant [73 x i8] c"EAP-SIM: (encr) Invalid AT_NEXT_REAUTH_ID (actual len %lu, attr len %lu)\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"EAP-SIM: AT_RES\00", align 1
@EAP_AKA_MIN_RES_LEN = common dso_local global i64 0, align 8
@EAP_AKA_MAX_RES_LEN = common dso_local global i64 0, align 8
@.str.53 = private unnamed_addr constant [34 x i8] c"EAP-SIM: Invalid AT_RES (len %lu)\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"EAP-AKA: AT_AUTS\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"EAP-SIM: Unexpected AT_AUTS\00", align 1
@EAP_AKA_AUTS_LEN = common dso_local global i64 0, align 8
@.str.56 = private unnamed_addr constant [35 x i8] c"EAP-AKA: Invalid AT_AUTS (len %lu)\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"EAP-AKA: AT_CHECKCODE\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"EAP-SIM: Unexpected AT_CHECKCODE\00", align 1
@EAP_AKA_CHECKCODE_LEN = common dso_local global i64 0, align 8
@EAP_AKA_PRIME_CHECKCODE_LEN = common dso_local global i64 0, align 8
@.str.59 = private unnamed_addr constant [40 x i8] c"EAP-AKA: Invalid AT_CHECKCODE (len %lu)\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"EAP-SIM: Encrypted AT_RESULT_IND\00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"EAP-SIM: Invalid AT_RESULT_IND (alen=%lu)\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"EAP-SIM: AT_RESULT_IND\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"EAP-SIM: Unrecognized non-skippable attribute %d\00", align 1
@.str.64 = private unnamed_addr constant [53 x i8] c"EAP-SIM: Unrecognized skippable attribute %d ignored\00", align 1
@.str.65 = private unnamed_addr constant [57 x i8] c"EAP-SIM: Attributes parsed successfully (aka=%d encr=%d)\00", align 1
@EAP_AKA_PRIME_KDF_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_sim_parse_attr(i32* %0, i32* %1, %struct.eap_sim_attrs* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.eap_sim_attrs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.eap_sim_attrs* %2, %struct.eap_sim_attrs** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %12, align 8
  %19 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %20 = call i32 @os_memset(%struct.eap_sim_attrs* %19, i32 0, i32 264)
  %21 = load i32, i32* @NO_ID_REQ, align 4
  %22 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %23 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %22, i32 0, i32 34
  store i32 %21, i32* %23, align 8
  %24 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %25 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %27 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %29 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %28, i32 0, i32 2
  store i32 -1, i32* %29, align 8
  %30 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %31 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %30, i32 0, i32 3
  store i32 -1, i32* %31, align 4
  br label %32

32:                                               ; preds = %672, %5
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ult i32* %33, %34
  br i1 %35, label %36, label %680

36:                                               ; preds = %32
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ugt i32* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

44:                                               ; preds = %36
  %45 = load i32, i32* @MSG_MSGDUMP, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ugt i32* %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %44
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 4
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32* %65, i32 %69, i32* %70)
  store i32 -1, i32* %6, align 4
  br label %685

72:                                               ; preds = %44
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @MSG_INFO, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

80:                                               ; preds = %72
  %81 = load i32*, i32** %12, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32* %82, i32** %13, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 4
  %87 = sub nsw i32 %86, 2
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %14, align 8
  %89 = load i32, i32* @MSG_MSGDUMP, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = load i64, i64* %14, align 8
  %92 = call i32 @wpa_hexdump(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %90, i64 %91)
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %655 [
    i32 132, label %96
    i32 153, label %130
    i32 134, label %154
    i32 137, label %187
    i32 133, label %203
    i32 140, label %209
    i32 135, label %225
    i32 154, label %248
    i32 144, label %254
    i32 128, label %279
    i32 129, label %317
    i32 145, label %342
    i32 148, label %348
    i32 147, label %377
    i32 136, label %395
    i32 149, label %418
    i32 143, label %441
    i32 146, label %458
    i32 139, label %481
    i32 138, label %516
    i32 131, label %551
    i32 152, label %583
    i32 150, label %603
    i32 130, label %637
  ]

96:                                               ; preds = %80
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32*, i32** %13, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  store i32* %100, i32** %13, align 8
  %101 = load i64, i64* %14, align 8
  %102 = sub i64 %101, 2
  store i64 %102, i64* %14, align 8
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %96
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* @GSM_RAND_LEN, align 8
  %108 = urem i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %105, %96
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* @EAP_AKA_RAND_LEN, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113, %105
  %118 = load i32, i32* @MSG_INFO, align 4
  %119 = load i64, i64* %14, align 8
  %120 = call i32 (i32, i8*, ...) @wpa_printf(i32 %118, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %119)
  store i32 -1, i32* %6, align 4
  br label %685

121:                                              ; preds = %113, %110
  %122 = load i32*, i32** %13, align 8
  %123 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %124 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %123, i32 0, i32 4
  store i32* %122, i32** %124, align 8
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* @GSM_RAND_LEN, align 8
  %127 = udiv i64 %125, %126
  %128 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %129 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %128, i32 0, i32 5
  store i64 %127, i64* %129, align 8
  br label %672

130:                                              ; preds = %80
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* @MSG_DEBUG, align 4
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

138:                                              ; preds = %130
  %139 = load i32*, i32** %13, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  store i32* %140, i32** %13, align 8
  %141 = load i64, i64* %14, align 8
  %142 = sub i64 %141, 2
  store i64 %142, i64* %14, align 8
  %143 = load i64, i64* %14, align 8
  %144 = load i64, i64* @EAP_AKA_AUTN_LEN, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @MSG_INFO, align 4
  %148 = load i64, i64* %14, align 8
  %149 = call i32 (i32, i8*, ...) @wpa_printf(i32 %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 %148)
  store i32 -1, i32* %6, align 4
  br label %685

150:                                              ; preds = %138
  %151 = load i32*, i32** %13, align 8
  %152 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %153 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %152, i32 0, i32 6
  store i32* %151, i32** %153, align 8
  br label %672

154:                                              ; preds = %80
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* @MSG_ERROR, align 4
  %159 = call i32 (i32, i8*, ...) @wpa_printf(i32 %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

160:                                              ; preds = %154
  %161 = load i32, i32* @MSG_DEBUG, align 4
  %162 = call i32 (i32, i8*, ...) @wpa_printf(i32 %161, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  store i64 2, i64* %16, align 8
  br label %163

163:                                              ; preds = %183, %160
  %164 = load i64, i64* %16, align 8
  %165 = load i64, i64* %14, align 8
  %166 = icmp ult i64 %164, %165
  br i1 %166, label %167, label %186

167:                                              ; preds = %163
  %168 = load i32*, i32** %13, align 8
  %169 = load i64, i64* %16, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %167
  %174 = load i32, i32* @MSG_INFO, align 4
  %175 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  %176 = load i32, i32* @MSG_DEBUG, align 4
  %177 = load i32*, i32** %13, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i64, i64* %14, align 8
  %180 = sub i64 %179, 2
  %181 = call i32 @wpa_hexdump(i32 %176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32* %178, i64 %180)
  store i32 -1, i32* %6, align 4
  br label %685

182:                                              ; preds = %167
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %16, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %16, align 8
  br label %163

186:                                              ; preds = %163
  br label %672

187:                                              ; preds = %80
  %188 = load i32, i32* @MSG_DEBUG, align 4
  %189 = call i32 (i32, i8*, ...) @wpa_printf(i32 %188, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %190 = load i64, i64* %14, align 8
  %191 = load i32, i32* @EAP_SIM_NONCE_MT_LEN, align 4
  %192 = add nsw i32 2, %191
  %193 = sext i32 %192 to i64
  %194 = icmp ne i64 %190, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %187
  %196 = load i32, i32* @MSG_INFO, align 4
  %197 = call i32 (i32, i8*, ...) @wpa_printf(i32 %196, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

198:                                              ; preds = %187
  %199 = load i32*, i32** %13, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %202 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %201, i32 0, i32 7
  store i32* %200, i32** %202, align 8
  br label %672

203:                                              ; preds = %80
  %204 = load i32, i32* @MSG_DEBUG, align 4
  %205 = call i32 (i32, i8*, ...) @wpa_printf(i32 %204, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %206 = load i32, i32* @PERMANENT_ID, align 4
  %207 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %208 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %207, i32 0, i32 34
  store i32 %206, i32* %208, align 8
  br label %672

209:                                              ; preds = %80
  %210 = load i32, i32* @MSG_DEBUG, align 4
  %211 = call i32 (i32, i8*, ...) @wpa_printf(i32 %210, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %212 = load i64, i64* %14, align 8
  %213 = load i32, i32* @EAP_SIM_MAC_LEN, align 4
  %214 = add nsw i32 2, %213
  %215 = sext i32 %214 to i64
  %216 = icmp ne i64 %212, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %209
  %218 = load i32, i32* @MSG_INFO, align 4
  %219 = call i32 (i32, i8*, ...) @wpa_printf(i32 %218, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

220:                                              ; preds = %209
  %221 = load i32*, i32** %13, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  %223 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %224 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %223, i32 0, i32 8
  store i32* %222, i32** %224, align 8
  br label %672

225:                                              ; preds = %80
  %226 = load i64, i64* %14, align 8
  %227 = icmp ne i64 %226, 2
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load i32, i32* @MSG_INFO, align 4
  %230 = load i64, i64* %14, align 8
  %231 = call i32 (i32, i8*, ...) @wpa_printf(i32 %229, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i64 %230)
  store i32 -1, i32* %6, align 4
  br label %685

232:                                              ; preds = %225
  %233 = load i32*, i32** %13, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = mul nsw i32 %235, 256
  %237 = load i32*, i32** %13, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %236, %239
  %241 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %242 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load i32, i32* @MSG_DEBUG, align 4
  %244 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %245 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (i32, i8*, ...) @wpa_printf(i32 %243, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i32 %246)
  br label %672

248:                                              ; preds = %80
  %249 = load i32, i32* @MSG_DEBUG, align 4
  %250 = call i32 (i32, i8*, ...) @wpa_printf(i32 %249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %251 = load i32, i32* @ANY_ID, align 4
  %252 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %253 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %252, i32 0, i32 34
  store i32 %251, i32* %253, align 8
  br label %672

254:                                              ; preds = %80
  %255 = load i32, i32* @MSG_DEBUG, align 4
  %256 = call i32 (i32, i8*, ...) @wpa_printf(i32 %255, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %257 = load i32*, i32** %13, align 8
  %258 = call i8* @WPA_GET_BE16(i32* %257)
  %259 = ptrtoint i8* %258 to i64
  store i64 %259, i64* %15, align 8
  %260 = load i32*, i32** %13, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  store i32* %261, i32** %13, align 8
  %262 = load i64, i64* %14, align 8
  %263 = sub i64 %262, 2
  store i64 %263, i64* %14, align 8
  %264 = load i64, i64* %15, align 8
  %265 = load i64, i64* %14, align 8
  %266 = icmp ugt i64 %264, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %254
  %268 = load i32, i32* @MSG_INFO, align 4
  %269 = load i64, i64* %15, align 8
  %270 = load i64, i64* %14, align 8
  %271 = call i32 (i32, i8*, ...) @wpa_printf(i32 %268, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.23, i64 0, i64 0), i64 %269, i64 %270)
  store i32 -1, i32* %6, align 4
  br label %685

272:                                              ; preds = %254
  %273 = load i32*, i32** %13, align 8
  %274 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %275 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %274, i32 0, i32 9
  store i32* %273, i32** %275, align 8
  %276 = load i64, i64* %15, align 8
  %277 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %278 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %277, i32 0, i32 10
  store i64 %276, i64* %278, align 8
  br label %672

279:                                              ; preds = %80
  %280 = load i32, i32* %10, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i32, i32* @MSG_DEBUG, align 4
  %284 = call i32 (i32, i8*, ...) @wpa_printf(i32 %283, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

285:                                              ; preds = %279
  %286 = load i32*, i32** %13, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = mul nsw i32 %288, 256
  %290 = load i32*, i32** %13, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %289, %292
  %294 = sext i32 %293 to i64
  store i64 %294, i64* %17, align 8
  %295 = load i32, i32* @MSG_DEBUG, align 4
  %296 = call i32 (i32, i8*, ...) @wpa_printf(i32 %295, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0))
  %297 = load i64, i64* %17, align 8
  %298 = icmp ult i64 %297, 2
  br i1 %298, label %304, label %299

299:                                              ; preds = %285
  %300 = load i64, i64* %17, align 8
  %301 = load i64, i64* %14, align 8
  %302 = sub i64 %301, 2
  %303 = icmp ugt i64 %300, %302
  br i1 %303, label %304, label %309

304:                                              ; preds = %299, %285
  %305 = load i32, i32* @MSG_WARNING, align 4
  %306 = load i64, i64* %17, align 8
  %307 = load i64, i64* %14, align 8
  %308 = call i32 (i32, i8*, ...) @wpa_printf(i32 %305, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i64 0, i64 0), i64 %306, i64 %307)
  store i32 -1, i32* %6, align 4
  br label %685

309:                                              ; preds = %299
  %310 = load i32*, i32** %13, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 2
  %312 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %313 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %312, i32 0, i32 11
  store i32* %311, i32** %313, align 8
  %314 = load i64, i64* %17, align 8
  %315 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %316 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %315, i32 0, i32 12
  store i64 %314, i64* %316, align 8
  br label %672

317:                                              ; preds = %80
  %318 = load i32, i32* @MSG_DEBUG, align 4
  %319 = call i32 (i32, i8*, ...) @wpa_printf(i32 %318, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0))
  %320 = load i64, i64* %14, align 8
  %321 = icmp ne i64 %320, 2
  br i1 %321, label %322, label %326

322:                                              ; preds = %317
  %323 = load i32, i32* @MSG_INFO, align 4
  %324 = load i64, i64* %14, align 8
  %325 = call i32 (i32, i8*, ...) @wpa_printf(i32 %323, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i64 0, i64 0), i64 %324)
  store i32 -1, i32* %6, align 4
  br label %685

326:                                              ; preds = %317
  %327 = load i32*, i32** %13, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = mul nsw i32 %329, 256
  %331 = load i32*, i32** %13, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 1
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %330, %333
  %335 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %336 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %335, i32 0, i32 2
  store i32 %334, i32* %336, align 8
  %337 = load i32, i32* @MSG_DEBUG, align 4
  %338 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %339 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = call i32 (i32, i8*, ...) @wpa_printf(i32 %337, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i32 %340)
  br label %672

342:                                              ; preds = %80
  %343 = load i32, i32* @MSG_DEBUG, align 4
  %344 = call i32 (i32, i8*, ...) @wpa_printf(i32 %343, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0))
  %345 = load i32, i32* @FULLAUTH_ID, align 4
  %346 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %347 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %346, i32 0, i32 34
  store i32 %345, i32* %347, align 8
  br label %672

348:                                              ; preds = %80
  %349 = load i32, i32* %11, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %348
  %352 = load i32, i32* @MSG_ERROR, align 4
  %353 = call i32 (i32, i8*, ...) @wpa_printf(i32 %352, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

354:                                              ; preds = %348
  %355 = load i64, i64* %14, align 8
  %356 = icmp ne i64 %355, 2
  br i1 %356, label %357, label %361

357:                                              ; preds = %354
  %358 = load i32, i32* @MSG_INFO, align 4
  %359 = load i64, i64* %14, align 8
  %360 = call i32 (i32, i8*, ...) @wpa_printf(i32 %358, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i64 0, i64 0), i64 %359)
  store i32 -1, i32* %6, align 4
  br label %685

361:                                              ; preds = %354
  %362 = load i32*, i32** %13, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 0
  %364 = load i32, i32* %363, align 4
  %365 = mul nsw i32 %364, 256
  %366 = load i32*, i32** %13, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 1
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %365, %368
  %370 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %371 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %370, i32 0, i32 1
  store i32 %369, i32* %371, align 4
  %372 = load i32, i32* @MSG_DEBUG, align 4
  %373 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %374 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = call i32 (i32, i8*, ...) @wpa_printf(i32 %372, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i32 %375)
  br label %672

377:                                              ; preds = %80
  %378 = load i32, i32* %11, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %377
  %381 = load i32, i32* @MSG_ERROR, align 4
  %382 = call i32 (i32, i8*, ...) @wpa_printf(i32 %381, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

383:                                              ; preds = %377
  %384 = load i64, i64* %14, align 8
  %385 = icmp ne i64 %384, 2
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load i32, i32* @MSG_INFO, align 4
  %388 = load i64, i64* %14, align 8
  %389 = call i32 (i32, i8*, ...) @wpa_printf(i32 %387, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0), i64 %388)
  store i32 -1, i32* %6, align 4
  br label %685

390:                                              ; preds = %383
  %391 = load i32, i32* @MSG_DEBUG, align 4
  %392 = call i32 (i32, i8*, ...) @wpa_printf(i32 %391, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0))
  %393 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %394 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %393, i32 0, i32 13
  store i32 1, i32* %394, align 8
  br label %672

395:                                              ; preds = %80
  %396 = load i32, i32* %11, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %401, label %398

398:                                              ; preds = %395
  %399 = load i32, i32* @MSG_ERROR, align 4
  %400 = call i32 (i32, i8*, ...) @wpa_printf(i32 %399, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

401:                                              ; preds = %395
  %402 = load i32, i32* @MSG_DEBUG, align 4
  %403 = call i32 (i32, i8*, ...) @wpa_printf(i32 %402, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0))
  %404 = load i64, i64* %14, align 8
  %405 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %406 = add nsw i32 2, %405
  %407 = sext i32 %406 to i64
  %408 = icmp ne i64 %404, %407
  br i1 %408, label %409, label %413

409:                                              ; preds = %401
  %410 = load i32, i32* @MSG_INFO, align 4
  %411 = load i64, i64* %14, align 8
  %412 = call i32 (i32, i8*, ...) @wpa_printf(i32 %410, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.39, i64 0, i64 0), i64 %411)
  store i32 -1, i32* %6, align 4
  br label %685

413:                                              ; preds = %401
  %414 = load i32*, i32** %13, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 2
  %416 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %417 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %416, i32 0, i32 14
  store i32* %415, i32** %417, align 8
  br label %672

418:                                              ; preds = %80
  %419 = load i64, i64* %14, align 8
  %420 = icmp ne i64 %419, 2
  br i1 %420, label %421, label %425

421:                                              ; preds = %418
  %422 = load i32, i32* @MSG_INFO, align 4
  %423 = load i64, i64* %14, align 8
  %424 = call i32 (i32, i8*, ...) @wpa_printf(i32 %422, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.40, i64 0, i64 0), i64 %423)
  store i32 -1, i32* %6, align 4
  br label %685

425:                                              ; preds = %418
  %426 = load i32*, i32** %13, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 0
  %428 = load i32, i32* %427, align 4
  %429 = mul nsw i32 %428, 256
  %430 = load i32*, i32** %13, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 1
  %432 = load i32, i32* %431, align 4
  %433 = add nsw i32 %429, %432
  %434 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %435 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %434, i32 0, i32 3
  store i32 %433, i32* %435, align 4
  %436 = load i32, i32* @MSG_DEBUG, align 4
  %437 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %438 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 4
  %440 = call i32 (i32, i8*, ...) @wpa_printf(i32 %436, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i64 0, i64 0), i32 %439)
  br label %672

441:                                              ; preds = %80
  %442 = load i32, i32* @MSG_DEBUG, align 4
  %443 = call i32 (i32, i8*, ...) @wpa_printf(i32 %442, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0))
  %444 = load i64, i64* %14, align 8
  %445 = load i32, i32* @EAP_SIM_MAC_LEN, align 4
  %446 = add nsw i32 2, %445
  %447 = sext i32 %446 to i64
  %448 = icmp ne i64 %444, %447
  br i1 %448, label %449, label %453

449:                                              ; preds = %441
  %450 = load i32, i32* @MSG_INFO, align 4
  %451 = load i64, i64* %14, align 8
  %452 = call i32 (i32, i8*, ...) @wpa_printf(i32 %450, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i64 0, i64 0), i64 %451)
  store i32 -1, i32* %6, align 4
  br label %685

453:                                              ; preds = %441
  %454 = load i32*, i32** %13, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 2
  %456 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %457 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %456, i32 0, i32 15
  store i32* %455, i32** %457, align 8
  br label %672

458:                                              ; preds = %80
  %459 = load i32, i32* @MSG_DEBUG, align 4
  %460 = call i32 (i32, i8*, ...) @wpa_printf(i32 %459, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0))
  %461 = load i32*, i32** %13, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 2
  %463 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %464 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %463, i32 0, i32 16
  store i32* %462, i32** %464, align 8
  %465 = load i64, i64* %14, align 8
  %466 = sub i64 %465, 2
  %467 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %468 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %467, i32 0, i32 17
  store i64 %466, i64* %468, align 8
  %469 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %470 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %469, i32 0, i32 17
  %471 = load i64, i64* %470, align 8
  %472 = urem i64 %471, 16
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %480

474:                                              ; preds = %458
  %475 = load i32, i32* @MSG_INFO, align 4
  %476 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %477 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %476, i32 0, i32 17
  %478 = load i64, i64* %477, align 8
  %479 = call i32 (i32, i8*, ...) @wpa_printf(i32 %475, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0), i64 %478)
  store i32 -1, i32* %6, align 4
  br label %685

480:                                              ; preds = %458
  br label %672

481:                                              ; preds = %80
  %482 = load i32, i32* %11, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %487, label %484

484:                                              ; preds = %481
  %485 = load i32, i32* @MSG_ERROR, align 4
  %486 = call i32 (i32, i8*, ...) @wpa_printf(i32 %485, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

487:                                              ; preds = %481
  %488 = load i32, i32* @MSG_DEBUG, align 4
  %489 = call i32 (i32, i8*, ...) @wpa_printf(i32 %488, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i64 0, i64 0))
  %490 = load i32*, i32** %13, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 0
  %492 = load i32, i32* %491, align 4
  %493 = mul nsw i32 %492, 256
  %494 = load i32*, i32** %13, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 1
  %496 = load i32, i32* %495, align 4
  %497 = add nsw i32 %493, %496
  %498 = sext i32 %497 to i64
  store i64 %498, i64* %15, align 8
  %499 = load i64, i64* %15, align 8
  %500 = load i64, i64* %14, align 8
  %501 = sub i64 %500, 2
  %502 = icmp ugt i64 %499, %501
  br i1 %502, label %503, label %508

503:                                              ; preds = %487
  %504 = load i32, i32* @MSG_INFO, align 4
  %505 = load i64, i64* %15, align 8
  %506 = load i64, i64* %14, align 8
  %507 = call i32 (i32, i8*, ...) @wpa_printf(i32 %504, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.48, i64 0, i64 0), i64 %505, i64 %506)
  store i32 -1, i32* %6, align 4
  br label %685

508:                                              ; preds = %487
  %509 = load i32*, i32** %12, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 4
  %511 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %512 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %511, i32 0, i32 18
  store i32* %510, i32** %512, align 8
  %513 = load i64, i64* %15, align 8
  %514 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %515 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %514, i32 0, i32 19
  store i64 %513, i64* %515, align 8
  br label %672

516:                                              ; preds = %80
  %517 = load i32, i32* %11, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %516
  %520 = load i32, i32* @MSG_ERROR, align 4
  %521 = call i32 (i32, i8*, ...) @wpa_printf(i32 %520, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

522:                                              ; preds = %516
  %523 = load i32, i32* @MSG_DEBUG, align 4
  %524 = call i32 (i32, i8*, ...) @wpa_printf(i32 %523, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i64 0, i64 0))
  %525 = load i32*, i32** %13, align 8
  %526 = getelementptr inbounds i32, i32* %525, i64 0
  %527 = load i32, i32* %526, align 4
  %528 = mul nsw i32 %527, 256
  %529 = load i32*, i32** %13, align 8
  %530 = getelementptr inbounds i32, i32* %529, i64 1
  %531 = load i32, i32* %530, align 4
  %532 = add nsw i32 %528, %531
  %533 = sext i32 %532 to i64
  store i64 %533, i64* %15, align 8
  %534 = load i64, i64* %15, align 8
  %535 = load i64, i64* %14, align 8
  %536 = sub i64 %535, 2
  %537 = icmp ugt i64 %534, %536
  br i1 %537, label %538, label %543

538:                                              ; preds = %522
  %539 = load i32, i32* @MSG_INFO, align 4
  %540 = load i64, i64* %15, align 8
  %541 = load i64, i64* %14, align 8
  %542 = call i32 (i32, i8*, ...) @wpa_printf(i32 %539, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.51, i64 0, i64 0), i64 %540, i64 %541)
  store i32 -1, i32* %6, align 4
  br label %685

543:                                              ; preds = %522
  %544 = load i32*, i32** %12, align 8
  %545 = getelementptr inbounds i32, i32* %544, i64 4
  %546 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %547 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %546, i32 0, i32 20
  store i32* %545, i32** %547, align 8
  %548 = load i64, i64* %15, align 8
  %549 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %550 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %549, i32 0, i32 21
  store i64 %548, i64* %550, align 8
  br label %672

551:                                              ; preds = %80
  %552 = load i32, i32* @MSG_DEBUG, align 4
  %553 = call i32 (i32, i8*, ...) @wpa_printf(i32 %552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0))
  %554 = load i32*, i32** %13, align 8
  %555 = call i8* @WPA_GET_BE16(i32* %554)
  %556 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %557 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %556, i32 0, i32 33
  store i8* %555, i8** %557, align 8
  %558 = load i32*, i32** %13, align 8
  %559 = getelementptr inbounds i32, i32* %558, i64 2
  store i32* %559, i32** %13, align 8
  %560 = load i64, i64* %14, align 8
  %561 = sub i64 %560, 2
  store i64 %561, i64* %14, align 8
  %562 = load i32, i32* %10, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %572

564:                                              ; preds = %551
  %565 = load i64, i64* %14, align 8
  %566 = load i64, i64* @EAP_AKA_MIN_RES_LEN, align 8
  %567 = icmp ult i64 %565, %566
  br i1 %567, label %572, label %568

568:                                              ; preds = %564
  %569 = load i64, i64* %14, align 8
  %570 = load i64, i64* @EAP_AKA_MAX_RES_LEN, align 8
  %571 = icmp ugt i64 %569, %570
  br i1 %571, label %572, label %576

572:                                              ; preds = %568, %564, %551
  %573 = load i32, i32* @MSG_INFO, align 4
  %574 = load i64, i64* %14, align 8
  %575 = call i32 (i32, i8*, ...) @wpa_printf(i32 %573, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i64 0, i64 0), i64 %574)
  store i32 -1, i32* %6, align 4
  br label %685

576:                                              ; preds = %568
  %577 = load i32*, i32** %13, align 8
  %578 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %579 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %578, i32 0, i32 22
  store i32* %577, i32** %579, align 8
  %580 = load i64, i64* %14, align 8
  %581 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %582 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %581, i32 0, i32 23
  store i64 %580, i64* %582, align 8
  br label %672

583:                                              ; preds = %80
  %584 = load i32, i32* @MSG_DEBUG, align 4
  %585 = call i32 (i32, i8*, ...) @wpa_printf(i32 %584, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0))
  %586 = load i32, i32* %10, align 4
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %591, label %588

588:                                              ; preds = %583
  %589 = load i32, i32* @MSG_DEBUG, align 4
  %590 = call i32 (i32, i8*, ...) @wpa_printf(i32 %589, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

591:                                              ; preds = %583
  %592 = load i64, i64* %14, align 8
  %593 = load i64, i64* @EAP_AKA_AUTS_LEN, align 8
  %594 = icmp ne i64 %592, %593
  br i1 %594, label %595, label %599

595:                                              ; preds = %591
  %596 = load i32, i32* @MSG_INFO, align 4
  %597 = load i64, i64* %14, align 8
  %598 = call i32 (i32, i8*, ...) @wpa_printf(i32 %596, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.56, i64 0, i64 0), i64 %597)
  store i32 -1, i32* %6, align 4
  br label %685

599:                                              ; preds = %591
  %600 = load i32*, i32** %13, align 8
  %601 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %602 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %601, i32 0, i32 24
  store i32* %600, i32** %602, align 8
  br label %672

603:                                              ; preds = %80
  %604 = load i32, i32* @MSG_DEBUG, align 4
  %605 = call i32 (i32, i8*, ...) @wpa_printf(i32 %604, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i64 0, i64 0))
  %606 = load i32, i32* %10, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %611, label %608

608:                                              ; preds = %603
  %609 = load i32, i32* @MSG_DEBUG, align 4
  %610 = call i32 (i32, i8*, ...) @wpa_printf(i32 %609, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

611:                                              ; preds = %603
  %612 = load i32*, i32** %13, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 2
  store i32* %613, i32** %13, align 8
  %614 = load i64, i64* %14, align 8
  %615 = sub i64 %614, 2
  store i64 %615, i64* %14, align 8
  %616 = load i64, i64* %14, align 8
  %617 = icmp ne i64 %616, 0
  br i1 %617, label %618, label %630

618:                                              ; preds = %611
  %619 = load i64, i64* %14, align 8
  %620 = load i64, i64* @EAP_AKA_CHECKCODE_LEN, align 8
  %621 = icmp ne i64 %619, %620
  br i1 %621, label %622, label %630

622:                                              ; preds = %618
  %623 = load i64, i64* %14, align 8
  %624 = load i64, i64* @EAP_AKA_PRIME_CHECKCODE_LEN, align 8
  %625 = icmp ne i64 %623, %624
  br i1 %625, label %626, label %630

626:                                              ; preds = %622
  %627 = load i32, i32* @MSG_INFO, align 4
  %628 = load i64, i64* %14, align 8
  %629 = call i32 (i32, i8*, ...) @wpa_printf(i32 %627, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i64 0, i64 0), i64 %628)
  store i32 -1, i32* %6, align 4
  br label %685

630:                                              ; preds = %622, %618, %611
  %631 = load i32*, i32** %13, align 8
  %632 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %633 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %632, i32 0, i32 25
  store i32* %631, i32** %633, align 8
  %634 = load i64, i64* %14, align 8
  %635 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %636 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %635, i32 0, i32 26
  store i64 %634, i64* %636, align 8
  br label %672

637:                                              ; preds = %80
  %638 = load i32, i32* %11, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %643

640:                                              ; preds = %637
  %641 = load i32, i32* @MSG_ERROR, align 4
  %642 = call i32 (i32, i8*, ...) @wpa_printf(i32 %641, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.60, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %685

643:                                              ; preds = %637
  %644 = load i64, i64* %14, align 8
  %645 = icmp ne i64 %644, 2
  br i1 %645, label %646, label %650

646:                                              ; preds = %643
  %647 = load i32, i32* @MSG_INFO, align 4
  %648 = load i64, i64* %14, align 8
  %649 = call i32 (i32, i8*, ...) @wpa_printf(i32 %647, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.61, i64 0, i64 0), i64 %648)
  store i32 -1, i32* %6, align 4
  br label %685

650:                                              ; preds = %643
  %651 = load i32, i32* @MSG_DEBUG, align 4
  %652 = call i32 (i32, i8*, ...) @wpa_printf(i32 %651, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0))
  %653 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %654 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %653, i32 0, i32 27
  store i32 1, i32* %654, align 8
  br label %672

655:                                              ; preds = %80
  %656 = load i32*, i32** %12, align 8
  %657 = getelementptr inbounds i32, i32* %656, i64 0
  %658 = load i32, i32* %657, align 4
  %659 = icmp slt i32 %658, 128
  br i1 %659, label %660, label %666

660:                                              ; preds = %655
  %661 = load i32, i32* @MSG_INFO, align 4
  %662 = load i32*, i32** %12, align 8
  %663 = getelementptr inbounds i32, i32* %662, i64 0
  %664 = load i32, i32* %663, align 4
  %665 = call i32 (i32, i8*, ...) @wpa_printf(i32 %661, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.63, i64 0, i64 0), i32 %664)
  store i32 -1, i32* %6, align 4
  br label %685

666:                                              ; preds = %655
  %667 = load i32, i32* @MSG_DEBUG, align 4
  %668 = load i32*, i32** %12, align 8
  %669 = getelementptr inbounds i32, i32* %668, i64 0
  %670 = load i32, i32* %669, align 4
  %671 = call i32 (i32, i8*, ...) @wpa_printf(i32 %667, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.64, i64 0, i64 0), i32 %670)
  br label %672

672:                                              ; preds = %666, %650, %630, %599, %576, %543, %508, %480, %453, %425, %413, %390, %361, %342, %326, %309, %272, %248, %232, %220, %203, %198, %186, %150, %121
  %673 = load i32*, i32** %12, align 8
  %674 = getelementptr inbounds i32, i32* %673, i64 1
  %675 = load i32, i32* %674, align 4
  %676 = mul nsw i32 %675, 4
  %677 = load i32*, i32** %12, align 8
  %678 = sext i32 %676 to i64
  %679 = getelementptr inbounds i32, i32* %677, i64 %678
  store i32* %679, i32** %12, align 8
  br label %32

680:                                              ; preds = %32
  %681 = load i32, i32* @MSG_DEBUG, align 4
  %682 = load i32, i32* %10, align 4
  %683 = load i32, i32* %11, align 4
  %684 = call i32 (i32, i8*, ...) @wpa_printf(i32 %681, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.65, i64 0, i64 0), i32 %682, i32 %683)
  store i32 0, i32* %6, align 4
  br label %685

685:                                              ; preds = %680, %660, %646, %640, %626, %608, %595, %588, %572, %538, %519, %503, %484, %474, %449, %421, %409, %398, %386, %380, %357, %351, %322, %304, %282, %267, %228, %217, %195, %173, %157, %146, %135, %117, %77, %63, %41
  %686 = load i32, i32* %6, align 4
  ret i32 %686
}

declare dso_local i32 @os_memset(%struct.eap_sim_attrs*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i8* @WPA_GET_BE16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

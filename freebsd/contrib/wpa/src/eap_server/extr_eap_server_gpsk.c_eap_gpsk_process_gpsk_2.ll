; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gpsk.c_eap_gpsk_process_gpsk_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gpsk.c_eap_gpsk_process_gpsk_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, %struct.eap_gpsk_csuite*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.eap_gpsk_data = type { i64, i32, i32, i64, i8*, i32, i32, i32, %struct.eap_gpsk_csuite*, i32*, %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite*, i32, i32, i32, i32, %struct.eap_gpsk_csuite* }
%struct.eap_gpsk_csuite = type { %struct.eap_gpsk_csuite*, i32 }

@EAP_GPSK_MAX_MIC_LEN = common dso_local global i32 0, align 4
@GPSK_1 = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EAP-GPSK: Received Response/GPSK-2\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"EAP-GPSK: Too short message for ID_Peer length\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"EAP-GPSK: Too short message for ID_Peer\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"EAP-GPSK: Not enough memory to store %d-octet ID_Peer\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"EAP-GPSK: ID_Peer\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"EAP-GPSK: Too short message for ID_Server length\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"EAP-GPSK: Too short message for ID_Server\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"EAP-GPSK: ID_Server in GPSK-1 and GPSK-2 did not match\00", align 1
@EAP_GPSK_RAND_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"EAP-GPSK: Too short message for RAND_Peer\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"EAP-GPSK: RAND_Peer\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"EAP-GPSK: Too short message for RAND_Server\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"EAP-GPSK: RAND_Server in GPSK-1 and GPSK-2 did not match\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"EAP-GPSK: RAND_Server in GPSK-1\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"EAP-GPSK: RAND_Server in GPSK-2\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"EAP-GPSK: Too short message for CSuite_List length\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"EAP-GPSK: Too short message for CSuite_List\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"EAP-GPSK: CSuite_List in GPSK-1 and GPSK-2 did not match\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"EAP-GPSK: Too short message for CSuite_Sel\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"EAP-GPSK: Peer selected unsupported ciphersuite %d:%d\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"EAP-GPSK: CSuite_Sel %d:%d\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"EAP-GPSK: Too short message for PD_Payload_1 length\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"EAP-GPSK: Too short message for PD_Payload_1\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"EAP-GPSK: PD_Payload_1\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [50 x i8] c"EAP-GPSK: No PSK/password configured for the user\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"EAP-GPSK: Failed to derive keys\00", align 1
@EAP_TYPE_GPSK = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [38 x i8] c"EAP-GPSK: Failed to derive Session-Id\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"EAP-GPSK: Derived Session-Id\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"EAP-GPSK: Message too short for MIC (left=%lu miclen=%lu)\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"EAP-GPSK: Failed to compute MIC\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"EAP-GPSK: Incorrect MIC in GPSK-2\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"EAP-GPSK: Received MIC\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"EAP-GPSK: Computed MIC\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"EAP-GPSK: Ignored %lu bytes of extra data in the end of GPSK-2\00", align 1
@GPSK_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_gpsk_data*, %struct.eap_gpsk_csuite*, i64)* @eap_gpsk_process_gpsk_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_gpsk_process_gpsk_2(%struct.eap_sm* %0, %struct.eap_gpsk_data* %1, %struct.eap_gpsk_csuite* %2, i64 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_gpsk_data*, align 8
  %7 = alloca %struct.eap_gpsk_csuite*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.eap_gpsk_csuite*, align 8
  %10 = alloca %struct.eap_gpsk_csuite*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.eap_gpsk_csuite*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_gpsk_data* %1, %struct.eap_gpsk_data** %6, align 8
  store %struct.eap_gpsk_csuite* %2, %struct.eap_gpsk_csuite** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load i32, i32* @EAP_GPSK_MAX_MIC_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca %struct.eap_gpsk_csuite, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %23 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GPSK_1, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 1, i32* %17, align 4
  br label %658

28:                                               ; preds = %4
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %7, align 8
  store %struct.eap_gpsk_csuite* %31, %struct.eap_gpsk_csuite** %9, align 8
  %32 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %32, i64 %33
  store %struct.eap_gpsk_csuite* %34, %struct.eap_gpsk_csuite** %10, align 8
  %35 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %36 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %37 = ptrtoint %struct.eap_gpsk_csuite* %35 to i64
  %38 = ptrtoint %struct.eap_gpsk_csuite* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 16
  %41 = icmp slt i64 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %46 = load i32, i32* @FAILURE, align 4
  %47 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %45, i32 %46)
  store i32 1, i32* %17, align 4
  br label %658

48:                                               ; preds = %28
  %49 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %50 = call i8* @WPA_GET_BE16(%struct.eap_gpsk_csuite* %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %53 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %52, i64 2
  store %struct.eap_gpsk_csuite* %53, %struct.eap_gpsk_csuite** %9, align 8
  %54 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %55 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %56 = ptrtoint %struct.eap_gpsk_csuite* %54 to i64
  %57 = ptrtoint %struct.eap_gpsk_csuite* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 16
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %48
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %67 = load i32, i32* @FAILURE, align 4
  %68 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %66, i32 %67)
  store i32 1, i32* %17, align 4
  br label %658

69:                                               ; preds = %48
  %70 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %71 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %70, i32 0, i32 9
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @os_free(i32* %72)
  %74 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32* @os_memdup(%struct.eap_gpsk_csuite* %74, i32 %75)
  %77 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %78 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %77, i32 0, i32 9
  store i32* %76, i32** %78, align 8
  %79 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %80 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %79, i32 0, i32 9
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %69
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  store i32 1, i32* %17, align 4
  br label %658

87:                                               ; preds = %69
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %90 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %93 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %92, i32 0, i32 9
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %96 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @wpa_hexdump_ascii(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %94, i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %100, i64 %101
  store %struct.eap_gpsk_csuite* %102, %struct.eap_gpsk_csuite** %9, align 8
  %103 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %104 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %105 = ptrtoint %struct.eap_gpsk_csuite* %103 to i64
  %106 = ptrtoint %struct.eap_gpsk_csuite* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 16
  %109 = icmp slt i64 %108, 2
  br i1 %109, label %110, label %116

110:                                              ; preds = %87
  %111 = load i32, i32* @MSG_DEBUG, align 4
  %112 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %113 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %114 = load i32, i32* @FAILURE, align 4
  %115 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %113, i32 %114)
  store i32 1, i32* %17, align 4
  br label %658

116:                                              ; preds = %87
  %117 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %118 = call i8* @WPA_GET_BE16(%struct.eap_gpsk_csuite* %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %11, align 4
  %120 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %121 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %120, i64 2
  store %struct.eap_gpsk_csuite* %121, %struct.eap_gpsk_csuite** %9, align 8
  %122 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %123 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %124 = ptrtoint %struct.eap_gpsk_csuite* %122 to i64
  %125 = ptrtoint %struct.eap_gpsk_csuite* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 16
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 %127, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %116
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = call i32 (i32, i8*, ...) @wpa_printf(i32 %132, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %134 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %135 = load i32, i32* @FAILURE, align 4
  %136 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %134, i32 %135)
  store i32 1, i32* %17, align 4
  br label %658

137:                                              ; preds = %116
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %140 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %138, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %137
  %144 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %145 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %146 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %145, i32 0, i32 1
  %147 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i64 @os_memcmp(%struct.eap_gpsk_csuite* %144, %struct.eap_gpsk_csuite* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %143, %137
  %152 = load i32, i32* @MSG_DEBUG, align 4
  %153 = call i32 (i32, i8*, ...) @wpa_printf(i32 %152, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %154 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %155 = load i32, i32* @FAILURE, align 4
  %156 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %154, i32 %155)
  store i32 1, i32* %17, align 4
  br label %658

157:                                              ; preds = %143
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %159, i64 %160
  store %struct.eap_gpsk_csuite* %161, %struct.eap_gpsk_csuite** %9, align 8
  %162 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %163 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %164 = ptrtoint %struct.eap_gpsk_csuite* %162 to i64
  %165 = ptrtoint %struct.eap_gpsk_csuite* %163 to i64
  %166 = sub i64 %164, %165
  %167 = sdiv exact i64 %166, 16
  %168 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp slt i64 %167, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %157
  %172 = load i32, i32* @MSG_DEBUG, align 4
  %173 = call i32 (i32, i8*, ...) @wpa_printf(i32 %172, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %174 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %175 = load i32, i32* @FAILURE, align 4
  %176 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %174, i32 %175)
  store i32 1, i32* %17, align 4
  br label %658

177:                                              ; preds = %157
  %178 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %179 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %178, i32 0, i32 11
  %180 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %179, align 8
  %181 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %182 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %183 = call i32 @os_memcpy(%struct.eap_gpsk_csuite* %180, %struct.eap_gpsk_csuite* %181, i32 %182)
  %184 = load i32, i32* @MSG_DEBUG, align 4
  %185 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %186 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %185, i32 0, i32 11
  %187 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %186, align 8
  %188 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %189 = sext i32 %188 to i64
  %190 = call i32 @wpa_hexdump(i32 %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), %struct.eap_gpsk_csuite* %187, i64 %189)
  %191 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %192 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %192, i64 %193
  store %struct.eap_gpsk_csuite* %194, %struct.eap_gpsk_csuite** %9, align 8
  %195 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %196 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %197 = ptrtoint %struct.eap_gpsk_csuite* %195 to i64
  %198 = ptrtoint %struct.eap_gpsk_csuite* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sdiv exact i64 %199, 16
  %201 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %202 = sext i32 %201 to i64
  %203 = icmp slt i64 %200, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %177
  %205 = load i32, i32* @MSG_DEBUG, align 4
  %206 = call i32 (i32, i8*, ...) @wpa_printf(i32 %205, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  %207 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %208 = load i32, i32* @FAILURE, align 4
  %209 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %207, i32 %208)
  store i32 1, i32* %17, align 4
  br label %658

210:                                              ; preds = %177
  %211 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %212 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %211, i32 0, i32 10
  %213 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %212, align 8
  %214 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %215 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %216 = call i64 @os_memcmp(%struct.eap_gpsk_csuite* %213, %struct.eap_gpsk_csuite* %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %236

218:                                              ; preds = %210
  %219 = load i32, i32* @MSG_DEBUG, align 4
  %220 = call i32 (i32, i8*, ...) @wpa_printf(i32 %219, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0))
  %221 = load i32, i32* @MSG_DEBUG, align 4
  %222 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %223 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %222, i32 0, i32 10
  %224 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %223, align 8
  %225 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %226 = sext i32 %225 to i64
  %227 = call i32 @wpa_hexdump(i32 %221, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), %struct.eap_gpsk_csuite* %224, i64 %226)
  %228 = load i32, i32* @MSG_DEBUG, align 4
  %229 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %230 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %231 = sext i32 %230 to i64
  %232 = call i32 @wpa_hexdump(i32 %228, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), %struct.eap_gpsk_csuite* %229, i64 %231)
  %233 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %234 = load i32, i32* @FAILURE, align 4
  %235 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %233, i32 %234)
  store i32 1, i32* %17, align 4
  br label %658

236:                                              ; preds = %210
  %237 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %238 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %238, i64 %239
  store %struct.eap_gpsk_csuite* %240, %struct.eap_gpsk_csuite** %9, align 8
  %241 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %242 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %243 = ptrtoint %struct.eap_gpsk_csuite* %241 to i64
  %244 = ptrtoint %struct.eap_gpsk_csuite* %242 to i64
  %245 = sub i64 %243, %244
  %246 = sdiv exact i64 %245, 16
  %247 = icmp slt i64 %246, 2
  br i1 %247, label %248, label %254

248:                                              ; preds = %236
  %249 = load i32, i32* @MSG_DEBUG, align 4
  %250 = call i32 (i32, i8*, ...) @wpa_printf(i32 %249, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  %251 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %252 = load i32, i32* @FAILURE, align 4
  %253 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %251, i32 %252)
  store i32 1, i32* %17, align 4
  br label %658

254:                                              ; preds = %236
  %255 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %256 = call i8* @WPA_GET_BE16(%struct.eap_gpsk_csuite* %255)
  %257 = ptrtoint i8* %256 to i32
  store i32 %257, i32* %11, align 4
  %258 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %259 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %258, i64 2
  store %struct.eap_gpsk_csuite* %259, %struct.eap_gpsk_csuite** %9, align 8
  %260 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %261 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %262 = ptrtoint %struct.eap_gpsk_csuite* %260 to i64
  %263 = ptrtoint %struct.eap_gpsk_csuite* %261 to i64
  %264 = sub i64 %262, %263
  %265 = sdiv exact i64 %264, 16
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = icmp slt i64 %265, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %254
  %270 = load i32, i32* @MSG_DEBUG, align 4
  %271 = call i32 (i32, i8*, ...) @wpa_printf(i32 %270, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  %272 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %273 = load i32, i32* @FAILURE, align 4
  %274 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %272, i32 %273)
  store i32 1, i32* %17, align 4
  br label %658

275:                                              ; preds = %254
  %276 = load i32, i32* %11, align 4
  %277 = sext i32 %276 to i64
  %278 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %279 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = mul i64 %281, 16
  %283 = icmp ne i64 %277, %282
  br i1 %283, label %292, label %284

284:                                              ; preds = %275
  %285 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %286 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %287 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %286, i32 0, i32 16
  %288 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %287, align 8
  %289 = load i32, i32* %11, align 4
  %290 = call i64 @os_memcmp(%struct.eap_gpsk_csuite* %285, %struct.eap_gpsk_csuite* %288, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %284, %275
  %293 = load i32, i32* @MSG_DEBUG, align 4
  %294 = call i32 (i32, i8*, ...) @wpa_printf(i32 %293, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0))
  %295 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %296 = load i32, i32* @FAILURE, align 4
  %297 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %295, i32 %296)
  store i32 1, i32* %17, align 4
  br label %658

298:                                              ; preds = %284
  %299 = load i32, i32* %11, align 4
  %300 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %301 = sext i32 %299 to i64
  %302 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %300, i64 %301
  store %struct.eap_gpsk_csuite* %302, %struct.eap_gpsk_csuite** %9, align 8
  %303 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %304 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %305 = ptrtoint %struct.eap_gpsk_csuite* %303 to i64
  %306 = ptrtoint %struct.eap_gpsk_csuite* %304 to i64
  %307 = sub i64 %305, %306
  %308 = sdiv exact i64 %307, 16
  %309 = icmp slt i64 %308, 16
  br i1 %309, label %310, label %316

310:                                              ; preds = %298
  %311 = load i32, i32* @MSG_DEBUG, align 4
  %312 = call i32 (i32, i8*, ...) @wpa_printf(i32 %311, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0))
  %313 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %314 = load i32, i32* @FAILURE, align 4
  %315 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %313, i32 %314)
  store i32 1, i32* %17, align 4
  br label %658

316:                                              ; preds = %298
  %317 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  store %struct.eap_gpsk_csuite* %317, %struct.eap_gpsk_csuite** %12, align 8
  store i64 0, i64* %13, align 8
  br label %318

318:                                              ; preds = %336, %316
  %319 = load i64, i64* %13, align 8
  %320 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %321 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = icmp ult i64 %319, %323
  br i1 %324, label %325, label %339

325:                                              ; preds = %318
  %326 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %12, align 8
  %327 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %328 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %327, i32 0, i32 16
  %329 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %328, align 8
  %330 = load i64, i64* %13, align 8
  %331 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %329, i64 %330
  %332 = call i64 @os_memcmp(%struct.eap_gpsk_csuite* %326, %struct.eap_gpsk_csuite* %331, i32 16)
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %325
  br label %339

335:                                              ; preds = %325
  br label %336

336:                                              ; preds = %335
  %337 = load i64, i64* %13, align 8
  %338 = add i64 %337, 1
  store i64 %338, i64* %13, align 8
  br label %318

339:                                              ; preds = %334, %318
  %340 = load i64, i64* %13, align 8
  %341 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %342 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = sext i32 %343 to i64
  %345 = icmp eq i64 %340, %344
  br i1 %345, label %346, label %360

346:                                              ; preds = %339
  %347 = load i32, i32* @MSG_DEBUG, align 4
  %348 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %12, align 8
  %349 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @WPA_GET_BE32(i32 %350)
  %352 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %12, align 8
  %353 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %352, i32 0, i32 0
  %354 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %353, align 8
  %355 = call i8* @WPA_GET_BE16(%struct.eap_gpsk_csuite* %354)
  %356 = call i32 (i32, i8*, ...) @wpa_printf(i32 %347, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i32 %351, i8* %355)
  %357 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %358 = load i32, i32* @FAILURE, align 4
  %359 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %357, i32 %358)
  store i32 1, i32* %17, align 4
  br label %658

360:                                              ; preds = %339
  %361 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %12, align 8
  %362 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @WPA_GET_BE32(i32 %363)
  %365 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %366 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %365, i32 0, i32 5
  store i32 %364, i32* %366, align 8
  %367 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %12, align 8
  %368 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %367, i32 0, i32 0
  %369 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %368, align 8
  %370 = call i8* @WPA_GET_BE16(%struct.eap_gpsk_csuite* %369)
  %371 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %372 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %371, i32 0, i32 4
  store i8* %370, i8** %372, align 8
  %373 = load i32, i32* @MSG_DEBUG, align 4
  %374 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %375 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %378 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %377, i32 0, i32 4
  %379 = load i8*, i8** %378, align 8
  %380 = call i32 (i32, i8*, ...) @wpa_printf(i32 %373, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 %376, i8* %379)
  %381 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %382 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %381, i64 16
  store %struct.eap_gpsk_csuite* %382, %struct.eap_gpsk_csuite** %9, align 8
  %383 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %384 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %385 = ptrtoint %struct.eap_gpsk_csuite* %383 to i64
  %386 = ptrtoint %struct.eap_gpsk_csuite* %384 to i64
  %387 = sub i64 %385, %386
  %388 = sdiv exact i64 %387, 16
  %389 = icmp slt i64 %388, 2
  br i1 %389, label %390, label %396

390:                                              ; preds = %360
  %391 = load i32, i32* @MSG_DEBUG, align 4
  %392 = call i32 (i32, i8*, ...) @wpa_printf(i32 %391, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i64 0, i64 0))
  %393 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %394 = load i32, i32* @FAILURE, align 4
  %395 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %393, i32 %394)
  store i32 1, i32* %17, align 4
  br label %658

396:                                              ; preds = %360
  %397 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %398 = call i8* @WPA_GET_BE16(%struct.eap_gpsk_csuite* %397)
  %399 = ptrtoint i8* %398 to i32
  store i32 %399, i32* %11, align 4
  %400 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %401 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %400, i64 2
  store %struct.eap_gpsk_csuite* %401, %struct.eap_gpsk_csuite** %9, align 8
  %402 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %403 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %404 = ptrtoint %struct.eap_gpsk_csuite* %402 to i64
  %405 = ptrtoint %struct.eap_gpsk_csuite* %403 to i64
  %406 = sub i64 %404, %405
  %407 = sdiv exact i64 %406, 16
  %408 = load i32, i32* %11, align 4
  %409 = sext i32 %408 to i64
  %410 = icmp slt i64 %407, %409
  br i1 %410, label %411, label %417

411:                                              ; preds = %396
  %412 = load i32, i32* @MSG_DEBUG, align 4
  %413 = call i32 (i32, i8*, ...) @wpa_printf(i32 %412, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0))
  %414 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %415 = load i32, i32* @FAILURE, align 4
  %416 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %414, i32 %415)
  store i32 1, i32* %17, align 4
  br label %658

417:                                              ; preds = %396
  %418 = load i32, i32* @MSG_DEBUG, align 4
  %419 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %420 = load i32, i32* %11, align 4
  %421 = sext i32 %420 to i64
  %422 = call i32 @wpa_hexdump(i32 %418, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), %struct.eap_gpsk_csuite* %419, i64 %421)
  %423 = load i32, i32* %11, align 4
  %424 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %425 = sext i32 %423 to i64
  %426 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %424, i64 %425
  store %struct.eap_gpsk_csuite* %426, %struct.eap_gpsk_csuite** %9, align 8
  %427 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %428 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %427, i32 0, i32 2
  %429 = load %struct.TYPE_2__*, %struct.TYPE_2__** %428, align 8
  %430 = icmp eq %struct.TYPE_2__* %429, null
  br i1 %430, label %438, label %431

431:                                              ; preds = %417
  %432 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %433 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %432, i32 0, i32 2
  %434 = load %struct.TYPE_2__*, %struct.TYPE_2__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %434, i32 0, i32 1
  %436 = load i32*, i32** %435, align 8
  %437 = icmp eq i32* %436, null
  br i1 %437, label %438, label %444

438:                                              ; preds = %431, %417
  %439 = load i32, i32* @MSG_INFO, align 4
  %440 = call i32 (i32, i8*, ...) @wpa_printf(i32 %439, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0))
  %441 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %442 = load i32, i32* @FAILURE, align 4
  %443 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %441, i32 %442)
  store i32 1, i32* %17, align 4
  br label %658

444:                                              ; preds = %431
  %445 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %446 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %445, i32 0, i32 2
  %447 = load %struct.TYPE_2__*, %struct.TYPE_2__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %447, i32 0, i32 1
  %449 = load i32*, i32** %448, align 8
  %450 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %451 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %450, i32 0, i32 2
  %452 = load %struct.TYPE_2__*, %struct.TYPE_2__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %456 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %455, i32 0, i32 5
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %459 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %458, i32 0, i32 4
  %460 = load i8*, i8** %459, align 8
  %461 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %462 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %461, i32 0, i32 11
  %463 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %462, align 8
  %464 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %465 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %464, i32 0, i32 10
  %466 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %465, align 8
  %467 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %468 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %467, i32 0, i32 9
  %469 = load i32*, i32** %468, align 8
  %470 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %471 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %474 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %473, i32 0, i32 1
  %475 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %474, align 8
  %476 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %477 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %480 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %479, i32 0, i32 15
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %483 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %482, i32 0, i32 14
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %486 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %485, i32 0, i32 7
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %489 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %488, i32 0, i32 6
  %490 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %491 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %490, i32 0, i32 13
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %494 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %493, i32 0, i32 12
  %495 = call i64 @eap_gpsk_derive_keys(i32* %449, i32 %454, i32 %457, i8* %460, %struct.eap_gpsk_csuite* %463, %struct.eap_gpsk_csuite* %466, i32* %469, i32 %472, %struct.eap_gpsk_csuite* %475, i32 %478, i32 %481, i32 %484, i32 %487, i32* %489, i32 %492, i32* %494)
  %496 = icmp slt i64 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %444
  %498 = load i32, i32* @MSG_DEBUG, align 4
  %499 = call i32 (i32, i8*, ...) @wpa_printf(i32 %498, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0))
  %500 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %501 = load i32, i32* @FAILURE, align 4
  %502 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %500, i32 %501)
  store i32 1, i32* %17, align 4
  br label %658

503:                                              ; preds = %444
  %504 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %505 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %504, i32 0, i32 2
  %506 = load %struct.TYPE_2__*, %struct.TYPE_2__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %506, i32 0, i32 1
  %508 = load i32*, i32** %507, align 8
  %509 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %510 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %509, i32 0, i32 2
  %511 = load %struct.TYPE_2__*, %struct.TYPE_2__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %515 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %514, i32 0, i32 5
  %516 = load i32, i32* %515, align 8
  %517 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %518 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %517, i32 0, i32 4
  %519 = load i8*, i8** %518, align 8
  %520 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %521 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %520, i32 0, i32 11
  %522 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %521, align 8
  %523 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %524 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %523, i32 0, i32 10
  %525 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %524, align 8
  %526 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %527 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %526, i32 0, i32 9
  %528 = load i32*, i32** %527, align 8
  %529 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %530 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 8
  %532 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %533 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %532, i32 0, i32 1
  %534 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %533, align 8
  %535 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %536 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = load i32, i32* @EAP_TYPE_GPSK, align 4
  %539 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %540 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %539, i32 0, i32 8
  %541 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %540, align 8
  %542 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %543 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %542, i32 0, i32 3
  %544 = call i64 @eap_gpsk_derive_session_id(i32* %508, i32 %513, i32 %516, i8* %519, %struct.eap_gpsk_csuite* %522, %struct.eap_gpsk_csuite* %525, i32* %528, i32 %531, %struct.eap_gpsk_csuite* %534, i32 %537, i32 %538, %struct.eap_gpsk_csuite* %541, i64* %543)
  %545 = icmp slt i64 %544, 0
  br i1 %545, label %546, label %552

546:                                              ; preds = %503
  %547 = load i32, i32* @MSG_DEBUG, align 4
  %548 = call i32 (i32, i8*, ...) @wpa_printf(i32 %547, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0))
  %549 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %550 = load i32, i32* @FAILURE, align 4
  %551 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %549, i32 %550)
  store i32 1, i32* %17, align 4
  br label %658

552:                                              ; preds = %503
  %553 = load i32, i32* @MSG_DEBUG, align 4
  %554 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %555 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %554, i32 0, i32 8
  %556 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %555, align 8
  %557 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %558 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %557, i32 0, i32 3
  %559 = load i64, i64* %558, align 8
  %560 = call i32 @wpa_hexdump(i32 %553, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), %struct.eap_gpsk_csuite* %556, i64 %559)
  %561 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %562 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %561, i32 0, i32 5
  %563 = load i32, i32* %562, align 8
  %564 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %565 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %564, i32 0, i32 4
  %566 = load i8*, i8** %565, align 8
  %567 = call i64 @eap_gpsk_mic_len(i32 %563, i8* %566)
  store i64 %567, i64* %14, align 8
  %568 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %569 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %570 = ptrtoint %struct.eap_gpsk_csuite* %568 to i64
  %571 = ptrtoint %struct.eap_gpsk_csuite* %569 to i64
  %572 = sub i64 %570, %571
  %573 = sdiv exact i64 %572, 16
  %574 = load i64, i64* %14, align 8
  %575 = trunc i64 %574 to i32
  %576 = sext i32 %575 to i64
  %577 = icmp slt i64 %573, %576
  br i1 %577, label %578, label %591

578:                                              ; preds = %552
  %579 = load i32, i32* @MSG_DEBUG, align 4
  %580 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %581 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %582 = ptrtoint %struct.eap_gpsk_csuite* %580 to i64
  %583 = ptrtoint %struct.eap_gpsk_csuite* %581 to i64
  %584 = sub i64 %582, %583
  %585 = sdiv exact i64 %584, 16
  %586 = load i64, i64* %14, align 8
  %587 = call i32 (i32, i8*, ...) @wpa_printf(i32 %579, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.27, i64 0, i64 0), i64 %585, i64 %586)
  %588 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %589 = load i32, i32* @FAILURE, align 4
  %590 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %588, i32 %589)
  store i32 1, i32* %17, align 4
  br label %658

591:                                              ; preds = %552
  %592 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %593 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %592, i32 0, i32 7
  %594 = load i32, i32* %593, align 8
  %595 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %596 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %595, i32 0, i32 6
  %597 = load i32, i32* %596, align 4
  %598 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %599 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %598, i32 0, i32 5
  %600 = load i32, i32* %599, align 8
  %601 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %602 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %601, i32 0, i32 4
  %603 = load i8*, i8** %602, align 8
  %604 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %7, align 8
  %605 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %606 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %7, align 8
  %607 = ptrtoint %struct.eap_gpsk_csuite* %605 to i64
  %608 = ptrtoint %struct.eap_gpsk_csuite* %606 to i64
  %609 = sub i64 %607, %608
  %610 = sdiv exact i64 %609, 16
  %611 = trunc i64 %610 to i32
  %612 = call i64 @eap_gpsk_compute_mic(i32 %594, i32 %597, i32 %600, i8* %603, %struct.eap_gpsk_csuite* %604, i32 %611, %struct.eap_gpsk_csuite* %21)
  %613 = icmp slt i64 %612, 0
  br i1 %613, label %614, label %620

614:                                              ; preds = %591
  %615 = load i32, i32* @MSG_DEBUG, align 4
  %616 = call i32 (i32, i8*, ...) @wpa_printf(i32 %615, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i64 0, i64 0))
  %617 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %618 = load i32, i32* @FAILURE, align 4
  %619 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %617, i32 %618)
  store i32 1, i32* %17, align 4
  br label %658

620:                                              ; preds = %591
  %621 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %622 = load i64, i64* %14, align 8
  %623 = call i64 @os_memcmp_const(%struct.eap_gpsk_csuite* %21, %struct.eap_gpsk_csuite* %621, i64 %622)
  %624 = icmp ne i64 %623, 0
  br i1 %624, label %625, label %638

625:                                              ; preds = %620
  %626 = load i32, i32* @MSG_INFO, align 4
  %627 = call i32 (i32, i8*, ...) @wpa_printf(i32 %626, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0))
  %628 = load i32, i32* @MSG_DEBUG, align 4
  %629 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %630 = load i64, i64* %14, align 8
  %631 = call i32 @wpa_hexdump(i32 %628, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), %struct.eap_gpsk_csuite* %629, i64 %630)
  %632 = load i32, i32* @MSG_DEBUG, align 4
  %633 = load i64, i64* %14, align 8
  %634 = call i32 @wpa_hexdump(i32 %632, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), %struct.eap_gpsk_csuite* %21, i64 %633)
  %635 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %636 = load i32, i32* @FAILURE, align 4
  %637 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %635, i32 %636)
  store i32 1, i32* %17, align 4
  br label %658

638:                                              ; preds = %620
  %639 = load i64, i64* %14, align 8
  %640 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %641 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %640, i64 %639
  store %struct.eap_gpsk_csuite* %641, %struct.eap_gpsk_csuite** %9, align 8
  %642 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %643 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %644 = icmp ne %struct.eap_gpsk_csuite* %642, %643
  br i1 %644, label %645, label %654

645:                                              ; preds = %638
  %646 = load i32, i32* @MSG_DEBUG, align 4
  %647 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %648 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %9, align 8
  %649 = ptrtoint %struct.eap_gpsk_csuite* %647 to i64
  %650 = ptrtoint %struct.eap_gpsk_csuite* %648 to i64
  %651 = sub i64 %649, %650
  %652 = sdiv exact i64 %651, 16
  %653 = call i32 (i32, i8*, ...) @wpa_printf(i32 %646, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.32, i64 0, i64 0), i64 %652)
  br label %654

654:                                              ; preds = %645, %638
  %655 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %656 = load i32, i32* @GPSK_3, align 4
  %657 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %655, i32 %656)
  store i32 0, i32* %17, align 4
  br label %658

658:                                              ; preds = %654, %625, %614, %578, %546, %497, %438, %411, %390, %346, %310, %292, %269, %248, %218, %204, %171, %151, %131, %110, %83, %63, %42, %27
  %659 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %659)
  %660 = load i32, i32* %17, align 4
  switch i32 %660, label %662 [
    i32 0, label %661
    i32 1, label %661
  ]

661:                                              ; preds = %658, %658
  ret void

662:                                              ; preds = %658
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @eap_gpsk_state(%struct.eap_gpsk_data*, i32) #2

declare dso_local i8* @WPA_GET_BE16(%struct.eap_gpsk_csuite*) #2

declare dso_local i32 @os_free(i32*) #2

declare dso_local i32* @os_memdup(%struct.eap_gpsk_csuite*, i32) #2

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #2

declare dso_local i64 @os_memcmp(%struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite*, i32) #2

declare dso_local i32 @os_memcpy(%struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite*, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, %struct.eap_gpsk_csuite*, i64) #2

declare dso_local i32 @WPA_GET_BE32(i32) #2

declare dso_local i64 @eap_gpsk_derive_keys(i32*, i32, i32, i8*, %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite*, i32*, i32, %struct.eap_gpsk_csuite*, i32, i32, i32, i32, i32*, i32, i32*) #2

declare dso_local i64 @eap_gpsk_derive_session_id(i32*, i32, i32, i8*, %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite*, i32*, i32, %struct.eap_gpsk_csuite*, i32, i32, %struct.eap_gpsk_csuite*, i64*) #2

declare dso_local i64 @eap_gpsk_mic_len(i32, i8*) #2

declare dso_local i64 @eap_gpsk_compute_mic(i32, i32, i32, i8*, %struct.eap_gpsk_csuite*, i32, %struct.eap_gpsk_csuite*) #2

declare dso_local i64 @os_memcmp_const(%struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

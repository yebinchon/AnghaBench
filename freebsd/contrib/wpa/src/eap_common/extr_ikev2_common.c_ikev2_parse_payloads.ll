; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_parse_payloads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_parse_payloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_payloads = type { i64*, i32, i64*, i32, i64*, i32, i64*, i32, i64*, i32, i64*, i32, i64*, i32, i64*, i32, i64*, i32, i64 }
%struct.ikev2_payload_hdr = type { i64, i32, i32 }

@IKEV2_PAYLOAD_NO_NEXT_PAYLOAD = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"IKEV2: Processing payload %u\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"IKEV2:   Too short message for payload header (left=%ld)\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"IKEV2:   Invalid payload header length %d\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"IKEV2:   Next Payload: %u  Flags: 0x%x  Payload Length: %u\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"IKEV2:   Payload: Security Association\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"IKEV2:   Payload: Key Exchange\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"IKEV2:   Payload: IDi\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"IKEV2:   Payload: IDr\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"IKEV2:   Payload: Certificate\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"IKEV2:   Payload: Authentication\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"IKEV2:   Payload: Nonce\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"IKEV2:   Payload: Encrypted\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"IKEV2:   Payload: Notification\00", align 1
@IKEV2_PAYLOAD_FLAGS_CRITICAL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [69 x i8] c"IKEV2:   Unsupported critical payload %u - reject the entire message\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"IKEV2:   Skipped unsupported payload %u\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"IKEV2: Unexpected extra data after payloads\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ikev2_parse_payloads(%struct.ikev2_payloads* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ikev2_payloads*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ikev2_payload_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store %struct.ikev2_payloads* %0, %struct.ikev2_payloads** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %16 = call i32 @os_memset(%struct.ikev2_payloads* %15, i32 0, i32 152)
  br label %17

17:                                               ; preds = %203, %4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @IKEV2_PAYLOAD_NO_NEXT_PAYLOAD, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %208

21:                                               ; preds = %17
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i64*, i64** %9, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = icmp ult i64* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %216

29:                                               ; preds = %21
  %30 = load i64*, i64** %9, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = ptrtoint i64* %30 to i64
  %33 = ptrtoint i64* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %38, 16
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = load i64*, i64** %9, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = ptrtoint i64* %42 to i64
  %45 = ptrtoint i64* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 8
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  store i32 -1, i32* %5, align 4
  br label %216

49:                                               ; preds = %29
  %50 = load i64*, i64** %8, align 8
  %51 = bitcast i64* %50 to %struct.ikev2_payload_hdr*
  store %struct.ikev2_payload_hdr* %51, %struct.ikev2_payload_hdr** %10, align 8
  %52 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %10, align 8
  %53 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @WPA_GET_BE16(i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %57, 16
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59, %49
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  store i32 -1, i32* %5, align 4
  br label %216

67:                                               ; preds = %59
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %10, align 8
  %70 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %10, align 8
  %73 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %71, i32 %74, i32 %75)
  %77 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %10, align 8
  %78 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %77, i64 1
  %79 = bitcast %struct.ikev2_payload_hdr* %78 to i64*
  store i64* %79, i64** %14, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = sub i64 %81, 16
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %12, align 4
  %84 = load i64, i64* %7, align 8
  switch i64 %84, label %166 [
    i64 128, label %85
    i64 131, label %94
    i64 133, label %103
    i64 132, label %112
    i64 135, label %121
    i64 136, label %130
    i64 130, label %139
    i64 134, label %148
    i64 129, label %157
  ]

85:                                               ; preds = %67
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i64*, i64** %14, align 8
  %89 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %90 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %89, i32 0, i32 0
  store i64* %88, i64** %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %93 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  br label %182

94:                                               ; preds = %67
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i64*, i64** %14, align 8
  %98 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %99 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %98, i32 0, i32 2
  store i64* %97, i64** %99, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %102 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  br label %182

103:                                              ; preds = %67
  %104 = load i32, i32* @MSG_DEBUG, align 4
  %105 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i64*, i64** %14, align 8
  %107 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %108 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %107, i32 0, i32 4
  store i64* %106, i64** %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %111 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  br label %182

112:                                              ; preds = %67
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = call i32 (i32, i8*, ...) @wpa_printf(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %115 = load i64*, i64** %14, align 8
  %116 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %117 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %116, i32 0, i32 6
  store i64* %115, i64** %117, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %120 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 8
  br label %182

121:                                              ; preds = %67
  %122 = load i32, i32* @MSG_DEBUG, align 4
  %123 = call i32 (i32, i8*, ...) @wpa_printf(i32 %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %124 = load i64*, i64** %14, align 8
  %125 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %126 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %125, i32 0, i32 8
  store i64* %124, i64** %126, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %129 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %128, i32 0, i32 9
  store i32 %127, i32* %129, align 8
  br label %182

130:                                              ; preds = %67
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %133 = load i64*, i64** %14, align 8
  %134 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %135 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %134, i32 0, i32 10
  store i64* %133, i64** %135, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %138 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %137, i32 0, i32 11
  store i32 %136, i32* %138, align 8
  br label %182

139:                                              ; preds = %67
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %142 = load i64*, i64** %14, align 8
  %143 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %144 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %143, i32 0, i32 12
  store i64* %142, i64** %144, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %147 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %146, i32 0, i32 13
  store i32 %145, i32* %147, align 8
  br label %182

148:                                              ; preds = %67
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %151 = load i64*, i64** %14, align 8
  %152 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %153 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %152, i32 0, i32 14
  store i64* %151, i64** %153, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %156 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %155, i32 0, i32 15
  store i32 %154, i32* %156, align 8
  br label %182

157:                                              ; preds = %67
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = call i32 (i32, i8*, ...) @wpa_printf(i32 %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %160 = load i64*, i64** %14, align 8
  %161 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %162 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %161, i32 0, i32 16
  store i64* %160, i64** %162, align 8
  %163 = load i32, i32* %12, align 4
  %164 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %165 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %164, i32 0, i32 17
  store i32 %163, i32* %165, align 8
  br label %182

166:                                              ; preds = %67
  %167 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %10, align 8
  %168 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @IKEV2_PAYLOAD_FLAGS_CRITICAL, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load i32, i32* @MSG_INFO, align 4
  %175 = load i64, i64* %7, align 8
  %176 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i64 0, i64 0), i64 %175)
  store i32 -1, i32* %5, align 4
  br label %216

177:                                              ; preds = %166
  %178 = load i32, i32* @MSG_DEBUG, align 4
  %179 = load i64, i64* %7, align 8
  %180 = call i32 (i32, i8*, ...) @wpa_printf(i32 %178, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i64 %179)
  br label %181

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %181, %157, %148, %139, %130, %121, %112, %103, %94, %85
  %183 = load i64, i64* %7, align 8
  %184 = icmp eq i64 %183, 134
  br i1 %184, label %185, label %199

185:                                              ; preds = %182
  %186 = load i64*, i64** %8, align 8
  %187 = load i32, i32* %11, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64*, i64** %9, align 8
  %191 = icmp eq i64* %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %185
  %193 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %10, align 8
  %194 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %6, align 8
  %197 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %196, i32 0, i32 18
  store i64 %195, i64* %197, align 8
  %198 = load i64, i64* @IKEV2_PAYLOAD_NO_NEXT_PAYLOAD, align 8
  store i64 %198, i64* %7, align 8
  br label %203

199:                                              ; preds = %185, %182
  %200 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %10, align 8
  %201 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %7, align 8
  br label %203

203:                                              ; preds = %199, %192
  %204 = load i32, i32* %11, align 4
  %205 = load i64*, i64** %8, align 8
  %206 = zext i32 %204 to i64
  %207 = getelementptr inbounds i64, i64* %205, i64 %206
  store i64* %207, i64** %8, align 8
  br label %17

208:                                              ; preds = %17
  %209 = load i64*, i64** %8, align 8
  %210 = load i64*, i64** %9, align 8
  %211 = icmp ne i64* %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i32, i32* @MSG_INFO, align 4
  %214 = call i32 (i32, i8*, ...) @wpa_printf(i32 %213, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %216

215:                                              ; preds = %208
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %215, %212, %173, %63, %40, %28
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @os_memset(%struct.ikev2_payloads*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

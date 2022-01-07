; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_decode_mkpdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_decode_mkpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.ieee802_1x_mka_participant*, i64*, i64)* }
%struct.ieee802_1x_mka_participant = type { i8*, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee802_1x_kay = type { i8*, i32 }
%struct.ieee802_1x_mka_hdr = type { i32 }
%struct.ieee802_1x_kay_peer = type { i64, i64, i64 }

@FALSE = common dso_local global i8* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"KaY: Decode received MKPDU (ifname=%s)\00", align 1
@MKA_HDR_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"KaY: i_in_peerlist=%s is_in_live_peer=%s\00", align 1
@TRUE = common dso_local global i8* null, align 8
@DEFAULT_ICV_LEN = common dso_local global i64 0, align 8
@MKA_ICV_INDICATOR = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [164 x i8] c"KaY: MKA Peer Packet Body Length (%zu bytes) is less than the Parameter Set Header Length (%zu bytes) + the Parameter Set Body Length (%zu bytes) + %d bytes of ICV\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"KaY: Ignore duplicated body type %u\00", align 1
@mka_body_handler = common dso_local global %struct.TYPE_5__* null, align 8
@MKA_SAK_USE = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"KaY: Discarding Rx MKPDU: decode of parameter set type (%d) failed\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"KaY: The body type %d is not supported in this MKA version %d\00", align 1
@MKA_VERSION_ID = common dso_local global i32 0, align 4
@MKA_DISTRIBUTED_SAK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"KaY: Could not update mi\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"KaY: Selected a new random MI: %s\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"KaY: Discarding Rx MKPDU: Live Peer stopped sending SAK-USE\00", align 1
@MAX_MISSING_SAK_USE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [56 x i8] c"KaY: Discarding Rx MKPDU: Live Peer not sending SAK-USE\00", align 1
@MKA_LIFE_TIME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"KaY: No peer entry found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_kay*, i64*, i64)* @ieee802_1x_kay_decode_mkpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_kay_decode_mkpdu(%struct.ieee802_1x_kay* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802_1x_kay*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %9 = alloca %struct.ieee802_1x_mka_hdr*, align 8
  %10 = alloca %struct.ieee802_1x_kay_peer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca [256 x i8*], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.ieee802_1x_kay* %0, %struct.ieee802_1x_kay** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** %17, align 8
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %5, align 8
  %24 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %5, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @ieee802_1x_kay_mkpdu_sanity_check(%struct.ieee802_1x_kay* %27, i64* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %338

33:                                               ; preds = %3
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 4
  %36 = getelementptr inbounds i64, i64* %35, i64 4
  store i64* %36, i64** %15, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, 4
  %39 = sub i64 %38, 4
  store i64 %39, i64* %12, align 8
  %40 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %5, align 8
  %41 = load i64*, i64** %15, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call %struct.ieee802_1x_mka_participant* @ieee802_1x_mka_decode_basic_body(%struct.ieee802_1x_kay* %40, i64* %41, i64 %42)
  store %struct.ieee802_1x_mka_participant* %43, %struct.ieee802_1x_mka_participant** %8, align 8
  %44 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %45 = icmp ne %struct.ieee802_1x_mka_participant* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %338

47:                                               ; preds = %33
  %48 = load i64*, i64** %15, align 8
  %49 = bitcast i64* %48 to %struct.ieee802_1x_mka_hdr*
  store %struct.ieee802_1x_mka_hdr* %49, %struct.ieee802_1x_mka_hdr** %9, align 8
  %50 = load %struct.ieee802_1x_mka_hdr*, %struct.ieee802_1x_mka_hdr** %9, align 8
  %51 = call i32 @get_mka_param_body_len(%struct.ieee802_1x_mka_hdr* %50)
  %52 = call i64 @MKA_ALIGN_LENGTH(i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @MKA_HDR_LEN, align 8
  %56 = add i64 %54, %55
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %338

59:                                               ; preds = %47
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @MKA_HDR_LEN, align 8
  %62 = add i64 %60, %61
  %63 = load i64*, i64** %15, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 %62
  store i64* %64, i64** %15, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @MKA_HDR_LEN, align 8
  %67 = add i64 %65, %66
  %68 = load i64, i64* %12, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %12, align 8
  %70 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %71 = load i64*, i64** %15, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i8* @ieee802_1x_mka_i_in_peerlist(%struct.ieee802_1x_mka_participant* %70, i64* %71, i64 %72)
  store i8* %73, i8** %18, align 8
  %74 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %75 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %76 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @ieee802_1x_kay_is_in_live_peer(%struct.ieee802_1x_mka_participant* %74, i32 %78)
  store i8* %79, i8** %19, align 8
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = load i8*, i8** %18, align 8
  %82 = call i32 @yes_no(i8* %81)
  %83 = load i8*, i8** %19, align 8
  %84 = call i32 @yes_no(i8* %83)
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %84)
  %86 = load i8*, i8** %18, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %135

88:                                               ; preds = %59
  %89 = load i8*, i8** %19, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %135, label %91

91:                                               ; preds = %88
  %92 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %93 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %94 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @ieee802_1x_kay_is_in_potential_peer(%struct.ieee802_1x_mka_participant* %92, i32 %96)
  store i8* %97, i8** %20, align 8
  %98 = load i8*, i8** %20, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %91
  %101 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %102 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %103 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %107 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @be_to_host32(i32 %109)
  %111 = call i32 @ieee802_1x_kay_move_live_peer(%struct.ieee802_1x_mka_participant* %101, i32 %105, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %100
  store i32 -1, i32* %4, align 4
  br label %338

114:                                              ; preds = %100
  br label %130

115:                                              ; preds = %91
  %116 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %117 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %118 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %122 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @be_to_host32(i32 %124)
  %126 = call i32 @ieee802_1x_kay_create_live_peer(%struct.ieee802_1x_mka_participant* %116, i32 %120, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %115
  store i32 -1, i32* %4, align 4
  br label %338

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %114
  %131 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %132 = call i32 @ieee802_1x_kay_elect_key_server(%struct.ieee802_1x_mka_participant* %131)
  %133 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %134 = call i32 @ieee802_1x_kay_decide_macsec_use(%struct.ieee802_1x_mka_participant* %133)
  br label %135

135:                                              ; preds = %130, %88, %59
  store i32 0, i32* %14, align 4
  br label %136

136:                                              ; preds = %144, %135
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 256
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i8*, i8** @FALSE, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [256 x i8*], [256 x i8*]* %16, i64 0, i64 %142
  store i8* %140, i8** %143, align 8
  br label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %136

147:                                              ; preds = %136
  %148 = load i8*, i8** @TRUE, align 8
  %149 = getelementptr inbounds [256 x i8*], [256 x i8*]* %16, i64 0, i64 0
  store i8* %148, i8** %149, align 16
  br label %150

150:                                              ; preds = %235, %147
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* @MKA_HDR_LEN, align 8
  %153 = load i64, i64* @DEFAULT_ICV_LEN, align 8
  %154 = add i64 %152, %153
  %155 = icmp ugt i64 %151, %154
  br i1 %155, label %156, label %246

156:                                              ; preds = %150
  %157 = load i64*, i64** %15, align 8
  %158 = bitcast i64* %157 to %struct.ieee802_1x_mka_hdr*
  store %struct.ieee802_1x_mka_hdr* %158, %struct.ieee802_1x_mka_hdr** %9, align 8
  %159 = load %struct.ieee802_1x_mka_hdr*, %struct.ieee802_1x_mka_hdr** %9, align 8
  %160 = call i32 @get_mka_param_body_len(%struct.ieee802_1x_mka_hdr* %159)
  %161 = call i64 @MKA_ALIGN_LENGTH(i32 %160)
  store i64 %161, i64* %11, align 8
  %162 = load %struct.ieee802_1x_mka_hdr*, %struct.ieee802_1x_mka_hdr** %9, align 8
  %163 = call i64 @get_mka_param_body_type(%struct.ieee802_1x_mka_hdr* %162)
  store i64 %163, i64* %13, align 8
  %164 = load i64, i64* %13, align 8
  %165 = load i64, i64* @MKA_ICV_INDICATOR, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  store i32 0, i32* %4, align 4
  br label %338

168:                                              ; preds = %156
  %169 = load i64, i64* %12, align 8
  %170 = load i64, i64* @MKA_HDR_LEN, align 8
  %171 = load i64, i64* %11, align 8
  %172 = add i64 %170, %171
  %173 = load i64, i64* @DEFAULT_ICV_LEN, align 8
  %174 = add i64 %172, %173
  %175 = icmp ult i64 %169, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %168
  %177 = load i32, i32* @MSG_ERROR, align 4
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* @MKA_HDR_LEN, align 8
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* @DEFAULT_ICV_LEN, align 8
  %182 = call i32 (i32, i8*, ...) @wpa_printf(i32 %177, i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.2, i64 0, i64 0), i64 %178, i64 %179, i64 %180, i64 %181)
  store i32 -1, i32* %4, align 4
  br label %338

183:                                              ; preds = %168
  %184 = load i64, i64* %13, align 8
  %185 = getelementptr inbounds [256 x i8*], [256 x i8*]* %16, i64 0, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32, i32* @MSG_DEBUG, align 4
  %190 = load i64, i64* %13, align 8
  %191 = call i32 (i32, i8*, ...) @wpa_printf(i32 %189, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %190)
  br label %235

192:                                              ; preds = %183
  %193 = load i8*, i8** @TRUE, align 8
  %194 = load i64, i64* %13, align 8
  %195 = getelementptr inbounds [256 x i8*], [256 x i8*]* %16, i64 0, i64 %194
  store i8* %193, i8** %195, align 8
  %196 = load i64, i64* %13, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mka_body_handler, align 8
  %198 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %197)
  %199 = icmp ult i64 %196, %198
  br i1 %199, label %200, label %229

200:                                              ; preds = %192
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mka_body_handler, align 8
  %202 = load i64, i64* %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i64 (%struct.ieee802_1x_mka_participant*, i64*, i64)*, i64 (%struct.ieee802_1x_mka_participant*, i64*, i64)** %204, align 8
  %206 = icmp ne i64 (%struct.ieee802_1x_mka_participant*, i64*, i64)* %205, null
  br i1 %206, label %207, label %229

207:                                              ; preds = %200
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mka_body_handler, align 8
  %209 = load i64, i64* %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i64 (%struct.ieee802_1x_mka_participant*, i64*, i64)*, i64 (%struct.ieee802_1x_mka_participant*, i64*, i64)** %211, align 8
  %213 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %214 = load i64*, i64** %15, align 8
  %215 = load i64, i64* %12, align 8
  %216 = call i64 %212(%struct.ieee802_1x_mka_participant* %213, i64* %214, i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %207
  %219 = load i64, i64* %13, align 8
  %220 = load i64, i64* @MKA_SAK_USE, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = load i32, i32* @MSG_INFO, align 4
  %224 = load i64, i64* %13, align 8
  %225 = call i32 (i32, i8*, ...) @wpa_printf(i32 %223, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i64 %224)
  store i32 -1, i32* %4, align 4
  br label %338

226:                                              ; preds = %218
  %227 = load i8*, i8** @TRUE, align 8
  store i8* %227, i8** %17, align 8
  br label %228

228:                                              ; preds = %226, %207
  br label %234

229:                                              ; preds = %200, %192
  %230 = load i32, i32* @MSG_ERROR, align 4
  %231 = load i64, i64* %13, align 8
  %232 = load i32, i32* @MKA_VERSION_ID, align 4
  %233 = call i32 (i32, i8*, ...) @wpa_printf(i32 %230, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i64 %231, i32 %232)
  br label %234

234:                                              ; preds = %229, %228
  br label %235

235:                                              ; preds = %234, %188
  %236 = load i64, i64* %11, align 8
  %237 = load i64, i64* @MKA_HDR_LEN, align 8
  %238 = add i64 %236, %237
  %239 = load i64*, i64** %15, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 %238
  store i64* %240, i64** %15, align 8
  %241 = load i64, i64* %11, align 8
  %242 = load i64, i64* @MKA_HDR_LEN, align 8
  %243 = add i64 %241, %242
  %244 = load i64, i64* %12, align 8
  %245 = sub i64 %244, %243
  store i64 %245, i64* %12, align 8
  br label %150

246:                                              ; preds = %150
  %247 = load i8*, i8** %17, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %272

249:                                              ; preds = %246
  %250 = load i64, i64* @MKA_DISTRIBUTED_SAK, align 8
  %251 = getelementptr inbounds [256 x i8*], [256 x i8*]* %16, i64 0, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %272, label %254

254:                                              ; preds = %249
  %255 = load i32, i32* @MSG_INFO, align 4
  %256 = load i64, i64* @MKA_SAK_USE, align 8
  %257 = call i32 (i32, i8*, ...) @wpa_printf(i32 %255, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i64 %256)
  %258 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %259 = call i32 @reset_participant_mi(%struct.ieee802_1x_mka_participant* %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %254
  %262 = load i32, i32* @MSG_DEBUG, align 4
  %263 = call i32 (i32, i8*, ...) @wpa_printf(i32 %262, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %271

264:                                              ; preds = %254
  %265 = load i32, i32* @MSG_DEBUG, align 4
  %266 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %267 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @mi_txt(i32 %268)
  %270 = call i32 (i32, i8*, ...) @wpa_printf(i32 %265, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %264, %261
  store i32 -1, i32* %4, align 4
  br label %338

272:                                              ; preds = %249, %246
  %273 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %274 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %275 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_live_peer(%struct.ieee802_1x_mka_participant* %273, i32 %277)
  store %struct.ieee802_1x_kay_peer* %278, %struct.ieee802_1x_kay_peer** %10, align 8
  %279 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %280 = icmp ne %struct.ieee802_1x_kay_peer* %279, null
  br i1 %280, label %281, label %316

281:                                              ; preds = %272
  %282 = load i64, i64* @MKA_SAK_USE, align 8
  %283 = getelementptr inbounds [256 x i8*], [256 x i8*]* %16, i64 0, i64 %282
  %284 = load i8*, i8** %283, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %305, label %286

286:                                              ; preds = %281
  %287 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %288 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %286
  %292 = load i32, i32* @MSG_INFO, align 4
  %293 = call i32 (i32, i8*, ...) @wpa_printf(i32 %292, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %338

294:                                              ; preds = %286
  %295 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %296 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %297, 1
  store i64 %298, i64* %296, align 8
  %299 = load i64, i64* @MAX_MISSING_SAK_USE, align 8
  %300 = icmp sgt i64 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %294
  %302 = load i32, i32* @MSG_INFO, align 4
  %303 = call i32 (i32, i8*, ...) @wpa_printf(i32 %302, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %338

304:                                              ; preds = %294
  br label %315

305:                                              ; preds = %281
  %306 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %307 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %306, i32 0, i32 0
  store i64 0, i64* %307, align 8
  %308 = call i64 @time(i32* null)
  %309 = load i32, i32* @MKA_LIFE_TIME, align 4
  %310 = sdiv i32 %309, 1000
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %308, %311
  %313 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %314 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %313, i32 0, i32 1
  store i64 %312, i64* %314, align 8
  br label %315

315:                                              ; preds = %305, %304
  br label %329

316:                                              ; preds = %272
  %317 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %318 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %319 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = call %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_peer(%struct.ieee802_1x_mka_participant* %317, i32 %321)
  store %struct.ieee802_1x_kay_peer* %322, %struct.ieee802_1x_kay_peer** %10, align 8
  %323 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %324 = icmp ne %struct.ieee802_1x_kay_peer* %323, null
  br i1 %324, label %328, label %325

325:                                              ; preds = %316
  %326 = load i32, i32* @MSG_DEBUG, align 4
  %327 = call i32 (i32, i8*, ...) @wpa_printf(i32 %326, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %338

328:                                              ; preds = %316
  br label %329

329:                                              ; preds = %328, %315
  %330 = load i8*, i8** @TRUE, align 8
  %331 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %5, align 8
  %332 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %331, i32 0, i32 0
  store i8* %330, i8** %332, align 8
  %333 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %334 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %333, i32 0, i32 1
  store i64 0, i64* %334, align 8
  %335 = load i8*, i8** @TRUE, align 8
  %336 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %337 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %336, i32 0, i32 0
  store i8* %335, i8** %337, align 8
  store i32 0, i32* %4, align 4
  br label %338

338:                                              ; preds = %329, %325, %301, %291, %271, %222, %176, %167, %128, %113, %58, %46, %32
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @ieee802_1x_kay_mkpdu_sanity_check(%struct.ieee802_1x_kay*, i64*, i64) #1

declare dso_local %struct.ieee802_1x_mka_participant* @ieee802_1x_mka_decode_basic_body(%struct.ieee802_1x_kay*, i64*, i64) #1

declare dso_local i64 @MKA_ALIGN_LENGTH(i32) #1

declare dso_local i32 @get_mka_param_body_len(%struct.ieee802_1x_mka_hdr*) #1

declare dso_local i8* @ieee802_1x_mka_i_in_peerlist(%struct.ieee802_1x_mka_participant*, i64*, i64) #1

declare dso_local i8* @ieee802_1x_kay_is_in_live_peer(%struct.ieee802_1x_mka_participant*, i32) #1

declare dso_local i32 @yes_no(i8*) #1

declare dso_local i8* @ieee802_1x_kay_is_in_potential_peer(%struct.ieee802_1x_mka_participant*, i32) #1

declare dso_local i32 @ieee802_1x_kay_move_live_peer(%struct.ieee802_1x_mka_participant*, i32, i32) #1

declare dso_local i32 @be_to_host32(i32) #1

declare dso_local i32 @ieee802_1x_kay_create_live_peer(%struct.ieee802_1x_mka_participant*, i32, i32) #1

declare dso_local i32 @ieee802_1x_kay_elect_key_server(%struct.ieee802_1x_mka_participant*) #1

declare dso_local i32 @ieee802_1x_kay_decide_macsec_use(%struct.ieee802_1x_mka_participant*) #1

declare dso_local i64 @get_mka_param_body_type(%struct.ieee802_1x_mka_hdr*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @reset_participant_mi(%struct.ieee802_1x_mka_participant*) #1

declare dso_local i32 @mi_txt(i32) #1

declare dso_local %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_live_peer(%struct.ieee802_1x_mka_participant*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_peer(%struct.ieee802_1x_mka_participant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

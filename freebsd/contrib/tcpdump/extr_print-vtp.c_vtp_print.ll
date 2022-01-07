; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-vtp.c_vtp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-vtp.c_vtp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.vtp_vlan_ = type { i32, i32, i32, i32, i32, i32 }

@VTP_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"VTPv%u, Message %s (0x%02x), length %u\00", align 1
@vtp_message_type_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown message type\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\0A\09Domain name: \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" [invalid MgmtD Len %d]\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c", %s: %u\00", align 1
@vtp_header_values = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"\0A\09  Config Rev %x, Updater %s\00", align 1
@VTP_UPDATE_TIMESTAMP_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c", Timestamp 0x%08x 0x%08x 0x%08x\00", align 1
@VTP_MD5_DIGEST_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c", MD5 digest: %08x%08x%08x%08x\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c", Config Rev %x\00", align 1
@VTP_VLAN_INFO_FIXED_PART_LEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [71 x i8] c"\0A\09VLAN info status %s, type %s, VLAN-id %u, MTU %u, SAID 0x%08x, Name \00", align 1
@vtp_vlan_status = common dso_local global i32 0, align 4
@vtp_vlan_type_values = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"\0A\09\09%s (0x%04x) TLV\00", align 1
@vtp_vlan_tlv_values = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c" (TLV goes past the end of the packet)\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c" (invalid TLV length %u != 1)\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c", %u\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c", %s (%u)\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@vtp_stp_type_values = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"SRB\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"SRT\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Backup\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Not backup\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"\0A\09\09  \00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"\0A\09Start value: %u\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"[|vtp]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtp_print(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vtp_vlan_*, align 8
  %14 = alloca %struct.vtp_vlan_, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @VTP_HEADER_LEN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %385

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VTP_HEADER_LEN, align 4
  %24 = call i32 @ND_TCHECK2(i32 %22, i32 %23)
  %25 = load i32*, i32** %12, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @vtp_message_type_values, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @tok2str(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_7__*
  %38 = call i32 @ND_PRINT(%struct.TYPE_7__* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %19
  br label %388

44:                                               ; preds = %19
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([16 x i8]* @.str.2 to %struct.TYPE_7__*))
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %53, 32
  br i1 %54, label %55, label %61

55:                                               ; preds = %52, %44
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.TYPE_7__*
  %60 = call i32 @ND_PRINT(%struct.TYPE_7__* %59)
  br label %388

61:                                               ; preds = %52
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @fn_printzp(%struct.TYPE_7__* %62, i32* %64, i32 %65, i32* null)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = load i32, i32* @vtp_header_values, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @tok2str(i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to %struct.TYPE_7__*
  %76 = call i32 @ND_PRINT(%struct.TYPE_7__* %75)
  %77 = load i32, i32* @VTP_HEADER_LEN, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %12, align 8
  %81 = load i32, i32* %7, align 4
  switch i32 %81, label %383 [
    i32 138, label %82
    i32 139, label %141
    i32 141, label %372
    i32 140, label %382
  ]

82:                                               ; preds = %61
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ND_TCHECK2(i32 %84, i32 8)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @EXTRACT_32BITS(i32* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = call i32 @ipaddr_string(%struct.TYPE_7__* %89, i32* %91)
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to %struct.TYPE_7__*
  %95 = call i32 @ND_PRINT(%struct.TYPE_7__* %94)
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  store i32* %97, i32** %12, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @VTP_UPDATE_TIMESTAMP_LEN, align 4
  %101 = call i32 @ND_TCHECK2(i32 %99, i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @EXTRACT_32BITS(i32* %103)
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  %107 = call i32 @EXTRACT_32BITS(i32* %106)
  %108 = load i32*, i32** %12, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 8
  %110 = call i32 @EXTRACT_32BITS(i32* %109)
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to %struct.TYPE_7__*
  %113 = call i32 @ND_PRINT(%struct.TYPE_7__* %112)
  %114 = load i32, i32* @VTP_UPDATE_TIMESTAMP_LEN, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %12, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @VTP_MD5_DIGEST_LEN, align 4
  %121 = call i32 @ND_TCHECK2(i32 %119, i32 %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @EXTRACT_32BITS(i32* %123)
  %125 = load i32*, i32** %12, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = call i32 @EXTRACT_32BITS(i32* %126)
  %128 = load i32*, i32** %12, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 8
  %130 = call i32 @EXTRACT_32BITS(i32* %129)
  %131 = load i32*, i32** %12, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 12
  %133 = call i32 @EXTRACT_32BITS(i32* %132)
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to %struct.TYPE_7__*
  %136 = call i32 @ND_PRINT(%struct.TYPE_7__* %135)
  %137 = load i32, i32* @VTP_MD5_DIGEST_LEN, align 4
  %138 = load i32*, i32** %12, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %12, align 8
  br label %384

141:                                              ; preds = %61
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @ND_TCHECK_32BITS(i32* %142)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = call i32 @EXTRACT_32BITS(i32* %145)
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to %struct.TYPE_7__*
  %149 = call i32 @ND_PRINT(%struct.TYPE_7__* %148)
  %150 = load i32*, i32** %12, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  store i32* %151, i32** %12, align 8
  br label %152

152:                                              ; preds = %370, %141
  %153 = load i32*, i32** %12, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = icmp ult i32* %153, %157
  br i1 %158, label %159, label %371

159:                                              ; preds = %152
  %160 = load i32*, i32** %12, align 8
  %161 = call i32 @ND_TCHECK_8BITS(i32* %160)
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %371

167:                                              ; preds = %159
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @ND_TCHECK2(i32 %169, i32 %170)
  %172 = load i32*, i32** %12, align 8
  %173 = bitcast i32* %172 to %struct.vtp_vlan_*
  store %struct.vtp_vlan_* %173, %struct.vtp_vlan_** %13, align 8
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @VTP_VLAN_INFO_FIXED_PART_LEN, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  br label %385

178:                                              ; preds = %167
  %179 = load %struct.vtp_vlan_*, %struct.vtp_vlan_** %13, align 8
  %180 = bitcast %struct.vtp_vlan_* %14 to i8*
  %181 = bitcast %struct.vtp_vlan_* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 4 %181, i64 24, i1 false)
  %182 = call i32 @ND_TCHECK(%struct.vtp_vlan_* byval(%struct.vtp_vlan_) align 8 %14)
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %184 = load i32, i32* @vtp_vlan_status, align 4
  %185 = load %struct.vtp_vlan_*, %struct.vtp_vlan_** %13, align 8
  %186 = getelementptr inbounds %struct.vtp_vlan_, %struct.vtp_vlan_* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @tok2str(i32 %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* @vtp_vlan_type_values, align 4
  %190 = load %struct.vtp_vlan_*, %struct.vtp_vlan_** %13, align 8
  %191 = getelementptr inbounds %struct.vtp_vlan_, %struct.vtp_vlan_* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @tok2str(i32 %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %192)
  %194 = load %struct.vtp_vlan_*, %struct.vtp_vlan_** %13, align 8
  %195 = getelementptr inbounds %struct.vtp_vlan_, %struct.vtp_vlan_* %194, i32 0, i32 2
  %196 = call i32 @EXTRACT_16BITS(i32* %195)
  %197 = load %struct.vtp_vlan_*, %struct.vtp_vlan_** %13, align 8
  %198 = getelementptr inbounds %struct.vtp_vlan_, %struct.vtp_vlan_* %197, i32 0, i32 3
  %199 = call i32 @EXTRACT_16BITS(i32* %198)
  %200 = load %struct.vtp_vlan_*, %struct.vtp_vlan_** %13, align 8
  %201 = getelementptr inbounds %struct.vtp_vlan_, %struct.vtp_vlan_* %200, i32 0, i32 4
  %202 = call i32 @EXTRACT_32BITS(i32* %201)
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to %struct.TYPE_7__*
  %205 = call i32 @ND_PRINT(%struct.TYPE_7__* %204)
  %206 = load i32, i32* @VTP_VLAN_INFO_FIXED_PART_LEN, align 4
  %207 = load i32, i32* %8, align 4
  %208 = sub nsw i32 %207, %206
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* @VTP_VLAN_INFO_FIXED_PART_LEN, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32* %212, i32** %12, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.vtp_vlan_*, %struct.vtp_vlan_** %13, align 8
  %215 = getelementptr inbounds %struct.vtp_vlan_, %struct.vtp_vlan_* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 3
  %218 = sdiv i32 %217, 4
  %219 = mul nsw i32 4, %218
  %220 = icmp slt i32 %213, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %178
  br label %385

222:                                              ; preds = %178
  %223 = load i32*, i32** %12, align 8
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.vtp_vlan_*, %struct.vtp_vlan_** %13, align 8
  %226 = getelementptr inbounds %struct.vtp_vlan_, %struct.vtp_vlan_* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @ND_TCHECK2(i32 %224, i32 %227)
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %230 = load i32*, i32** %12, align 8
  %231 = load %struct.vtp_vlan_*, %struct.vtp_vlan_** %13, align 8
  %232 = getelementptr inbounds %struct.vtp_vlan_, %struct.vtp_vlan_* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @fn_printzp(%struct.TYPE_7__* %229, i32* %230, i32 %233, i32* null)
  %235 = load %struct.vtp_vlan_*, %struct.vtp_vlan_** %13, align 8
  %236 = getelementptr inbounds %struct.vtp_vlan_, %struct.vtp_vlan_* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 3
  %239 = sdiv i32 %238, 4
  %240 = mul nsw i32 4, %239
  %241 = load i32, i32* %8, align 4
  %242 = sub nsw i32 %241, %240
  store i32 %242, i32* %8, align 4
  %243 = load %struct.vtp_vlan_*, %struct.vtp_vlan_** %13, align 8
  %244 = getelementptr inbounds %struct.vtp_vlan_, %struct.vtp_vlan_* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 3
  %247 = sdiv i32 %246, 4
  %248 = mul nsw i32 4, %247
  %249 = load i32*, i32** %12, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32* %251, i32** %12, align 8
  br label %252

252:                                              ; preds = %358, %222
  %253 = load i32, i32* %8, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %370

255:                                              ; preds = %252
  %256 = load i32, i32* %8, align 4
  %257 = icmp slt i32 %256, 2
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  br label %385

259:                                              ; preds = %255
  %260 = load i32*, i32** %12, align 8
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @ND_TCHECK2(i32 %261, i32 2)
  %263 = load i32*, i32** %12, align 8
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %7, align 4
  %265 = load i32*, i32** %12, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %9, align 4
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %269 = load i32, i32* @vtp_vlan_tlv_values, align 4
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @tok2str(i32 %269, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %270)
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = inttoptr i64 %273 to %struct.TYPE_7__*
  %275 = call i32 @ND_PRINT(%struct.TYPE_7__* %274)
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %9, align 4
  %278 = mul nsw i32 %277, 2
  %279 = add nsw i32 %278, 2
  %280 = icmp slt i32 %276, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %259
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %283 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([39 x i8]* @.str.12 to %struct.TYPE_7__*))
  br label %388

284:                                              ; preds = %259
  %285 = load i32*, i32** %12, align 8
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %9, align 4
  %288 = mul nsw i32 %287, 2
  %289 = add nsw i32 %288, 2
  %290 = call i32 @ND_TCHECK2(i32 %286, i32 %289)
  %291 = load i32, i32* %9, align 4
  %292 = icmp ne i32 %291, 1
  br i1 %292, label %293, label %299

293:                                              ; preds = %284
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = inttoptr i64 %296 to %struct.TYPE_7__*
  %298 = call i32 @ND_PRINT(%struct.TYPE_7__* %297)
  br label %388

299:                                              ; preds = %284
  %300 = load i32*, i32** %12, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 2
  %302 = call i32 @EXTRACT_16BITS(i32* %301)
  store i32 %302, i32* %10, align 4
  %303 = load i32, i32* %7, align 4
  switch i32 %303, label %350 [
    i32 130, label %304
    i32 133, label %310
    i32 129, label %320
    i32 135, label %329
    i32 136, label %339
    i32 131, label %349
    i32 132, label %349
    i32 134, label %349
    i32 128, label %349
    i32 137, label %349
  ]

304:                                              ; preds = %299
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %306 = load i32, i32* %10, align 4
  %307 = sext i32 %306 to i64
  %308 = inttoptr i64 %307 to %struct.TYPE_7__*
  %309 = call i32 @ND_PRINT(%struct.TYPE_7__* %308)
  br label %357

310:                                              ; preds = %299
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %312 = load i32, i32* %10, align 4
  %313 = icmp eq i32 %312, 1
  %314 = zext i1 %313 to i64
  %315 = select i1 %313, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0)
  %316 = load i32, i32* %10, align 4
  %317 = sext i32 %316 to i64
  %318 = inttoptr i64 %317 to %struct.TYPE_7__*
  %319 = call i32 @ND_PRINT(%struct.TYPE_7__* %318)
  br label %357

320:                                              ; preds = %299
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %322 = load i32, i32* @vtp_stp_type_values, align 4
  %323 = load i32, i32* %10, align 4
  %324 = call i32 @tok2str(i32 %322, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %323)
  %325 = load i32, i32* %10, align 4
  %326 = sext i32 %325 to i64
  %327 = inttoptr i64 %326 to %struct.TYPE_7__*
  %328 = call i32 @ND_PRINT(%struct.TYPE_7__* %327)
  br label %357

329:                                              ; preds = %299
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %331 = load i32, i32* %10, align 4
  %332 = icmp eq i32 %331, 1
  %333 = zext i1 %332 to i64
  %334 = select i1 %332, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)
  %335 = load i32, i32* %10, align 4
  %336 = sext i32 %335 to i64
  %337 = inttoptr i64 %336 to %struct.TYPE_7__*
  %338 = call i32 @ND_PRINT(%struct.TYPE_7__* %337)
  br label %357

339:                                              ; preds = %299
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %341 = load i32, i32* %10, align 4
  %342 = icmp eq i32 %341, 1
  %343 = zext i1 %342 to i64
  %344 = select i1 %342, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0)
  %345 = load i32, i32* %10, align 4
  %346 = sext i32 %345 to i64
  %347 = inttoptr i64 %346 to %struct.TYPE_7__*
  %348 = call i32 @ND_PRINT(%struct.TYPE_7__* %347)
  br label %357

349:                                              ; preds = %299, %299, %299, %299, %299
  br label %350

350:                                              ; preds = %299, %349
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %352 = load i32*, i32** %12, align 8
  %353 = load i32, i32* %9, align 4
  %354 = mul nsw i32 %353, 2
  %355 = add nsw i32 2, %354
  %356 = call i32 @print_unknown_data(%struct.TYPE_7__* %351, i32* %352, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 %355)
  br label %357

357:                                              ; preds = %350, %339, %329, %320, %310, %304
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %9, align 4
  %360 = mul nsw i32 %359, 2
  %361 = add nsw i32 2, %360
  %362 = load i32, i32* %8, align 4
  %363 = sub nsw i32 %362, %361
  store i32 %363, i32* %8, align 4
  %364 = load i32, i32* %9, align 4
  %365 = mul nsw i32 %364, 2
  %366 = add nsw i32 2, %365
  %367 = load i32*, i32** %12, align 8
  %368 = sext i32 %366 to i64
  %369 = getelementptr inbounds i32, i32* %367, i64 %368
  store i32* %369, i32** %12, align 8
  br label %252

370:                                              ; preds = %252
  br label %152

371:                                              ; preds = %166, %152
  br label %384

372:                                              ; preds = %61
  %373 = load i32*, i32** %12, align 8
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @ND_TCHECK2(i32 %374, i32 4)
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %377 = load i32*, i32** %12, align 8
  %378 = call i32 @EXTRACT_32BITS(i32* %377)
  %379 = sext i32 %378 to i64
  %380 = inttoptr i64 %379 to %struct.TYPE_7__*
  %381 = call i32 @ND_PRINT(%struct.TYPE_7__* %380)
  br label %384

382:                                              ; preds = %61
  br label %384

383:                                              ; preds = %61
  br label %384

384:                                              ; preds = %383, %382, %372, %371, %82
  br label %388

385:                                              ; preds = %258, %221, %177, %18
  %386 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %387 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([7 x i8]* @.str.24 to %struct.TYPE_7__*))
  br label %388

388:                                              ; preds = %385, %384, %293, %281, %55, %43
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @fn_printzp(%struct.TYPE_7__*, i32*, i32, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ND_TCHECK_32BITS(i32*) #1

declare dso_local i32 @ND_TCHECK_8BITS(i32*) #1

declare dso_local i32 @ND_TCHECK(%struct.vtp_vlan_* byval(%struct.vtp_vlan_) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_7__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

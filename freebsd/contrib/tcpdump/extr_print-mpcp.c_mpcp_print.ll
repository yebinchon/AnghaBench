; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-mpcp.c_mpcp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-mpcp.c_mpcp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%union.anon = type { %struct.mpcp_common_header_t* }
%struct.mpcp_common_header_t = type { i32*, i32 }
%struct.mpcp_grant_t = type { i32*, i32 }
%struct.mpcp_reg_req_t = type { i32, i32 }
%struct.mpcp_reg_t = type { i32*, i32, i32*, i32 }
%struct.mpcp_reg_ack_t = type { i32*, i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"MPCP, Opcode %s\00", align 1
@mpcp_opcode_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Unknown (%u)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c", Timestamp %u ticks\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c", length %u\00", align 1
@MPCP_GRANT_NUMBER_LEN = common dso_local global i32 0, align 4
@MPCP_GRANT_NUMBER_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"\0A\09Grant Numbers %u, Flags [ %s ]\00", align 1
@mpcp_grant_flag_values = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"\0A\09Grant #%u, Start-Time %u ticks, duration %u ticks\00", align 1
@MPCP_TIMESTAMP_DURATION_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"\0A\09Sync-Time %u ticks\00", align 1
@MPCP_REPORT_QUEUESETS_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"\0A\09Total Queue-Sets %u\00", align 1
@MPCP_REPORT_REPORTBITMAP_LEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"\0A\09  Queue-Set #%u, Report-Bitmap [ %s ]\00", align 1
@mpcp_report_bitmap_values = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\0A\09    Q%u Report, Duration %u ticks\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"\0A\09Flags [ %s ], Pending-Grants %u\00", align 1
@mpcp_reg_req_flag_values = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.14 = private unnamed_addr constant [79 x i8] c"\0A\09Assigned-Port %u, Flags [ %s ]\0A\09Sync-Time %u ticks, Echoed-Pending-Grants %u\00", align 1
@mpcp_reg_flag_values = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [67 x i8] c"\0A\09Echoed-Assigned-Port %u, Flags [ %s ]\0A\09Echoed-Sync-Time %u ticks\00", align 1
@mpcp_reg_ack_flag_values = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\0A\09[|MPCP]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpcp_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.mpcp_common_header_t*
  %19 = bitcast %union.anon* %7 to %struct.mpcp_common_header_t**
  store %struct.mpcp_common_header_t* %18, %struct.mpcp_common_header_t** %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ND_TCHECK2(i32 %21, i32 16)
  %23 = bitcast %union.anon* %7 to %struct.mpcp_common_header_t**
  %24 = load %struct.mpcp_common_header_t*, %struct.mpcp_common_header_t** %23, align 8
  %25 = getelementptr inbounds %struct.mpcp_common_header_t, %struct.mpcp_common_header_t* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @EXTRACT_16BITS(i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = load i32, i32* @mpcp_opcode_values, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @tok2str(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_5__*
  %34 = call i32 @ND_PRINT(%struct.TYPE_5__* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 132
  br i1 %36, label %37, label %47

37:                                               ; preds = %3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = bitcast %union.anon* %7 to %struct.mpcp_common_header_t**
  %40 = load %struct.mpcp_common_header_t*, %struct.mpcp_common_header_t** %39, align 8
  %41 = getelementptr inbounds %struct.mpcp_common_header_t, %struct.mpcp_common_header_t* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @EXTRACT_32BITS(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_5__*
  %46 = call i32 @ND_PRINT(%struct.TYPE_5__* %45)
  br label %47

47:                                               ; preds = %37, %3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.TYPE_5__*
  %52 = call i32 @ND_PRINT(%struct.TYPE_5__* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %286

58:                                               ; preds = %47
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 16
  store i32* %60, i32** %8, align 8
  %61 = load i32, i32* %9, align 4
  switch i32 %61, label %277 [
    i32 132, label %62
    i32 133, label %63
    i32 128, label %128
    i32 129, label %198
    i32 131, label %219
    i32 130, label %250
  ]

62:                                               ; preds = %58
  br label %282

63:                                               ; preds = %58
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MPCP_GRANT_NUMBER_LEN, align 4
  %67 = call i32 @ND_TCHECK2(i32 %65, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MPCP_GRANT_NUMBER_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %10, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @mpcp_grant_flag_values, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MPCP_GRANT_NUMBER_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = call i32 @bittok2str(i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.TYPE_5__*
  %83 = call i32 @ND_PRINT(%struct.TYPE_5__* %82)
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %8, align 8
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %114, %63
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %86
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ND_TCHECK2(i32 %92, i32 16)
  %94 = load i32*, i32** %8, align 8
  %95 = bitcast i32* %94 to %struct.mpcp_grant_t*
  %96 = bitcast %union.anon* %7 to %struct.mpcp_grant_t**
  store %struct.mpcp_grant_t* %95, %struct.mpcp_grant_t** %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = load i32, i32* %11, align 4
  %99 = bitcast %union.anon* %7 to %struct.mpcp_grant_t**
  %100 = load %struct.mpcp_grant_t*, %struct.mpcp_grant_t** %99, align 8
  %101 = getelementptr inbounds %struct.mpcp_grant_t, %struct.mpcp_grant_t* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @EXTRACT_32BITS(i32 %102)
  %104 = bitcast %union.anon* %7 to %struct.mpcp_grant_t**
  %105 = load %struct.mpcp_grant_t*, %struct.mpcp_grant_t** %104, align 8
  %106 = getelementptr inbounds %struct.mpcp_grant_t, %struct.mpcp_grant_t* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @EXTRACT_16BITS(i32* %107)
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to %struct.TYPE_5__*
  %111 = call i32 @ND_PRINT(%struct.TYPE_5__* %110)
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 16
  store i32* %113, i32** %8, align 8
  br label %114

114:                                              ; preds = %90
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %86

117:                                              ; preds = %86
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MPCP_TIMESTAMP_DURATION_LEN, align 4
  %121 = call i32 @ND_TCHECK2(i32 %119, i32 %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @EXTRACT_16BITS(i32* %123)
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to %struct.TYPE_5__*
  %127 = call i32 @ND_PRINT(%struct.TYPE_5__* %126)
  br label %282

128:                                              ; preds = %58
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MPCP_REPORT_QUEUESETS_LEN, align 4
  %132 = call i32 @ND_TCHECK2(i32 %130, i32 %131)
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* @MPCP_REPORT_QUEUESETS_LEN, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %8, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to %struct.TYPE_5__*
  %143 = call i32 @ND_PRINT(%struct.TYPE_5__* %142)
  store i32 1, i32* %13, align 4
  br label %144

144:                                              ; preds = %194, %128
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %197

148:                                              ; preds = %144
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @MPCP_REPORT_REPORTBITMAP_LEN, align 4
  %152 = call i32 @ND_TCHECK2(i32 %150, i32 %151)
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %14, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @mpcp_report_bitmap_values, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @bittok2str(i32 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %158)
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to %struct.TYPE_5__*
  %162 = call i32 @ND_PRINT(%struct.TYPE_5__* %161)
  %163 = load i32*, i32** %8, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %8, align 8
  store i32 1, i32* %15, align 4
  br label %165

165:                                              ; preds = %188, %148
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %193

168:                                              ; preds = %165
  %169 = load i32, i32* %14, align 4
  %170 = and i32 %169, 1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %168
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @MPCP_TIMESTAMP_DURATION_LEN, align 4
  %176 = call i32 @ND_TCHECK2(i32 %174, i32 %175)
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = load i32, i32* %15, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = call i32 @EXTRACT_16BITS(i32* %179)
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to %struct.TYPE_5__*
  %183 = call i32 @ND_PRINT(%struct.TYPE_5__* %182)
  %184 = load i32, i32* @MPCP_TIMESTAMP_DURATION_LEN, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %8, align 8
  br label %188

188:                                              ; preds = %172, %168
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %14, align 4
  %192 = ashr i32 %191, 1
  store i32 %192, i32* %14, align 4
  br label %165

193:                                              ; preds = %165
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %144

197:                                              ; preds = %144
  br label %282

198:                                              ; preds = %58
  %199 = load i32*, i32** %8, align 8
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ND_TCHECK2(i32 %200, i32 8)
  %202 = load i32*, i32** %8, align 8
  %203 = bitcast i32* %202 to %struct.mpcp_reg_req_t*
  %204 = bitcast %union.anon* %7 to %struct.mpcp_reg_req_t**
  store %struct.mpcp_reg_req_t* %203, %struct.mpcp_reg_req_t** %204, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %206 = load i32, i32* @mpcp_reg_req_flag_values, align 4
  %207 = bitcast %union.anon* %7 to %struct.mpcp_reg_req_t**
  %208 = load %struct.mpcp_reg_req_t*, %struct.mpcp_reg_req_t** %207, align 8
  %209 = getelementptr inbounds %struct.mpcp_reg_req_t, %struct.mpcp_reg_req_t* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @bittok2str(i32 %206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %210)
  %212 = bitcast %union.anon* %7 to %struct.mpcp_reg_req_t**
  %213 = load %struct.mpcp_reg_req_t*, %struct.mpcp_reg_req_t** %212, align 8
  %214 = getelementptr inbounds %struct.mpcp_reg_req_t, %struct.mpcp_reg_req_t* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = inttoptr i64 %216 to %struct.TYPE_5__*
  %218 = call i32 @ND_PRINT(%struct.TYPE_5__* %217)
  br label %282

219:                                              ; preds = %58
  %220 = load i32*, i32** %8, align 8
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @ND_TCHECK2(i32 %221, i32 32)
  %223 = load i32*, i32** %8, align 8
  %224 = bitcast i32* %223 to %struct.mpcp_reg_t*
  %225 = bitcast %union.anon* %7 to %struct.mpcp_reg_t**
  store %struct.mpcp_reg_t* %224, %struct.mpcp_reg_t** %225, align 8
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %227 = bitcast %union.anon* %7 to %struct.mpcp_reg_t**
  %228 = load %struct.mpcp_reg_t*, %struct.mpcp_reg_t** %227, align 8
  %229 = getelementptr inbounds %struct.mpcp_reg_t, %struct.mpcp_reg_t* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @EXTRACT_16BITS(i32* %230)
  %232 = load i32, i32* @mpcp_reg_flag_values, align 4
  %233 = bitcast %union.anon* %7 to %struct.mpcp_reg_t**
  %234 = load %struct.mpcp_reg_t*, %struct.mpcp_reg_t** %233, align 8
  %235 = getelementptr inbounds %struct.mpcp_reg_t, %struct.mpcp_reg_t* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @bittok2str(i32 %232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %236)
  %238 = bitcast %union.anon* %7 to %struct.mpcp_reg_t**
  %239 = load %struct.mpcp_reg_t*, %struct.mpcp_reg_t** %238, align 8
  %240 = getelementptr inbounds %struct.mpcp_reg_t, %struct.mpcp_reg_t* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @EXTRACT_16BITS(i32* %241)
  %243 = bitcast %union.anon* %7 to %struct.mpcp_reg_t**
  %244 = load %struct.mpcp_reg_t*, %struct.mpcp_reg_t** %243, align 8
  %245 = getelementptr inbounds %struct.mpcp_reg_t, %struct.mpcp_reg_t* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to %struct.TYPE_5__*
  %249 = call i32 @ND_PRINT(%struct.TYPE_5__* %248)
  br label %282

250:                                              ; preds = %58
  %251 = load i32*, i32** %8, align 8
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @ND_TCHECK2(i32 %252, i32 24)
  %254 = load i32*, i32** %8, align 8
  %255 = bitcast i32* %254 to %struct.mpcp_reg_ack_t*
  %256 = bitcast %union.anon* %7 to %struct.mpcp_reg_ack_t**
  store %struct.mpcp_reg_ack_t* %255, %struct.mpcp_reg_ack_t** %256, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %258 = bitcast %union.anon* %7 to %struct.mpcp_reg_ack_t**
  %259 = load %struct.mpcp_reg_ack_t*, %struct.mpcp_reg_ack_t** %258, align 8
  %260 = getelementptr inbounds %struct.mpcp_reg_ack_t, %struct.mpcp_reg_ack_t* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @EXTRACT_16BITS(i32* %261)
  %263 = load i32, i32* @mpcp_reg_ack_flag_values, align 4
  %264 = bitcast %union.anon* %7 to %struct.mpcp_reg_ack_t**
  %265 = load %struct.mpcp_reg_ack_t*, %struct.mpcp_reg_ack_t** %264, align 8
  %266 = getelementptr inbounds %struct.mpcp_reg_ack_t, %struct.mpcp_reg_ack_t* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @bittok2str(i32 %263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %267)
  %269 = bitcast %union.anon* %7 to %struct.mpcp_reg_ack_t**
  %270 = load %struct.mpcp_reg_ack_t*, %struct.mpcp_reg_ack_t** %269, align 8
  %271 = getelementptr inbounds %struct.mpcp_reg_ack_t, %struct.mpcp_reg_ack_t* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @EXTRACT_16BITS(i32* %272)
  %274 = sext i32 %273 to i64
  %275 = inttoptr i64 %274 to %struct.TYPE_5__*
  %276 = call i32 @ND_PRINT(%struct.TYPE_5__* %275)
  br label %282

277:                                              ; preds = %58
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %279 = load i32*, i32** %5, align 8
  %280 = load i32, i32* %6, align 4
  %281 = call i32 @print_unknown_data(%struct.TYPE_5__* %278, i32* %279, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %280)
  br label %282

282:                                              ; preds = %277, %250, %219, %198, %197, %117, %62
  br label %286

283:                                              ; No predecessors!
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %285 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([10 x i8]* @.str.17 to %struct.TYPE_5__*))
  br label %286

286:                                              ; preds = %283, %282, %57
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_5__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

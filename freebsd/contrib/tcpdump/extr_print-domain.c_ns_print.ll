; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-domain.c_ns_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-domain.c_ns_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%d%s%s%s%s%s%s\00", align 1
@ns_ops = common dso_local global i32* null, align 8
@ns_resp = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" [%dq]\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" q:\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" %d/%d/%d\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" ns:\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" ar:\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%d%s%s%s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c" [b2&3=0x%x]\00", align 1
@IQUERY = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c" [%da]\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" [%dn]\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c" [%dau]\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"[|domain]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ns_print(%struct.TYPE_18__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = bitcast %struct.TYPE_19__* %16 to i8*
  %21 = bitcast %struct.TYPE_19__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 4 %21, i64 20, i1 false)
  %22 = call i32 @ND_TCHECK(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %16)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = call i32 @EXTRACT_16BITS(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 4
  %28 = call i32 @EXTRACT_16BITS(i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 3
  %31 = call i32 @EXTRACT_16BITS(i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = call i32 @EXTRACT_16BITS(i32* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %36 = call i64 @DNS_QR(%struct.TYPE_19__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %280

38:                                               ; preds = %4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = call i32 @EXTRACT_16BITS(i32* %41)
  %43 = load i32*, i32** @ns_ops, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %45 = call i64 @DNS_OPCODE(%struct.TYPE_19__* %44)
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @ns_resp, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %50 = call i64 @DNS_RCODE(%struct.TYPE_19__* %49)
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %54 = call i64 @DNS_AA(%struct.TYPE_19__* %53)
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = call i64 @DNS_RA(%struct.TYPE_19__* %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %64 = call i64 @DNS_TC(%struct.TYPE_19__* %63)
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = call i64 @DNS_AD(%struct.TYPE_19__* %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %73 = bitcast i8* %72 to %struct.TYPE_18__*
  %74 = call i32 @ND_PRINT(%struct.TYPE_18__* %73)
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %38
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to %struct.TYPE_18__*
  %82 = call i32 @ND_PRINT(%struct.TYPE_18__* %81)
  br label %83

83:                                               ; preds = %77, %38
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i64 1
  %86 = bitcast %struct.TYPE_19__* %85 to i32*
  store i32* %86, i32** %14, align 8
  br label %87

87:                                               ; preds = %126, %83
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %10, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %91, label %127

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = call i32 @EXTRACT_16BITS(i32* %94)
  %96 = sub nsw i32 %95, 1
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([2 x i8]* @.str.7 to %struct.TYPE_18__*))
  br label %101

101:                                              ; preds = %98, %91
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([4 x i8]* @.str.8 to %struct.TYPE_18__*))
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32* @ns_qprint(%struct.TYPE_18__* %109, i32* %110, i32* %111, i32 %112)
  store i32* %113, i32** %14, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %574

116:                                              ; preds = %106
  br label %126

117:                                              ; preds = %101
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = load i32*, i32** %14, align 8
  %120 = call i32* @ns_nskip(%struct.TYPE_18__* %118, i32* %119)
  store i32* %120, i32** %14, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %574

123:                                              ; preds = %117
  %124 = load i32*, i32** %14, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  store i32* %125, i32** %14, align 8
  br label %126

126:                                              ; preds = %123, %116
  br label %87

127:                                              ; preds = %87
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to %struct.TYPE_18__*
  %134 = call i32 @ND_PRINT(%struct.TYPE_18__* %133)
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %11, align 4
  %137 = icmp ne i32 %135, 0
  br i1 %137, label %138, label %171

138:                                              ; preds = %127
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32* @ns_rprint(%struct.TYPE_18__* %139, i32* %140, i32* %141, i32 %142)
  store i32* %143, i32** %14, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %574

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %169, %146
  %148 = load i32*, i32** %14, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ult i32* %148, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %11, align 4
  %156 = icmp ne i32 %154, 0
  br label %157

157:                                              ; preds = %153, %147
  %158 = phi i1 [ false, %147 ], [ %156, %153 ]
  br i1 %158, label %159, label %170

159:                                              ; preds = %157
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %161 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([2 x i8]* @.str.7 to %struct.TYPE_18__*))
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %163 = load i32*, i32** %14, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32* @ns_rprint(%struct.TYPE_18__* %162, i32* %163, i32* %164, i32 %165)
  store i32* %166, i32** %14, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  br label %574

169:                                              ; preds = %159
  br label %147

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170, %127
  %172 = load i32, i32* %11, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %574

175:                                              ; preds = %171
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp sgt i32 %178, 1
  br i1 %179, label %180, label %279

180:                                              ; preds = %175
  %181 = load i32*, i32** %14, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ult i32* %181, %184
  br i1 %185, label %186, label %225

186:                                              ; preds = %180
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %12, align 4
  %189 = icmp ne i32 %187, 0
  br i1 %189, label %190, label %225

190:                                              ; preds = %186
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %192 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([5 x i8]* @.str.10 to %struct.TYPE_18__*))
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %194 = load i32*, i32** %14, align 8
  %195 = load i32*, i32** %6, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i32* @ns_rprint(%struct.TYPE_18__* %193, i32* %194, i32* %195, i32 %196)
  store i32* %197, i32** %14, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  br label %574

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %223, %200
  %202 = load i32*, i32** %14, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ult i32* %202, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %12, align 4
  %210 = icmp ne i32 %208, 0
  br label %211

211:                                              ; preds = %207, %201
  %212 = phi i1 [ false, %201 ], [ %210, %207 ]
  br i1 %212, label %213, label %224

213:                                              ; preds = %211
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %215 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([2 x i8]* @.str.7 to %struct.TYPE_18__*))
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %217 = load i32*, i32** %14, align 8
  %218 = load i32*, i32** %6, align 8
  %219 = load i32, i32* %8, align 4
  %220 = call i32* @ns_rprint(%struct.TYPE_18__* %216, i32* %217, i32* %218, i32 %219)
  store i32* %220, i32** %14, align 8
  %221 = icmp eq i32* %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %574

223:                                              ; preds = %213
  br label %201

224:                                              ; preds = %211
  br label %225

225:                                              ; preds = %224, %186, %180
  %226 = load i32, i32* %12, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  br label %574

229:                                              ; preds = %225
  %230 = load i32*, i32** %14, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = icmp ult i32* %230, %233
  br i1 %234, label %235, label %274

235:                                              ; preds = %229
  %236 = load i32, i32* %13, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %13, align 4
  %238 = icmp ne i32 %236, 0
  br i1 %238, label %239, label %274

239:                                              ; preds = %235
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %241 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([5 x i8]* @.str.11 to %struct.TYPE_18__*))
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %243 = load i32*, i32** %14, align 8
  %244 = load i32*, i32** %6, align 8
  %245 = load i32, i32* %8, align 4
  %246 = call i32* @ns_rprint(%struct.TYPE_18__* %242, i32* %243, i32* %244, i32 %245)
  store i32* %246, i32** %14, align 8
  %247 = icmp eq i32* %246, null
  br i1 %247, label %248, label %249

248:                                              ; preds = %239
  br label %574

249:                                              ; preds = %239
  br label %250

250:                                              ; preds = %272, %249
  %251 = load i32*, i32** %14, align 8
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = icmp ult i32* %251, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %13, align 4
  %259 = icmp ne i32 %257, 0
  br label %260

260:                                              ; preds = %256, %250
  %261 = phi i1 [ false, %250 ], [ %259, %256 ]
  br i1 %261, label %262, label %273

262:                                              ; preds = %260
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %264 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([2 x i8]* @.str.7 to %struct.TYPE_18__*))
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %266 = load i32*, i32** %14, align 8
  %267 = load i32*, i32** %6, align 8
  %268 = load i32, i32* %8, align 4
  %269 = call i32* @ns_rprint(%struct.TYPE_18__* %265, i32* %266, i32* %267, i32 %268)
  store i32* %269, i32** %14, align 8
  %270 = icmp eq i32* %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %262
  br label %574

272:                                              ; preds = %262
  br label %250

273:                                              ; preds = %260
  br label %274

274:                                              ; preds = %273, %235, %229
  %275 = load i32, i32* %13, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  br label %574

278:                                              ; preds = %274
  br label %279

279:                                              ; preds = %278, %175
  br label %568

280:                                              ; preds = %4
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 0
  %284 = call i32 @EXTRACT_16BITS(i32* %283)
  %285 = load i32*, i32** @ns_ops, align 8
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %287 = call i64 @DNS_OPCODE(%struct.TYPE_19__* %286)
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %291 = call i64 @DNS_RD(%struct.TYPE_19__* %290)
  %292 = icmp ne i64 %291, 0
  %293 = zext i1 %292 to i64
  %294 = select i1 %292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %296 = call i64 @DNS_CD(%struct.TYPE_19__* %295)
  %297 = icmp ne i64 %296, 0
  %298 = zext i1 %297 to i64
  %299 = select i1 %297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %300 = bitcast i8* %299 to %struct.TYPE_18__*
  %301 = call i32 @ND_PRINT(%struct.TYPE_18__* %300)
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %303 = bitcast %struct.TYPE_19__* %302 to i32*
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  %305 = call i32 @EXTRACT_16BITS(i32* %304)
  store i32 %305, i32* %15, align 4
  %306 = load i32, i32* %15, align 4
  %307 = and i32 %306, 1743
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %280
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %311 = load i32, i32* %15, align 4
  %312 = sext i32 %311 to i64
  %313 = inttoptr i64 %312 to %struct.TYPE_18__*
  %314 = call i32 @ND_PRINT(%struct.TYPE_18__* %313)
  br label %315

315:                                              ; preds = %309, %280
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %317 = call i64 @DNS_OPCODE(%struct.TYPE_19__* %316)
  %318 = load i64, i64* @IQUERY, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %339

320:                                              ; preds = %315
  %321 = load i32, i32* %10, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %320
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %325 = load i32, i32* %10, align 4
  %326 = sext i32 %325 to i64
  %327 = inttoptr i64 %326 to %struct.TYPE_18__*
  %328 = call i32 @ND_PRINT(%struct.TYPE_18__* %327)
  br label %329

329:                                              ; preds = %323, %320
  %330 = load i32, i32* %11, align 4
  %331 = icmp ne i32 %330, 1
  br i1 %331, label %332, label %338

332:                                              ; preds = %329
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %334 = load i32, i32* %11, align 4
  %335 = sext i32 %334 to i64
  %336 = inttoptr i64 %335 to %struct.TYPE_18__*
  %337 = call i32 @ND_PRINT(%struct.TYPE_18__* %336)
  br label %338

338:                                              ; preds = %332, %329
  br label %358

339:                                              ; preds = %315
  %340 = load i32, i32* %11, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %339
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %344 = load i32, i32* %11, align 4
  %345 = sext i32 %344 to i64
  %346 = inttoptr i64 %345 to %struct.TYPE_18__*
  %347 = call i32 @ND_PRINT(%struct.TYPE_18__* %346)
  br label %348

348:                                              ; preds = %342, %339
  %349 = load i32, i32* %10, align 4
  %350 = icmp ne i32 %349, 1
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  %352 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = inttoptr i64 %354 to %struct.TYPE_18__*
  %356 = call i32 @ND_PRINT(%struct.TYPE_18__* %355)
  br label %357

357:                                              ; preds = %351, %348
  br label %358

358:                                              ; preds = %357, %338
  %359 = load i32, i32* %12, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %367

361:                                              ; preds = %358
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %363 = load i32, i32* %12, align 4
  %364 = sext i32 %363 to i64
  %365 = inttoptr i64 %364 to %struct.TYPE_18__*
  %366 = call i32 @ND_PRINT(%struct.TYPE_18__* %365)
  br label %367

367:                                              ; preds = %361, %358
  %368 = load i32, i32* %13, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %367
  %371 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %372 = load i32, i32* %13, align 4
  %373 = sext i32 %372 to i64
  %374 = inttoptr i64 %373 to %struct.TYPE_18__*
  %375 = call i32 @ND_PRINT(%struct.TYPE_18__* %374)
  br label %376

376:                                              ; preds = %370, %367
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i64 1
  %379 = bitcast %struct.TYPE_19__* %378 to i32*
  store i32* %379, i32** %14, align 8
  %380 = load i32, i32* %10, align 4
  %381 = add nsw i32 %380, -1
  store i32 %381, i32* %10, align 4
  %382 = icmp ne i32 %380, 0
  br i1 %382, label %383, label %418

383:                                              ; preds = %376
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %385 = load i32*, i32** %14, align 8
  %386 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %387 = bitcast %struct.TYPE_19__* %386 to i32*
  %388 = load i32, i32* %8, align 4
  %389 = call i32* @ns_qprint(%struct.TYPE_18__* %384, i32* %385, i32* %387, i32 %388)
  store i32* %389, i32** %14, align 8
  %390 = load i32*, i32** %14, align 8
  %391 = icmp ne i32* %390, null
  br i1 %391, label %393, label %392

392:                                              ; preds = %383
  br label %574

393:                                              ; preds = %383
  br label %394

394:                                              ; preds = %416, %393
  %395 = load i32*, i32** %14, align 8
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %396, i32 0, i32 1
  %398 = load i32*, i32** %397, align 8
  %399 = icmp ult i32* %395, %398
  br i1 %399, label %400, label %404

400:                                              ; preds = %394
  %401 = load i32, i32* %10, align 4
  %402 = add nsw i32 %401, -1
  store i32 %402, i32* %10, align 4
  %403 = icmp ne i32 %401, 0
  br label %404

404:                                              ; preds = %400, %394
  %405 = phi i1 [ false, %394 ], [ %403, %400 ]
  br i1 %405, label %406, label %417

406:                                              ; preds = %404
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %408 = load i32*, i32** %14, align 8
  %409 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %410 = bitcast %struct.TYPE_19__* %409 to i32*
  %411 = load i32, i32* %8, align 4
  %412 = call i32* @ns_qprint(%struct.TYPE_18__* %407, i32* %408, i32* %410, i32 %411)
  store i32* %412, i32** %14, align 8
  %413 = load i32*, i32** %14, align 8
  %414 = icmp ne i32* %413, null
  br i1 %414, label %416, label %415

415:                                              ; preds = %406
  br label %574

416:                                              ; preds = %406
  br label %394

417:                                              ; preds = %404
  br label %418

418:                                              ; preds = %417, %376
  %419 = load i32, i32* %10, align 4
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %418
  br label %574

422:                                              ; preds = %418
  %423 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = icmp sgt i32 %425, 1
  br i1 %426, label %427, label %567

427:                                              ; preds = %422
  %428 = load i32, i32* %11, align 4
  %429 = add nsw i32 %428, -1
  store i32 %429, i32* %11, align 4
  %430 = icmp ne i32 %428, 0
  br i1 %430, label %431, label %464

431:                                              ; preds = %427
  %432 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %433 = load i32*, i32** %14, align 8
  %434 = load i32*, i32** %6, align 8
  %435 = load i32, i32* %8, align 4
  %436 = call i32* @ns_rprint(%struct.TYPE_18__* %432, i32* %433, i32* %434, i32 %435)
  store i32* %436, i32** %14, align 8
  %437 = icmp eq i32* %436, null
  br i1 %437, label %438, label %439

438:                                              ; preds = %431
  br label %574

439:                                              ; preds = %431
  br label %440

440:                                              ; preds = %462, %439
  %441 = load i32*, i32** %14, align 8
  %442 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %442, i32 0, i32 1
  %444 = load i32*, i32** %443, align 8
  %445 = icmp ult i32* %441, %444
  br i1 %445, label %446, label %450

446:                                              ; preds = %440
  %447 = load i32, i32* %11, align 4
  %448 = add nsw i32 %447, -1
  store i32 %448, i32* %11, align 4
  %449 = icmp ne i32 %447, 0
  br label %450

450:                                              ; preds = %446, %440
  %451 = phi i1 [ false, %440 ], [ %449, %446 ]
  br i1 %451, label %452, label %463

452:                                              ; preds = %450
  %453 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %454 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([2 x i8]* @.str.7 to %struct.TYPE_18__*))
  %455 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %456 = load i32*, i32** %14, align 8
  %457 = load i32*, i32** %6, align 8
  %458 = load i32, i32* %8, align 4
  %459 = call i32* @ns_rprint(%struct.TYPE_18__* %455, i32* %456, i32* %457, i32 %458)
  store i32* %459, i32** %14, align 8
  %460 = icmp eq i32* %459, null
  br i1 %460, label %461, label %462

461:                                              ; preds = %452
  br label %574

462:                                              ; preds = %452
  br label %440

463:                                              ; preds = %450
  br label %464

464:                                              ; preds = %463, %427
  %465 = load i32, i32* %11, align 4
  %466 = icmp sgt i32 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %464
  br label %574

468:                                              ; preds = %464
  %469 = load i32*, i32** %14, align 8
  %470 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %470, i32 0, i32 1
  %472 = load i32*, i32** %471, align 8
  %473 = icmp ult i32* %469, %472
  br i1 %473, label %474, label %513

474:                                              ; preds = %468
  %475 = load i32, i32* %12, align 4
  %476 = add nsw i32 %475, -1
  store i32 %476, i32* %12, align 4
  %477 = icmp ne i32 %475, 0
  br i1 %477, label %478, label %513

478:                                              ; preds = %474
  %479 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %480 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([5 x i8]* @.str.10 to %struct.TYPE_18__*))
  %481 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %482 = load i32*, i32** %14, align 8
  %483 = load i32*, i32** %6, align 8
  %484 = load i32, i32* %8, align 4
  %485 = call i32* @ns_rprint(%struct.TYPE_18__* %481, i32* %482, i32* %483, i32 %484)
  store i32* %485, i32** %14, align 8
  %486 = icmp eq i32* %485, null
  br i1 %486, label %487, label %488

487:                                              ; preds = %478
  br label %574

488:                                              ; preds = %478
  br label %489

489:                                              ; preds = %511, %488
  %490 = load i32, i32* %12, align 4
  %491 = add nsw i32 %490, -1
  store i32 %491, i32* %12, align 4
  %492 = icmp ne i32 %490, 0
  br i1 %492, label %493, label %499

493:                                              ; preds = %489
  %494 = load i32*, i32** %14, align 8
  %495 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %495, i32 0, i32 1
  %497 = load i32*, i32** %496, align 8
  %498 = icmp ult i32* %494, %497
  br label %499

499:                                              ; preds = %493, %489
  %500 = phi i1 [ false, %489 ], [ %498, %493 ]
  br i1 %500, label %501, label %512

501:                                              ; preds = %499
  %502 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %503 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([2 x i8]* @.str.7 to %struct.TYPE_18__*))
  %504 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %505 = load i32*, i32** %14, align 8
  %506 = load i32*, i32** %6, align 8
  %507 = load i32, i32* %8, align 4
  %508 = call i32* @ns_rprint(%struct.TYPE_18__* %504, i32* %505, i32* %506, i32 %507)
  store i32* %508, i32** %14, align 8
  %509 = icmp eq i32* %508, null
  br i1 %509, label %510, label %511

510:                                              ; preds = %501
  br label %574

511:                                              ; preds = %501
  br label %489

512:                                              ; preds = %499
  br label %513

513:                                              ; preds = %512, %474, %468
  %514 = load i32, i32* %12, align 4
  %515 = icmp sgt i32 %514, 0
  br i1 %515, label %516, label %517

516:                                              ; preds = %513
  br label %574

517:                                              ; preds = %513
  %518 = load i32*, i32** %14, align 8
  %519 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %520 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %519, i32 0, i32 1
  %521 = load i32*, i32** %520, align 8
  %522 = icmp ult i32* %518, %521
  br i1 %522, label %523, label %562

523:                                              ; preds = %517
  %524 = load i32, i32* %13, align 4
  %525 = add nsw i32 %524, -1
  store i32 %525, i32* %13, align 4
  %526 = icmp ne i32 %524, 0
  br i1 %526, label %527, label %562

527:                                              ; preds = %523
  %528 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %529 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([5 x i8]* @.str.11 to %struct.TYPE_18__*))
  %530 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %531 = load i32*, i32** %14, align 8
  %532 = load i32*, i32** %6, align 8
  %533 = load i32, i32* %8, align 4
  %534 = call i32* @ns_rprint(%struct.TYPE_18__* %530, i32* %531, i32* %532, i32 %533)
  store i32* %534, i32** %14, align 8
  %535 = icmp eq i32* %534, null
  br i1 %535, label %536, label %537

536:                                              ; preds = %527
  br label %574

537:                                              ; preds = %527
  br label %538

538:                                              ; preds = %560, %537
  %539 = load i32*, i32** %14, align 8
  %540 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %541 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %540, i32 0, i32 1
  %542 = load i32*, i32** %541, align 8
  %543 = icmp ult i32* %539, %542
  br i1 %543, label %544, label %548

544:                                              ; preds = %538
  %545 = load i32, i32* %13, align 4
  %546 = add nsw i32 %545, -1
  store i32 %546, i32* %13, align 4
  %547 = icmp ne i32 %545, 0
  br label %548

548:                                              ; preds = %544, %538
  %549 = phi i1 [ false, %538 ], [ %547, %544 ]
  br i1 %549, label %550, label %561

550:                                              ; preds = %548
  %551 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %552 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([2 x i8]* @.str.7 to %struct.TYPE_18__*))
  %553 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %554 = load i32*, i32** %14, align 8
  %555 = load i32*, i32** %6, align 8
  %556 = load i32, i32* %8, align 4
  %557 = call i32* @ns_rprint(%struct.TYPE_18__* %553, i32* %554, i32* %555, i32 %556)
  store i32* %557, i32** %14, align 8
  %558 = icmp eq i32* %557, null
  br i1 %558, label %559, label %560

559:                                              ; preds = %550
  br label %574

560:                                              ; preds = %550
  br label %538

561:                                              ; preds = %548
  br label %562

562:                                              ; preds = %561, %523, %517
  %563 = load i32, i32* %13, align 4
  %564 = icmp sgt i32 %563, 0
  br i1 %564, label %565, label %566

565:                                              ; preds = %562
  br label %574

566:                                              ; preds = %562
  br label %567

567:                                              ; preds = %566, %422
  br label %568

568:                                              ; preds = %567, %279
  %569 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %570 = load i32, i32* %7, align 4
  %571 = sext i32 %570 to i64
  %572 = inttoptr i64 %571 to %struct.TYPE_18__*
  %573 = call i32 @ND_PRINT(%struct.TYPE_18__* %572)
  br label %577

574:                                              ; preds = %565, %559, %536, %516, %510, %487, %467, %461, %438, %421, %415, %392, %277, %271, %248, %228, %222, %199, %174, %168, %145, %122, %115
  %575 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %576 = call i32 @ND_PRINT(%struct.TYPE_18__* bitcast ([10 x i8]* @.str.20 to %struct.TYPE_18__*))
  br label %577

577:                                              ; preds = %574, %568
  ret void
}

declare dso_local i32 @ND_TCHECK(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i64 @DNS_QR(%struct.TYPE_19__*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_18__*) #1

declare dso_local i64 @DNS_OPCODE(%struct.TYPE_19__*) #1

declare dso_local i64 @DNS_RCODE(%struct.TYPE_19__*) #1

declare dso_local i64 @DNS_AA(%struct.TYPE_19__*) #1

declare dso_local i64 @DNS_RA(%struct.TYPE_19__*) #1

declare dso_local i64 @DNS_TC(%struct.TYPE_19__*) #1

declare dso_local i64 @DNS_AD(%struct.TYPE_19__*) #1

declare dso_local i32* @ns_qprint(%struct.TYPE_18__*, i32*, i32*, i32) #1

declare dso_local i32* @ns_nskip(%struct.TYPE_18__*, i32*) #1

declare dso_local i32* @ns_rprint(%struct.TYPE_18__*, i32*, i32*, i32) #1

declare dso_local i64 @DNS_RD(%struct.TYPE_19__*) #1

declare dso_local i64 @DNS_CD(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pim.c_pimv1_join_prune_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pim.c_pimv1_join_prune_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c" RPF %s \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Hold \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s (%s/%d, %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Join\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Prune\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c") %s%s %s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Sparse\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Dense\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" WC\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"RP\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"SPT\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c" Upstream Nbr: %s\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c" Hold time: \00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"\0A\09Group: %s\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c" joined: %d pruned: %d\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Join \00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"\0A\09%s %s%s%s%s/%d\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Sparse \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Dense \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"WC \00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"RP \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"SPT \00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"[|pim]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32)* @pimv1_join_prune_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pimv1_join_prune_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ND_TTEST2(i32 %15, i32 30)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %110

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 11
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %110

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 20
  %26 = call i32 @EXTRACT_16BITS(i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 22
  %29 = call i32 @EXTRACT_16BITS(i32* %28)
  %30 = add nsw i32 %26, %29
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %110

32:                                               ; preds = %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ipaddr_string(%struct.TYPE_6__* %34, i32* %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.TYPE_6__*
  %39 = call i32 @ND_PRINT(%struct.TYPE_6__* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = call i32 @EXTRACT_16BITS(i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 180
  br i1 %44, label %45, label %51

45:                                               ; preds = %32
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([6 x i8]* @.str.1 to %struct.TYPE_6__*))
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @unsigned_relts_print(%struct.TYPE_6__* %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %32
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 26
  %60 = call i32 @ipaddr_string(%struct.TYPE_6__* %57, i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 25
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 12
  %68 = call i32 @ipaddr_string(%struct.TYPE_6__* %65, i32* %67)
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to %struct.TYPE_6__*
  %71 = call i32 @ND_PRINT(%struct.TYPE_6__* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  %74 = call i32 @EXTRACT_32BITS(i32* %73)
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %85

76:                                               ; preds = %51
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 16
  %81 = call i32 @ipaddr_string(%struct.TYPE_6__* %78, i32* %80)
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to %struct.TYPE_6__*
  %84 = call i32 @ND_PRINT(%struct.TYPE_6__* %83)
  br label %85

85:                                               ; preds = %76, %51
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 24
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 25
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 128
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 25
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 64
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %108 = bitcast i8* %107 to %struct.TYPE_6__*
  %109 = call i32 @ND_PRINT(%struct.TYPE_6__* %108)
  br label %328

110:                                              ; preds = %23, %18, %3
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp ult i64 %112, 4
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %325

115:                                              ; preds = %110
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ND_TCHECK2(i32 %118, i32 4)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.13 to %struct.TYPE_6__*))
  br label %127

127:                                              ; preds = %124, %115
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @ipaddr_string(%struct.TYPE_6__* %129, i32* %130)
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to %struct.TYPE_6__*
  %134 = call i32 @ND_PRINT(%struct.TYPE_6__* %133)
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  store i32* %136, i32** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sub nsw i32 %137, 4
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %139, 4
  br i1 %140, label %141, label %142

141:                                              ; preds = %127
  br label %325

142:                                              ; preds = %127
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ND_TCHECK2(i32 %145, i32 2)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.13 to %struct.TYPE_6__*))
  br label %154

154:                                              ; preds = %151, %142
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([13 x i8]* @.str.15 to %struct.TYPE_6__*))
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = call i32 @EXTRACT_16BITS(i32* %159)
  %161 = call i32 @unsigned_relts_print(%struct.TYPE_6__* %157, i32 %160)
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %166, label %167

166:                                              ; preds = %154
  br label %328

167:                                              ; preds = %154
  %168 = load i32*, i32** %5, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 4
  store i32* %169, i32** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sub nsw i32 %170, 4
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp slt i32 %172, 4
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %325

175:                                              ; preds = %167
  %176 = load i32*, i32** %5, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ND_TCHECK2(i32 %178, i32 4)
  %180 = load i32*, i32** %5, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %7, align 4
  %183 = load i32*, i32** %5, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  store i32* %184, i32** %5, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sub nsw i32 %185, 4
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %323, %175
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %7, align 4
  %190 = icmp ne i32 %188, 0
  br i1 %190, label %191, label %324

191:                                              ; preds = %187
  %192 = load i32, i32* %6, align 4
  %193 = icmp slt i32 %192, 4
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %325

195:                                              ; preds = %191
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ND_TCHECK2(i32 %198, i32 4)
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @ipaddr_string(%struct.TYPE_6__* %201, i32* %202)
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to %struct.TYPE_6__*
  %206 = call i32 @ND_PRINT(%struct.TYPE_6__* %205)
  %207 = load i32*, i32** %5, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 4
  store i32* %208, i32** %5, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sub nsw i32 %209, 4
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp slt i32 %211, 4
  br i1 %212, label %213, label %214

213:                                              ; preds = %195
  br label %325

214:                                              ; preds = %195
  %215 = load i32*, i32** %5, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ND_TCHECK2(i32 %217, i32 4)
  %219 = load i32*, i32** %5, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = call i32 @EXTRACT_32BITS(i32* %220)
  %222 = icmp ne i32 %221, -1
  br i1 %222, label %223, label %232

223:                                              ; preds = %214
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %226 = load i32*, i32** %5, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = call i32 @ipaddr_string(%struct.TYPE_6__* %225, i32* %227)
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to %struct.TYPE_6__*
  %231 = call i32 @ND_PRINT(%struct.TYPE_6__* %230)
  br label %232

232:                                              ; preds = %223, %214
  %233 = load i32*, i32** %5, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 4
  store i32* %234, i32** %5, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sub nsw i32 %235, 4
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp slt i32 %237, 4
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %325

240:                                              ; preds = %232
  %241 = load i32*, i32** %5, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @ND_TCHECK2(i32 %243, i32 4)
  %245 = load i32*, i32** %5, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = call i32 @EXTRACT_16BITS(i32* %246)
  store i32 %247, i32* %8, align 4
  %248 = load i32*, i32** %5, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 2
  %250 = call i32 @EXTRACT_16BITS(i32* %249)
  store i32 %250, i32* %9, align 4
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = inttoptr i64 %254 to %struct.TYPE_6__*
  %256 = call i32 @ND_PRINT(%struct.TYPE_6__* %255)
  %257 = load i32*, i32** %5, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 4
  store i32* %258, i32** %5, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sub nsw i32 %259, 4
  store i32 %260, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %261

261:                                              ; preds = %320, %240
  %262 = load i32, i32* %10, align 4
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %263, %264
  %266 = icmp slt i32 %262, %265
  br i1 %266, label %267, label %323

267:                                              ; preds = %261
  %268 = load i32, i32* %10, align 4
  %269 = load i32, i32* %8, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %12, align 8
  br label %273

272:                                              ; preds = %267
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %273

273:                                              ; preds = %272, %271
  %274 = load i32, i32* %6, align 4
  %275 = icmp slt i32 %274, 6
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  br label %325

277:                                              ; preds = %273
  %278 = load i32*, i32** %5, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @ND_TCHECK2(i32 %280, i32 6)
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %283 = load i8*, i8** %12, align 8
  %284 = load i32*, i32** %5, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 1
  %288 = icmp ne i32 %287, 0
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)
  %291 = load i32*, i32** %5, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, 128
  %295 = icmp ne i32 %294, 0
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %298 = load i32*, i32** %5, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, 64
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %306 = load i32*, i32** %5, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  %308 = call i32 @ipaddr_string(%struct.TYPE_6__* %305, i32* %307)
  %309 = load i32*, i32** %5, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 1
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, 63
  %313 = sext i32 %312 to i64
  %314 = inttoptr i64 %313 to %struct.TYPE_6__*
  %315 = call i32 @ND_PRINT(%struct.TYPE_6__* %314)
  %316 = load i32*, i32** %5, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 6
  store i32* %317, i32** %5, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sub nsw i32 %318, 6
  store i32 %319, i32* %6, align 4
  br label %320

320:                                              ; preds = %277
  %321 = load i32, i32* %10, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %10, align 4
  br label %261

323:                                              ; preds = %261
  br label %187

324:                                              ; preds = %187
  br label %328

325:                                              ; preds = %276, %239, %213, %194, %174, %141, %114
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %327 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([7 x i8]* @.str.25 to %struct.TYPE_6__*))
  br label %328

328:                                              ; preds = %325, %324, %166, %85
  ret void
}

declare dso_local i64 @ND_TTEST2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @unsigned_relts_print(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

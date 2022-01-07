; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_stringify_collection_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_stringify_collection_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collection_list = type { i32, i32, i64*, %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }

@info_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"\0ACollecting registers (mask): 0x\00", align 1
@QUIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Collecting memranges: \0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"(%d, %s, %ld)\0A\00", align 1
@MAX_AGENT_EXPR_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"M%X,%s,%lX\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"X%08X,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.collection_list*, i8*)* @stringify_collection_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @stringify_collection_list(%struct.collection_list* %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.collection_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2048 x i8], align 16
  %7 = alloca [40 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [0 x i8*]*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.collection_list* %0, %struct.collection_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %14 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 1, %15
  %17 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %18 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @xmalloc(i32 %25)
  %27 = inttoptr i64 %26 to [0 x i8*]*
  store [0 x i8*]* %27, [0 x i8*]** %10, align 8
  store i64 7, i64* %12, align 8
  br label %28

28:                                               ; preds = %41, %2
  %29 = load i64, i64* %12, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %33 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %12, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %12, align 8
  br label %28

44:                                               ; preds = %39, %28
  %45 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %46 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %105

52:                                               ; preds = %44
  %53 = load i64, i64* @info_verbose, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %11, align 8
  store i8 82, i8* %59, align 1
  br label %61

61:                                               ; preds = %87, %57
  %62 = load i64, i64* %12, align 8
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = load i32, i32* @QUIT, align 4
  %66 = load i64, i64* @info_verbose, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %70 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %68, %64
  %77 = load i8*, i8** %11, align 8
  %78 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %79 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %86, i8** %11, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load i64, i64* %12, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %12, align 8
  br label %61

90:                                               ; preds = %61
  %91 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i8* @savestring(i8* %91, i32 %97)
  %99 = load [0 x i8*]*, [0 x i8*]** %10, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [0 x i8*], [0 x i8*]* %99, i64 0, i64 %101
  store i8* %98, i8** %102, align 1
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %90, %44
  %106 = load i64, i64* @info_verbose, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %105
  %111 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %112 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i64, i64* @info_verbose, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %115, %110
  store i64 0, i64* %12, align 8
  store i32 0, i32* %8, align 4
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  store i8* %121, i8** %11, align 8
  br label %122

122:                                              ; preds = %220, %120
  %123 = load i64, i64* %12, align 8
  %124 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %125 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %123, %127
  br i1 %128, label %129, label %223

129:                                              ; preds = %122
  %130 = load i32, i32* @QUIT, align 4
  %131 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %132 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %133 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %132, i32 0, i32 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i64, i64* %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @sprintf_vma(i8* %131, i64 %138)
  %140 = load i64, i64* @info_verbose, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %167

142:                                              ; preds = %129
  %143 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %144 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %143, i32 0, i32 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %151 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %152 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %151, i32 0, i32 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = load i64, i64* %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %159 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %158, i32 0, i32 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i64, i64* %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %157, %164
  %166 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %149, i8* %150, i64 %165)
  br label %167

167:                                              ; preds = %142, %129
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 27
  %170 = load i32, i32* @MAX_AGENT_EXPR_LEN, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %167
  %173 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %174 = load i32, i32* %8, align 4
  %175 = call i8* @savestring(i8* %173, i32 %174)
  %176 = load [0 x i8*]*, [0 x i8*]** %10, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [0 x i8*], [0 x i8*]* %176, i64 0, i64 %178
  store i8* %175, i8** %179, align 1
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %182 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  store i8* %182, i8** %11, align 8
  br label %183

183:                                              ; preds = %172, %167
  %184 = load i8*, i8** %11, align 8
  %185 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %186 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %185, i32 0, i32 4
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = load i64, i64* %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %194 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %195 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %194, i32 0, i32 4
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = load i64, i64* %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %202 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %201, i32 0, i32 4
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = load i64, i64* %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %200, %207
  %209 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %192, i8* %193, i64 %208)
  %210 = load i8*, i8** %11, align 8
  %211 = call i64 @strlen(i8* %210)
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i8*, i8** %11, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %11, align 8
  br label %220

220:                                              ; preds = %183
  %221 = load i64, i64* %12, align 8
  %222 = add nsw i64 %221, 1
  store i64 %222, i64* %12, align 8
  br label %122

223:                                              ; preds = %122
  store i64 0, i64* %12, align 8
  br label %224

224:                                              ; preds = %303, %223
  %225 = load i64, i64* %12, align 8
  %226 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %227 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = icmp slt i64 %225, %229
  br i1 %230, label %231, label %306

231:                                              ; preds = %224
  %232 = load i32, i32* @QUIT, align 4
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 10
  %235 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %236 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %235, i32 0, i32 3
  %237 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %236, align 8
  %238 = load i64, i64* %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %237, i64 %238
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 2, %242
  %244 = add nsw i32 %234, %243
  %245 = load i32, i32* @MAX_AGENT_EXPR_LEN, align 4
  %246 = icmp sgt i32 %244, %245
  br i1 %246, label %247, label %258

247:                                              ; preds = %231
  %248 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %249 = load i32, i32* %8, align 4
  %250 = call i8* @savestring(i8* %248, i32 %249)
  %251 = load [0 x i8*]*, [0 x i8*]** %10, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [0 x i8*], [0 x i8*]* %251, i64 0, i64 %253
  store i8* %250, i8** %254, align 1
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %257 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  store i8* %257, i8** %11, align 8
  br label %258

258:                                              ; preds = %247, %231
  %259 = load i8*, i8** %11, align 8
  %260 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %261 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %260, i32 0, i32 3
  %262 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %261, align 8
  %263 = load i64, i64* %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %262, i64 %263
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %259, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %268)
  %270 = load i8*, i8** %11, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 10
  store i8* %271, i8** %11, align 8
  %272 = load i32, i32* %8, align 4
  %273 = add nsw i32 %272, 10
  store i32 %273, i32* %8, align 4
  %274 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %275 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %274, i32 0, i32 3
  %276 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %275, align 8
  %277 = load i64, i64* %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %276, i64 %277
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i8*, i8** %11, align 8
  %283 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %284 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %283, i32 0, i32 3
  %285 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %284, align 8
  %286 = load i64, i64* %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %285, i64 %286
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i8* @mem2hex(i32 %281, i8* %282, i32 %290)
  store i8* %291, i8** %11, align 8
  %292 = load %struct.collection_list*, %struct.collection_list** %4, align 8
  %293 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %292, i32 0, i32 3
  %294 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %293, align 8
  %295 = load i64, i64* %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %294, i64 %295
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 2, %299
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, %300
  store i32 %302, i32* %8, align 4
  br label %303

303:                                              ; preds = %258
  %304 = load i64, i64* %12, align 8
  %305 = add nsw i64 %304, 1
  store i64 %305, i64* %12, align 8
  br label %224

306:                                              ; preds = %224
  %307 = load i32, i32* %8, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %320

309:                                              ; preds = %306
  %310 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %311 = load i32, i32* %8, align 4
  %312 = call i8* @savestring(i8* %310, i32 %311)
  %313 = load [0 x i8*]*, [0 x i8*]** %10, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [0 x i8*], [0 x i8*]* %313, i64 0, i64 %315
  store i8* %312, i8** %316, align 1
  %317 = load i32, i32* %9, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %319 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  store i8* %319, i8** %11, align 8
  br label %320

320:                                              ; preds = %309, %306
  %321 = load [0 x i8*]*, [0 x i8*]** %10, align 8
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [0 x i8*], [0 x i8*]* %321, i64 0, i64 %323
  store i8* null, i8** %324, align 1
  %325 = load i32, i32* %9, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %320
  store i8** null, i8*** %3, align 8
  br label %331

328:                                              ; preds = %320
  %329 = load [0 x i8*]*, [0 x i8*]** %10, align 8
  %330 = getelementptr inbounds [0 x i8*], [0 x i8*]* %329, i64 0, i64 0
  store i8** %330, i8*** %3, align 8
  br label %331

331:                                              ; preds = %328, %327
  %332 = load i8**, i8*** %3, align 8
  ret i8** %332
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @sprintf_vma(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @mem2hex(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

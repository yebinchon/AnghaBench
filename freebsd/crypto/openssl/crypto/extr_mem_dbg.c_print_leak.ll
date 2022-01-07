; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_print_leak.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_print_leak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 (i8*, i32, i32)*, i32, i32 }
%struct.tm = type { i32, i32, i32 }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"[%02d:%02d:%02d] \00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%5lu file=%s, line=%d, \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"thread=%lu, \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"number=%d, address=%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c" thread=%lu, file=%s, line=%d, info=\22\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"##> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_6__*)* @print_leak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_leak(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm*, align 8
  %12 = alloca %union.anon, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8* %18, i8** %6, align 8
  store i64 1024, i64* %7, align 8
  store %struct.tm* null, %struct.tm** %11, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 9
  %21 = call %struct.tm* @localtime(i32* %20)
  store %struct.tm* %21, %struct.tm** %11, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.tm*, %struct.tm** %11, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tm*, %struct.tm** %11, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tm*, %struct.tm** %11, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, i8*, ...) @BIO_snprintf(i8* %22, i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  br label %303

40:                                               ; preds = %2
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, i8*, ...) @BIO_snprintf(i8* %49, i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %40
  br label %303

65:                                               ; preds = %40
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %7, align 8
  %74 = bitcast %union.anon* %12 to i64*
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = bitcast %union.anon* %12 to i32*
  store i32 %77, i32* %78, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = trunc i64 %80 to i32
  %82 = bitcast %union.anon* %12 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i8*, i32, i8*, ...) @BIO_snprintf(i8* %79, i32 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %65
  br label %303

88:                                               ; preds = %65
  %89 = load i32, i32* %10, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %7, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %7, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, i32, i8*, ...) @BIO_snprintf(i8* %97, i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %88
  br label %303

110:                                              ; preds = %88
  %111 = load i32, i32* %10, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %6, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %7, align 8
  %118 = sub i64 %117, %116
  store i64 %118, i64* %7, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %120, align 8
  %122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 %121(i8* %122, i32 %128, i32 %131)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  store %struct.TYPE_8__* %146, %struct.TYPE_8__** %9, align 8
  store i64 0, i64* %8, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %148 = icmp ne %struct.TYPE_8__* %147, null
  br i1 %148, label %149, label %276

149:                                              ; preds = %110
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %273, %149
  %154 = load i64, i64* %8, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %8, align 8
  %156 = load i64, i64* %8, align 8
  %157 = icmp uge i64 %156, 1023
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %275

159:                                              ; preds = %153
  %160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @memset(i8* %160, i8 signext 62, i64 %161)
  %163 = load i64, i64* %8, align 8
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %163
  store i8 0, i8* %164, align 1
  %165 = bitcast %union.anon* %12 to i64*
  store i64 0, i64* %165, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = bitcast %union.anon* %12 to i32*
  store i32 %168, i32* %169, align 8
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %171 = load i64, i64* %8, align 8
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  %173 = load i64, i64* %8, align 8
  %174 = sub i64 1024, %173
  %175 = trunc i64 %174 to i32
  %176 = bitcast %union.anon* %12 to i64*
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i8*, i32, i8*, ...) @BIO_snprintf(i8* %172, i32 %175, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %177, i32 %180, i32 %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp sle i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %159
  br label %275

188:                                              ; preds = %159
  %189 = load i64, i64* %8, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = add i64 %189, %191
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %14, align 4
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @strlen(i32 %196)
  store i32 %197, i32* %15, align 4
  %198 = load i32, i32* %14, align 4
  %199 = sub nsw i32 128, %198
  %200 = sub nsw i32 %199, 3
  %201 = load i32, i32* %15, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %188
  %204 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sub nsw i32 128, %211
  %213 = sub nsw i32 %212, 3
  %214 = call i32 @memcpy(i8* %207, i32 %210, i32 %213)
  store i32 125, i32* %14, align 4
  br label %235

215:                                              ; preds = %188
  %216 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = sub i64 1024, %221
  %223 = trunc i64 %222 to i32
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i8*, i32, i8*, ...) @BIO_snprintf(i8* %219, i32 %223, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %226)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %215
  br label %275

231:                                              ; preds = %215
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %14, align 4
  br label %235

235:                                              ; preds = %231, %203
  %236 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = sub i64 1024, %241
  %243 = trunc i64 %242 to i32
  %244 = call i32 (i8*, i32, i8*, ...) @BIO_snprintf(i8* %239, i32 %243, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = icmp sle i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %235
  br label %275

248:                                              ; preds = %235
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  %251 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %250, align 8
  %252 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %253 = load i32, i32* %14, align 4
  %254 = load i32, i32* %10, align 4
  %255 = add nsw i32 %253, %254
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 %251(i8* %252, i32 %255, i32 %258)
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  store %struct.TYPE_8__* %262, %struct.TYPE_8__** %9, align 8
  br label %263

263:                                              ; preds = %248
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %265 = icmp ne %struct.TYPE_8__* %264, null
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %13, align 4
  %271 = call i64 @CRYPTO_THREAD_compare_id(i32 %269, i32 %270)
  %272 = icmp ne i64 %271, 0
  br label %273

273:                                              ; preds = %266, %263
  %274 = phi i1 [ false, %263 ], [ %272, %266 ]
  br i1 %274, label %153, label %275

275:                                              ; preds = %273, %247, %230, %187, %158
  br label %276

276:                                              ; preds = %275, %110
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = call i8** @backtrace_symbols(i32 %279, i64 %282)
  store i8** %283, i8*** %17, align 8
  store i64 0, i64* %16, align 8
  br label %284

284:                                              ; preds = %297, %276
  %285 = load i64, i64* %16, align 8
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ult i64 %285, %288
  br i1 %289, label %290, label %300

290:                                              ; preds = %284
  %291 = load i32, i32* @stderr, align 4
  %292 = load i8**, i8*** %17, align 8
  %293 = load i64, i64* %16, align 8
  %294 = getelementptr inbounds i8*, i8** %292, i64 %293
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @fprintf(i32 %291, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %295)
  br label %297

297:                                              ; preds = %290
  %298 = load i64, i64* %16, align 8
  %299 = add i64 %298, 1
  store i64 %299, i64* %16, align 8
  br label %284

300:                                              ; preds = %284
  %301 = load i8**, i8*** %17, align 8
  %302 = call i32 @free(i8** %301)
  br label %303

303:                                              ; preds = %300, %109, %87, %64, %37
  ret void
}

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @CRYPTO_THREAD_compare_id(i32, i32) #1

declare dso_local i8** @backtrace_symbols(i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

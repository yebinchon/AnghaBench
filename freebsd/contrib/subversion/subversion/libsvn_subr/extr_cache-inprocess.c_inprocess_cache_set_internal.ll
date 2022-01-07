; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_inprocess_cache_set_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_inprocess_cache_set_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, %struct.cache_page*, i32, i32, i32, i32 (i32**, i64*, i8*, i32)*, %struct.cache_page*, i32 }
%struct.cache_page = type { %struct.cache_entry*, i32, %struct.cache_page*, i32* }
%struct.cache_entry = type { i64, i32, %struct.cache_entry*, %struct.cache_page*, i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i8*, i8*, i32*)* @inprocess_cache_set_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @inprocess_cache_set_internal(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca %struct.cache_page*, align 8
  %12 = alloca %struct.cache_page*, align 8
  %13 = alloca %struct.cache_page*, align 8
  %14 = alloca %struct.cache_page*, align 8
  %15 = alloca %struct.cache_entry*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.cache_entry* @apr_hash_get(i32 %18, i8* %19, i32 %22)
  store %struct.cache_entry* %23, %struct.cache_entry** %10, align 8
  %24 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %25 = icmp ne %struct.cache_entry* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %33 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %32, i32 0, i32 3
  %34 = load %struct.cache_page*, %struct.cache_page** %33, align 8
  store %struct.cache_page* %34, %struct.cache_page** %11, align 8
  %35 = load %struct.cache_page*, %struct.cache_page** %11, align 8
  %36 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @SVN_ERR_ASSERT(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load %struct.cache_page*, %struct.cache_page** %42, align 8
  %44 = icmp eq %struct.cache_page* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @SVN_ERR_ASSERT(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = load %struct.cache_page*, %struct.cache_page** %11, align 8
  %49 = call i32 @erase_page(%struct.TYPE_7__* %47, %struct.cache_page* %48)
  store %struct.cache_entry* null, %struct.cache_entry** %10, align 8
  br label %50

50:                                               ; preds = %31, %26, %4
  %51 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %52 = icmp ne %struct.cache_entry* %51, null
  br i1 %52, label %53, label %110

53:                                               ; preds = %50
  %54 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %55 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %54, i32 0, i32 3
  %56 = load %struct.cache_page*, %struct.cache_page** %55, align 8
  store %struct.cache_page* %56, %struct.cache_page** %12, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = load %struct.cache_page*, %struct.cache_page** %12, align 8
  %59 = call i32 @move_page_to_front(%struct.TYPE_7__* %57, %struct.cache_page* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %62 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %103

72:                                               ; preds = %53
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 7
  %75 = load i32 (i32**, i64*, i8*, i32)*, i32 (i32**, i64*, i8*, i32)** %74, align 8
  %76 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %77 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %76, i32 0, i32 4
  %78 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %79 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %78, i32 0, i32 0
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.cache_page*, %struct.cache_page** %12, align 8
  %82 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %75(i32** %77, i64* %79, i8* %80, i32 %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %87 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  %95 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %96 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %72
  %100 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %101 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %100, i32 0, i32 4
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %99, %72
  br label %108

103:                                              ; preds = %53
  %104 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %105 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %104, i32 0, i32 4
  store i32* null, i32** %105, align 8
  %106 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %107 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %103, %102
  %109 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %109, i32** %5, align 8
  br label %266

110:                                              ; preds = %50
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load %struct.cache_page*, %struct.cache_page** %112, align 8
  %114 = icmp eq %struct.cache_page* %113, null
  br i1 %114, label %115, label %142

115:                                              ; preds = %110
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %115
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @apr_pcalloc(i32 %123, i32 32)
  %125 = bitcast i8* %124 to %struct.cache_page*
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  store %struct.cache_page* %125, %struct.cache_page** %127, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @svn_pool_create(i32 %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load %struct.cache_page*, %struct.cache_page** %133, align 8
  %135 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %134, i32 0, i32 1
  store i32 %131, i32* %135, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  store i32 0, i32* %137, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, -1
  store i64 %141, i64* %139, align 8
  br label %142

142:                                              ; preds = %120, %115, %110
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load %struct.cache_page*, %struct.cache_page** %144, align 8
  %146 = icmp eq %struct.cache_page* %145, null
  br i1 %146, label %147, label %163

147:                                              ; preds = %142
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 8
  %150 = load %struct.cache_page*, %struct.cache_page** %149, align 8
  %151 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %150, i32 0, i32 2
  %152 = load %struct.cache_page*, %struct.cache_page** %151, align 8
  store %struct.cache_page* %152, %struct.cache_page** %13, align 8
  %153 = load %struct.cache_page*, %struct.cache_page** %13, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 8
  %156 = load %struct.cache_page*, %struct.cache_page** %155, align 8
  %157 = icmp ne %struct.cache_page* %153, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @SVN_ERR_ASSERT(i32 %158)
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %161 = load %struct.cache_page*, %struct.cache_page** %13, align 8
  %162 = call i32 @erase_page(%struct.TYPE_7__* %160, %struct.cache_page* %161)
  br label %163

163:                                              ; preds = %147, %142
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load %struct.cache_page*, %struct.cache_page** %165, align 8
  %167 = icmp ne %struct.cache_page* %166, null
  %168 = zext i1 %167 to i32
  %169 = call i32 @SVN_ERR_ASSERT(i32 %168)
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  %172 = load %struct.cache_page*, %struct.cache_page** %171, align 8
  store %struct.cache_page* %172, %struct.cache_page** %14, align 8
  %173 = load %struct.cache_page*, %struct.cache_page** %14, align 8
  %174 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @apr_pcalloc(i32 %175, i32 40)
  %177 = bitcast i8* %176 to %struct.cache_entry*
  store %struct.cache_entry* %177, %struct.cache_entry** %15, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %179 = load i8*, i8** %7, align 8
  %180 = load %struct.cache_page*, %struct.cache_page** %14, align 8
  %181 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @duplicate_key(%struct.TYPE_7__* %178, i8* %179, i32 %182)
  %184 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %185 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %219

188:                                              ; preds = %163
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 7
  %191 = load i32 (i32**, i64*, i8*, i32)*, i32 (i32**, i64*, i8*, i32)** %190, align 8
  %192 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %193 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %192, i32 0, i32 4
  %194 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %195 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %194, i32 0, i32 0
  %196 = load i8*, i8** %8, align 8
  %197 = load %struct.cache_page*, %struct.cache_page** %14, align 8
  %198 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 %191(i32** %193, i64* %195, i8* %196, i32 %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  %202 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %203 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %204
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %206, align 8
  %211 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %212 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %188
  %216 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %217 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %216, i32 0, i32 4
  store i32* null, i32** %217, align 8
  br label %218

218:                                              ; preds = %215, %188
  br label %224

219:                                              ; preds = %163
  %220 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %221 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %220, i32 0, i32 4
  store i32* null, i32** %221, align 8
  %222 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %223 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %222, i32 0, i32 0
  store i64 0, i64* %223, align 8
  br label %224

224:                                              ; preds = %219, %218
  %225 = load %struct.cache_page*, %struct.cache_page** %14, align 8
  %226 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %227 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %226, i32 0, i32 3
  store %struct.cache_page* %225, %struct.cache_page** %227, align 8
  %228 = load %struct.cache_page*, %struct.cache_page** %14, align 8
  %229 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %228, i32 0, i32 0
  %230 = load %struct.cache_entry*, %struct.cache_entry** %229, align 8
  %231 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %232 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %231, i32 0, i32 2
  store %struct.cache_entry* %230, %struct.cache_entry** %232, align 8
  %233 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %234 = load %struct.cache_page*, %struct.cache_page** %14, align 8
  %235 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %234, i32 0, i32 0
  store %struct.cache_entry* %233, %struct.cache_entry** %235, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %240 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %246 = call i32 @apr_hash_set(i32 %238, i32 %241, i32 %244, %struct.cache_entry* %245)
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 8
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp sge i32 %253, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %224
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %260 = load %struct.cache_page*, %struct.cache_page** %14, align 8
  %261 = call i32 @insert_page(%struct.TYPE_7__* %259, %struct.cache_page* %260)
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 3
  store %struct.cache_page* null, %struct.cache_page** %263, align 8
  br label %264

264:                                              ; preds = %258, %224
  %265 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %265, i32** %5, align 8
  br label %266

266:                                              ; preds = %264, %108
  %267 = load i32*, i32** %5, align 8
  ret i32* %267
}

declare dso_local %struct.cache_entry* @apr_hash_get(i32, i8*, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @erase_page(%struct.TYPE_7__*, %struct.cache_page*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @move_page_to_front(%struct.TYPE_7__*, %struct.cache_page*) #1

declare dso_local i8* @apr_pcalloc(i32, i32) #1

declare dso_local i32 @svn_pool_create(i32) #1

declare dso_local i32 @duplicate_key(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @apr_hash_set(i32, i32, i32, %struct.cache_entry*) #1

declare dso_local i32 @insert_page(%struct.TYPE_7__*, %struct.cache_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

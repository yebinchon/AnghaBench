; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_add_dir_recursive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_add_dir_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* (i32)*, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_EXISTS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (i8*, i64, i64, i64, i32*, i32*, i64, i32*, %struct.TYPE_23__*, i32*, i32*)* @add_dir_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @add_dir_recursive(i8* %0, i64 %1, i64 %2, i64 %3, i32* %4, i32* %5, i64 %6, i32* %7, %struct.TYPE_23__* %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_22__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.TYPE_21__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  store i8* %0, i8** %13, align 8
  store i64 %1, i64* %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i64 %6, i64* %19, align 8
  store i32* %7, i32** %20, align 8
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %28, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_22__* (i32)*, %struct.TYPE_22__* (i32)** %35, align 8
  %37 = icmp ne %struct.TYPE_22__* (i32)* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %11
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_22__* (i32)*, %struct.TYPE_22__* (i32)** %40, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_22__* %41(i32 %44)
  %46 = call i32 @SVN_ERR(%struct.TYPE_22__* %45)
  br label %47

47:                                               ; preds = %38, %11
  %48 = load i32*, i32** %23, align 8
  %49 = call i32* @svn_pool_create(i32* %48)
  store i32* %49, i32** %25, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = load i64, i64* @FALSE, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %25, align 8
  %62 = call %struct.TYPE_22__* @svn_wc_add_from_disk3(i32 %52, i8* %53, i32* null, i64 %54, i32 %57, i32 %60, i32* %61)
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %24, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %64 = icmp ne %struct.TYPE_22__* %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %47
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SVN_ERR_ENTRY_EXISTS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i64, i64* %15, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %76 = call i32 @svn_error_clear(%struct.TYPE_22__* %75)
  %77 = load i64, i64* @TRUE, align 8
  store i64 %77, i64* %28, align 8
  br label %85

78:                                               ; preds = %71, %65
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %80 = icmp ne %struct.TYPE_22__* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %83 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %82)
  store %struct.TYPE_22__* %83, %struct.TYPE_22__** %12, align 8
  br label %256

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %74
  br label %86

86:                                               ; preds = %85, %47
  %87 = load i64, i64* %19, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %13, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %22, align 8
  %98 = load i32*, i32** %25, align 8
  %99 = call %struct.TYPE_22__* @svn_wc_get_ignores2(i32** %20, i32 %92, i8* %93, i32 %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(%struct.TYPE_22__* %99)
  br label %101

101:                                              ; preds = %89, %86
  %102 = load i64, i64* %28, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %101
  %105 = load i32*, i32** %18, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i8*, i8** %13, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %110 = load i32*, i32** %23, align 8
  %111 = load i32*, i32** %25, align 8
  %112 = call %struct.TYPE_22__* @svn_client__get_all_auto_props(i32** %18, i8* %108, %struct.TYPE_23__* %109, i32* %110, i32* %111)
  %113 = call i32 @SVN_ERR(%struct.TYPE_22__* %112)
  br label %114

114:                                              ; preds = %107, %104, %101
  %115 = load i8*, i8** %13, align 8
  %116 = load i64, i64* @TRUE, align 8
  %117 = load i32*, i32** %23, align 8
  %118 = load i32*, i32** %25, align 8
  %119 = call %struct.TYPE_22__* @svn_io_get_dirents3(i32** %26, i8* %115, i64 %116, i32* %117, i32* %118)
  %120 = call i32 @SVN_ERR(%struct.TYPE_22__* %119)
  %121 = load i32*, i32** %23, align 8
  %122 = load i32*, i32** %26, align 8
  %123 = call i32* @apr_hash_first(i32* %121, i32* %122)
  store i32* %123, i32** %27, align 8
  br label %124

124:                                              ; preds = %249, %114
  %125 = load i32*, i32** %27, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %252

127:                                              ; preds = %124
  %128 = load i32*, i32** %27, align 8
  %129 = call i8* @apr_hash_this_key(i32* %128)
  store i8* %129, i8** %29, align 8
  %130 = load i32*, i32** %27, align 8
  %131 = call %struct.TYPE_21__* @apr_hash_this_val(i32* %130)
  store %struct.TYPE_21__* %131, %struct.TYPE_21__** %30, align 8
  %132 = load i32*, i32** %25, align 8
  %133 = call i32 @svn_pool_clear(i32* %132)
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_22__* (i32)*, %struct.TYPE_22__* (i32)** %135, align 8
  %137 = icmp ne %struct.TYPE_22__* (i32)* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %127
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_22__* (i32)*, %struct.TYPE_22__* (i32)** %140, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call %struct.TYPE_22__* %141(i32 %144)
  %146 = call i32 @SVN_ERR(%struct.TYPE_22__* %145)
  br label %147

147:                                              ; preds = %138, %127
  %148 = load i8*, i8** %29, align 8
  %149 = load i32*, i32** %25, align 8
  %150 = call i64 @svn_wc_is_adm_dir(i8* %148, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %249

153:                                              ; preds = %147
  %154 = load i32*, i32** %20, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load i8*, i8** %29, align 8
  %158 = load i32*, i32** %20, align 8
  %159 = load i32*, i32** %25, align 8
  %160 = call i64 @svn_wc_match_ignore_list(i8* %157, i32* %158, i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %249

163:                                              ; preds = %156, %153
  %164 = load i8*, i8** %13, align 8
  %165 = load i8*, i8** %29, align 8
  %166 = load i32*, i32** %25, align 8
  %167 = call i8* @svn_dirent_join(i8* %164, i8* %165, i32* %166)
  store i8* %167, i8** %31, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @svn_node_dir, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %206

173:                                              ; preds = %163
  %174 = load i64, i64* %14, align 8
  %175 = load i64, i64* @svn_depth_immediates, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %206

177:                                              ; preds = %173
  %178 = load i64, i64* %14, align 8
  store i64 %178, i64* %32, align 8
  %179 = load i64, i64* %14, align 8
  %180 = load i64, i64* @svn_depth_immediates, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = load i64, i64* @svn_depth_empty, align 8
  store i64 %183, i64* %32, align 8
  br label %184

184:                                              ; preds = %182, %177
  %185 = load i64, i64* %19, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load i64, i64* %28, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = load i64, i64* @FALSE, align 8
  store i64 %191, i64* %19, align 8
  br label %192

192:                                              ; preds = %190, %187, %184
  %193 = load i8*, i8** %31, align 8
  %194 = load i64, i64* %32, align 8
  %195 = load i64, i64* %15, align 8
  %196 = load i64, i64* %16, align 8
  %197 = load i32*, i32** %17, align 8
  %198 = load i32*, i32** %18, align 8
  %199 = load i64, i64* %19, align 8
  %200 = load i32*, i32** %20, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %202 = load i32*, i32** %22, align 8
  %203 = load i32*, i32** %25, align 8
  %204 = call %struct.TYPE_22__* @add_dir_recursive(i8* %193, i64 %194, i64 %195, i64 %196, i32* %197, i32* %198, i64 %199, i32* %200, %struct.TYPE_23__* %201, i32* %202, i32* %203)
  %205 = call i32 @SVN_ERR(%struct.TYPE_22__* %204)
  br label %248

206:                                              ; preds = %173, %163
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @svn_node_file, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %217, label %212

212:                                              ; preds = %206
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %247

217:                                              ; preds = %212, %206
  %218 = load i64, i64* %14, align 8
  %219 = load i64, i64* @svn_depth_files, align 8
  %220 = icmp sge i64 %218, %219
  br i1 %220, label %221, label %247

221:                                              ; preds = %217
  %222 = load i8*, i8** %31, align 8
  %223 = load i32*, i32** %17, align 8
  %224 = load i32*, i32** %18, align 8
  %225 = load i64, i64* %16, align 8
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %227 = load i32*, i32** %25, align 8
  %228 = call %struct.TYPE_22__* @add_file(i8* %222, i32* %223, i32* %224, i64 %225, %struct.TYPE_23__* %226, i32* %227)
  store %struct.TYPE_22__* %228, %struct.TYPE_22__** %24, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %230 = icmp ne %struct.TYPE_22__* %229, null
  br i1 %230, label %231, label %243

231:                                              ; preds = %221
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @SVN_ERR_ENTRY_EXISTS, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %231
  %238 = load i64, i64* %15, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %242 = call i32 @svn_error_clear(%struct.TYPE_22__* %241)
  br label %246

243:                                              ; preds = %237, %231, %221
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %245 = call i32 @SVN_ERR(%struct.TYPE_22__* %244)
  br label %246

246:                                              ; preds = %243, %240
  br label %247

247:                                              ; preds = %246, %217, %212
  br label %248

248:                                              ; preds = %247, %192
  br label %249

249:                                              ; preds = %248, %162, %152
  %250 = load i32*, i32** %27, align 8
  %251 = call i32* @apr_hash_next(i32* %250)
  store i32* %251, i32** %27, align 8
  br label %124

252:                                              ; preds = %124
  %253 = load i32*, i32** %25, align 8
  %254 = call i32 @svn_pool_destroy(i32* %253)
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %255, %struct.TYPE_22__** %12, align 8
  br label %256

256:                                              ; preds = %252, %81
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  ret %struct.TYPE_22__* %257
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_22__*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_22__* @svn_wc_add_from_disk3(i32, i8*, i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_wc_get_ignores2(i32**, i32, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_client__get_all_auto_props(i32**, i8*, %struct.TYPE_23__*, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_io_get_dirents3(i32**, i8*, i64, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_21__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i64 @svn_wc_is_adm_dir(i8*, i32*) #1

declare dso_local i64 @svn_wc_match_ignore_list(i8*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_22__* @add_file(i8*, i32*, i32*, i64, %struct.TYPE_23__*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

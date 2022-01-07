; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_delta_dirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_delta_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@change_dir_prop = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.context*, i8*, i64, i8*, i8*, i8*, i32*)* @delta_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @delta_dirs(%struct.context* %0, i8* %1, i64 %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.context*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_4__*, align 8
  %22 = alloca %struct.TYPE_4__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_4__*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  store %struct.context* %0, %struct.context** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @SVN_ERR_ASSERT(i8* %32)
  %34 = load %struct.context*, %struct.context** %8, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* @change_dir_prop, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @delta_proplists(%struct.context* %34, i8* %35, i8* %36, i32 %37, i8* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.context*, %struct.context** %8, align 8
  %43 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @svn_fs_dir_entries(i32** %16, i32 %44, i8* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %7
  %52 = load %struct.context*, %struct.context** %8, align 8
  %53 = getelementptr inbounds %struct.context, %struct.context* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @svn_fs_dir_entries(i32** %15, i32 %54, i8* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %51, %7
  %60 = load i32*, i32** %14, align 8
  %61 = call i32* @svn_pool_create(i32* %60)
  store i32* %61, i32** %18, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = call i32* @apr_hash_first(i32* %62, i32* %63)
  store i32* %64, i32** %17, align 8
  br label %65

65:                                               ; preds = %212, %59
  %66 = load i32*, i32** %17, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %215

68:                                               ; preds = %65
  %69 = load i32*, i32** %17, align 8
  %70 = call i8* @apr_hash_this_key(i32* %69)
  store i8* %70, i8** %19, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = call i32 @apr_hash_this_key_len(i32* %71)
  store i32 %72, i32* %20, align 4
  %73 = load i32*, i32** %17, align 8
  %74 = call %struct.TYPE_4__* @apr_hash_this_val(i32* %73)
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %21, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = call i32 @svn_pool_clear(i32* %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %26, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = call i8* @svn_relpath_join(i8* %80, i32 %83, i32* %84)
  store i8* %85, i8** %23, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %18, align 8
  %91 = call i8* @svn_relpath_join(i8* %86, i32 %89, i32* %90)
  store i8* %91, i8** %24, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %183

94:                                               ; preds = %68
  %95 = load i32*, i32** %15, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = load i32, i32* %20, align 4
  %98 = call %struct.TYPE_4__* @apr_hash_get(i32* %95, i8* %96, i32 %97)
  store %struct.TYPE_4__* %98, %struct.TYPE_4__** %22, align 8
  %99 = icmp ne %struct.TYPE_4__* %98, null
  br i1 %99, label %100, label %183

100:                                              ; preds = %94
  %101 = load i8*, i8** %11, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = call i8* @svn_relpath_join(i8* %101, i32 %104, i32* %105)
  store i8* %106, i8** %25, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %27, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @svn_depth_infinity, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %125, label %113

113:                                              ; preds = %100
  %114 = load i64, i64* %27, align 8
  %115 = load i64, i64* @svn_node_dir, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %27, align 8
  %119 = load i64, i64* @svn_node_dir, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %179

121:                                              ; preds = %117
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @svn_depth_immediates, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %179

125:                                              ; preds = %121, %113, %100
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @svn_fs_compare_ids(i32 %128, i32 %131)
  store i32 %132, i32* %28, align 4
  %133 = load i32, i32* %28, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %178

136:                                              ; preds = %125
  %137 = load i64, i64* %27, align 8
  %138 = load i64, i64* %26, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %148, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %28, align 4
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %165

143:                                              ; preds = %140
  %144 = load %struct.context*, %struct.context** %8, align 8
  %145 = getelementptr inbounds %struct.context, %struct.context* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %165, label %148

148:                                              ; preds = %143, %136
  %149 = load %struct.context*, %struct.context** %8, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load i8*, i8** %24, align 8
  %152 = load i32*, i32** %18, align 8
  %153 = call i32 @delete(%struct.context* %149, i8* %150, i8* %151, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  %155 = load %struct.context*, %struct.context** %8, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = load i64, i64* %10, align 8
  %158 = call i32 @MAYBE_DEMOTE_DEPTH(i64 %157)
  %159 = load i8*, i8** %23, align 8
  %160 = load i8*, i8** %24, align 8
  %161 = load i64, i64* %26, align 8
  %162 = load i32*, i32** %18, align 8
  %163 = call i32 @add_file_or_dir(%struct.context* %155, i8* %156, i32 %158, i8* %159, i8* %160, i64 %161, i32* %162)
  %164 = call i32 @SVN_ERR(i32 %163)
  br label %177

165:                                              ; preds = %143, %140
  %166 = load %struct.context*, %struct.context** %8, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @MAYBE_DEMOTE_DEPTH(i64 %168)
  %170 = load i8*, i8** %25, align 8
  %171 = load i8*, i8** %23, align 8
  %172 = load i8*, i8** %24, align 8
  %173 = load i64, i64* %26, align 8
  %174 = load i32*, i32** %18, align 8
  %175 = call i32 @replace_file_or_dir(%struct.context* %166, i8* %167, i32 %169, i8* %170, i8* %171, i8* %172, i64 %173, i32* %174)
  %176 = call i32 @SVN_ERR(i32 %175)
  br label %177

177:                                              ; preds = %165, %148
  br label %178

178:                                              ; preds = %177, %135
  br label %179

179:                                              ; preds = %178, %121, %117
  %180 = load i32*, i32** %15, align 8
  %181 = load i8*, i8** %19, align 8
  %182 = call i32 @svn_hash_sets(i32* %180, i8* %181, i32* null)
  br label %211

183:                                              ; preds = %94, %68
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* @svn_depth_infinity, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %199, label %187

187:                                              ; preds = %183
  %188 = load i64, i64* %26, align 8
  %189 = load i64, i64* @svn_node_dir, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %199, label %191

191:                                              ; preds = %187
  %192 = load i64, i64* %26, align 8
  %193 = load i64, i64* @svn_node_dir, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %191
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* @svn_depth_immediates, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %195, %187, %183
  %200 = load %struct.context*, %struct.context** %8, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = load i64, i64* %10, align 8
  %203 = call i32 @MAYBE_DEMOTE_DEPTH(i64 %202)
  %204 = load i8*, i8** %23, align 8
  %205 = load i8*, i8** %24, align 8
  %206 = load i64, i64* %26, align 8
  %207 = load i32*, i32** %18, align 8
  %208 = call i32 @add_file_or_dir(%struct.context* %200, i8* %201, i32 %203, i8* %204, i8* %205, i64 %206, i32* %207)
  %209 = call i32 @SVN_ERR(i32 %208)
  br label %210

210:                                              ; preds = %199, %195, %191
  br label %211

211:                                              ; preds = %210, %179
  br label %212

212:                                              ; preds = %211
  %213 = load i32*, i32** %17, align 8
  %214 = call i32* @apr_hash_next(i32* %213)
  store i32* %214, i32** %17, align 8
  br label %65

215:                                              ; preds = %65
  %216 = load i32*, i32** %15, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %266

218:                                              ; preds = %215
  %219 = load i32*, i32** %14, align 8
  %220 = load i32*, i32** %15, align 8
  %221 = call i32* @apr_hash_first(i32* %219, i32* %220)
  store i32* %221, i32** %17, align 8
  br label %222

222:                                              ; preds = %262, %218
  %223 = load i32*, i32** %17, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %265

225:                                              ; preds = %222
  %226 = load i32*, i32** %17, align 8
  %227 = call %struct.TYPE_4__* @apr_hash_this_val(i32* %226)
  store %struct.TYPE_4__* %227, %struct.TYPE_4__** %29, align 8
  %228 = load i32*, i32** %18, align 8
  %229 = call i32 @svn_pool_clear(i32* %228)
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %31, align 8
  %233 = load i8*, i8** %13, align 8
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32*, i32** %18, align 8
  %238 = call i8* @svn_relpath_join(i8* %233, i32 %236, i32* %237)
  store i8* %238, i8** %30, align 8
  %239 = load i64, i64* %10, align 8
  %240 = load i64, i64* @svn_depth_infinity, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %254, label %242

242:                                              ; preds = %225
  %243 = load i64, i64* %31, align 8
  %244 = load i64, i64* @svn_node_dir, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %254, label %246

246:                                              ; preds = %242
  %247 = load i64, i64* %31, align 8
  %248 = load i64, i64* @svn_node_dir, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %261

250:                                              ; preds = %246
  %251 = load i64, i64* %10, align 8
  %252 = load i64, i64* @svn_depth_immediates, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %261

254:                                              ; preds = %250, %242, %225
  %255 = load %struct.context*, %struct.context** %8, align 8
  %256 = load i8*, i8** %9, align 8
  %257 = load i8*, i8** %30, align 8
  %258 = load i32*, i32** %18, align 8
  %259 = call i32 @delete(%struct.context* %255, i8* %256, i8* %257, i32* %258)
  %260 = call i32 @SVN_ERR(i32 %259)
  br label %261

261:                                              ; preds = %254, %250, %246
  br label %262

262:                                              ; preds = %261
  %263 = load i32*, i32** %17, align 8
  %264 = call i32* @apr_hash_next(i32* %263)
  store i32* %264, i32** %17, align 8
  br label %222

265:                                              ; preds = %222
  br label %266

266:                                              ; preds = %265, %215
  %267 = load i32*, i32** %18, align 8
  %268 = call i32 @svn_pool_destroy(i32* %267)
  %269 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %269
}

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @delta_proplists(%struct.context*, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_dir_entries(i32**, i32, i8*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @apr_hash_this_key_len(i32*) #1

declare dso_local %struct.TYPE_4__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @apr_hash_get(i32*, i8*, i32) #1

declare dso_local i32 @svn_fs_compare_ids(i32, i32) #1

declare dso_local i32 @delete(%struct.context*, i8*, i8*, i32*) #1

declare dso_local i32 @add_file_or_dir(%struct.context*, i8*, i32, i8*, i8*, i64, i32*) #1

declare dso_local i32 @MAYBE_DEMOTE_DEPTH(i64) #1

declare dso_local i32 @replace_file_or_dir(%struct.context*, i8*, i32, i8*, i8*, i8*, i64, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

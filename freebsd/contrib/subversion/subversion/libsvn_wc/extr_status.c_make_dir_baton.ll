; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_make_dir_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_make_dir_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i8*, i64, i32, i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.dir_baton = type { i8*, i64, i32, i8*, i32*, i32, i32, i64, i32, %struct.dir_baton*, %struct.edit_baton*, i32*, i32* }
%struct.TYPE_5__ = type { i64, i64 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@hash_stash = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, %struct.edit_baton*, %struct.dir_baton*, i32*)* @make_dir_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_dir_baton(i8** %0, i8* %1, %struct.edit_baton* %2, %struct.dir_baton* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.edit_baton*, align 8
  %9 = alloca %struct.dir_baton*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dir_baton*, align 8
  %12 = alloca %struct.edit_baton*, align 8
  %13 = alloca %struct.dir_baton*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.edit_baton* %2, %struct.edit_baton** %8, align 8
  store %struct.dir_baton* %3, %struct.dir_baton** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  store %struct.dir_baton* %19, %struct.dir_baton** %11, align 8
  %20 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  store %struct.edit_baton* %20, %struct.edit_baton** %12, align 8
  %21 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %22 = icmp ne %struct.dir_baton* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %25 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %24, i32 0, i32 12
  %26 = load i32*, i32** %25, align 8
  %27 = call i32* @svn_pool_create(i32* %26)
  store i32* %27, i32** %16, align 8
  br label %31

28:                                               ; preds = %5
  %29 = load i32*, i32** %10, align 8
  %30 = call i32* @svn_pool_create(i32* %29)
  store i32* %30, i32** %16, align 8
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32*, i32** %16, align 8
  %33 = call %struct.dir_baton* @apr_pcalloc(i32* %32, i32 96)
  store %struct.dir_baton* %33, %struct.dir_baton** %13, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %38 = icmp ne %struct.dir_baton* %37, null
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i1 [ true, %31 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @SVN_ERR_ASSERT(i32 %42)
  %44 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %45 = icmp ne %struct.dir_baton* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %48 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = call i8* @svn_dirent_join(i8* %49, i8* %50, i32* %51)
  store i8* %52, i8** %14, align 8
  br label %57

53:                                               ; preds = %40
  %54 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %55 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %14, align 8
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i32*, i32** %16, align 8
  %59 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %60 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %59, i32 0, i32 12
  store i32* %58, i32** %60, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %63 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i8*, i8** %7, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = call i32* @svn_dirent_basename(i8* %67, i32* %68)
  br label %71

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i32* [ %69, %66 ], [ null, %70 ]
  %73 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %74 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %73, i32 0, i32 11
  store i32* %72, i32** %74, align 8
  %75 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %76 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %77 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %76, i32 0, i32 10
  store %struct.edit_baton* %75, %struct.edit_baton** %77, align 8
  %78 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %79 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %80 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %79, i32 0, i32 9
  store %struct.dir_baton* %78, %struct.dir_baton** %80, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @apr_hash_make(i32* %81)
  %83 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %84 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %86 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %87 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 8
  %88 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %89 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %88, i32 0, i32 7
  store i64 0, i64* %89, align 8
  %90 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = call i32 @find_dir_repos_relpath(%struct.dir_baton* %90, i32* %91)
  %93 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %94 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @svn_node_dir, align 4
  %96 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %97 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %99 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %98, i32 0, i32 4
  store i32* null, i32** %99, align 8
  %100 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %101 = icmp ne %struct.dir_baton* %100, null
  br i1 %101, label %102, label %155

102:                                              ; preds = %71
  %103 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %104 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i8*, i8** @TRUE, align 8
  %109 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %110 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  br label %154

111:                                              ; preds = %102
  %112 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %113 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @svn_depth_immediates, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i64, i64* @svn_depth_empty, align 8
  %119 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %120 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %153

121:                                              ; preds = %111
  %122 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %123 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @svn_depth_files, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %129 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @svn_depth_empty, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127, %121
  %134 = load i8*, i8** @TRUE, align 8
  %135 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %136 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  br label %152

137:                                              ; preds = %127
  %138 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %139 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @svn_depth_unknown, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load i64, i64* @svn_depth_unknown, align 8
  %145 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %146 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  br label %151

147:                                              ; preds = %137
  %148 = load i64, i64* @svn_depth_infinity, align 8
  %149 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %150 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %133
  br label %153

153:                                              ; preds = %152, %117
  br label %154

154:                                              ; preds = %153, %107
  br label %161

155:                                              ; preds = %71
  %156 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %157 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %160 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %155, %154
  %162 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %163 = icmp ne %struct.dir_baton* %162, null
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %166 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %169 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @svn_hash_gets(i32 %167, i8* %170)
  %172 = bitcast i8* %171 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %172, %struct.TYPE_6__** %15, align 8
  br label %177

173:                                              ; preds = %161
  %174 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %175 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %174, i32 0, i32 6
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  store %struct.TYPE_6__* %176, %struct.TYPE_6__** %15, align 8
  br label %177

177:                                              ; preds = %173, %164
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %179 = icmp ne %struct.TYPE_6__* %178, null
  br i1 %179, label %180, label %294

180:                                              ; preds = %177
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %294

185:                                              ; preds = %180
  %186 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %187 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %186, i32 0, i32 3
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %294, label %190

190:                                              ; preds = %185
  %191 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %192 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @svn_depth_unknown, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %214, label %196

196:                                              ; preds = %190
  %197 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %198 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @svn_depth_infinity, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %214, label %202

202:                                              ; preds = %196
  %203 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %204 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @svn_depth_files, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %210 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @svn_depth_immediates, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %294

214:                                              ; preds = %208, %202, %196, %190
  %215 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %216 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %215, i32 0, i32 5
  %217 = load i32*, i32** %216, align 8
  store i32* %217, i32** %18, align 8
  %218 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %219 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %218, i32 0, i32 4
  %220 = load i8*, i8** %14, align 8
  %221 = load i8*, i8** @TRUE, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32*, i32** %18, align 8
  %231 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %232 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @svn_depth_files, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %214
  %237 = load i64, i64* @svn_depth_files, align 8
  br label %240

238:                                              ; preds = %214
  %239 = load i64, i64* @svn_depth_immediates, align 8
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i64 [ %237, %236 ], [ %239, %238 ]
  %242 = load i8*, i8** @TRUE, align 8
  %243 = load i8*, i8** @TRUE, align 8
  %244 = load i32, i32* @hash_stash, align 4
  %245 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %246 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %249 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %252 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load i32*, i32** %16, align 8
  %255 = call i32 @get_dir_status(i32* %219, i8* %220, i8* %221, i32 %225, i32* null, i32 %229, i32* null, i32* null, i32* %230, i64 %241, i8* %242, i8* %243, i32 %244, i32 %247, i32 %250, i32 %253, i32* %254)
  %256 = call i32 @SVN_ERR(i32 %255)
  %257 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %258 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %261 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = call i8* @svn_hash_gets(i32 %259, i8* %262)
  %264 = bitcast i8* %263 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %264, %struct.TYPE_5__** %17, align 8
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %266 = icmp ne %struct.TYPE_5__* %265, null
  br i1 %266, label %267, label %293

267:                                              ; preds = %240
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %293

272:                                              ; preds = %267
  %273 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %274 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @svn_depth_unknown, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %287, label %278

278:                                              ; preds = %272
  %279 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %280 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp sgt i64 %281, %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %278, %272
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %292 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %291, i32 0, i32 1
  store i64 %290, i64* %292, align 8
  br label %293

293:                                              ; preds = %287, %278, %267, %240
  br label %294

294:                                              ; preds = %293, %208, %185, %180, %177
  %295 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %296 = bitcast %struct.dir_baton* %295 to i8*
  %297 = load i8**, i8*** %6, align 8
  store i8* %296, i8** %297, align 8
  %298 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %298
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.dir_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @find_dir_repos_relpath(%struct.dir_baton*, i32*) #1

declare dso_local i8* @svn_hash_gets(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_dir_status(i32*, i8*, i8*, i32, i32*, i32, i32*, i32*, i32*, i64, i8*, i8*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_history_prev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_history_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8*, i64, i32, i64, i8*, i64, %struct.TYPE_19__, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_19__ }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_21__**, %struct.TYPE_21__*, i32, i32*, i32*)* @history_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @history_prev(%struct.TYPE_21__** %0, %struct.TYPE_21__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_21__**, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_19__, align 4
  %28 = alloca %struct.TYPE_18__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  store %struct.TYPE_22__* %36, %struct.TYPE_22__** %12, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %15, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %19, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 7
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %20, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %24, align 4
  %49 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %49, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @SVN_IS_VALID_REVNUM(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %111

55:                                               ; preds = %5
  %56 = load i64, i64* %19, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %111

61:                                               ; preds = %55
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 6
  %64 = call i64 @svn_fs_x__id_used(%struct.TYPE_19__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %111

66:                                               ; preds = %61
  %67 = load i32, i32* %24, align 4
  %68 = call i32 @assert(i32 %67)
  %69 = load i32*, i32** %20, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 6
  %72 = load i32*, i32** %11, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @svn_fs_x__get_node_revision(%struct.TYPE_18__** %28, i32* %69, %struct.TYPE_19__* %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = call i64 @svn_fs_x__id_used(%struct.TYPE_19__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %66
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %6, align 8
  br label %275

82:                                               ; preds = %66
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @svn_fs_x__get_revnum(i32 %86)
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %82
  %94 = load i32*, i32** %20, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i32, i32* @TRUE, align 4
  %100 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i32*, i32** %10, align 8
  %107 = call %struct.TYPE_21__* @assemble_history(i32* %94, i8* %97, i64 %98, i32 %99, i8* null, i64 %100, i64 %103, %struct.TYPE_19__* %105, i32* %106)
  %108 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* %107, %struct.TYPE_21__** %108, align 8
  %109 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %109, i32** %6, align 8
  br label %275

110:                                              ; preds = %82
  br label %111

111:                                              ; preds = %110, %61, %55, %5
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 4
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %135

116:                                              ; preds = %111
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @SVN_IS_VALID_REVNUM(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %116
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %24, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %127, i32** %6, align 8
  br label %275

128:                                              ; preds = %122
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %15, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %19, align 8
  br label %135

135:                                              ; preds = %128, %116, %111
  %136 = load i32*, i32** %20, align 8
  %137 = load i64, i64* %19, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @svn_fs_x__revision_root(i32** %23, i32* %136, i64 %137, i32* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load i32*, i32** %23, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = load i32, i32* @FALSE, align 4
  %144 = load i32*, i32** %11, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @svn_fs_x__get_dag_path(%struct.TYPE_20__** %21, i32* %141, i8* %142, i32 0, i32 %143, i32* %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** %22, align 8
  %151 = load i32*, i32** %22, align 8
  %152 = call i8* @svn_fs_x__dag_get_created_path(i32* %151)
  store i8* %152, i8** %13, align 8
  %153 = load i32*, i32** %22, align 8
  %154 = call i64 @svn_fs_x__dag_get_revision(i32* %153)
  store i64 %154, i64* %16, align 8
  %155 = call i32 @svn_fs_x__id_reset(%struct.TYPE_19__* %27)
  %156 = load i64, i64* %19, align 8
  %157 = load i64, i64* %16, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %193

159:                                              ; preds = %135
  %160 = load i32, i32* %24, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %159
  %163 = load i32*, i32** %20, align 8
  %164 = load i8*, i8** %13, align 8
  %165 = load i64, i64* %16, align 8
  %166 = load i32, i32* @TRUE, align 4
  %167 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %168 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %169 = load i32*, i32** %10, align 8
  %170 = call %struct.TYPE_21__* @assemble_history(i32* %163, i8* %164, i64 %165, i32 %166, i8* null, i64 %167, i64 %168, %struct.TYPE_19__* null, i32* %169)
  %171 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* %170, %struct.TYPE_21__** %171, align 8
  %172 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %172, i32** %6, align 8
  br label %275

173:                                              ; preds = %159
  %174 = load i32*, i32** %22, align 8
  %175 = call %struct.TYPE_19__* @svn_fs_x__dag_get_predecessor_id(i32* %174)
  %176 = bitcast %struct.TYPE_19__* %27 to i8*
  %177 = bitcast %struct.TYPE_19__* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 4 %177, i64 4, i1 false)
  %178 = call i64 @svn_fs_x__id_used(%struct.TYPE_19__* %27)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %173
  %181 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %181, i32** %6, align 8
  br label %275

182:                                              ; preds = %173
  %183 = load i32*, i32** %20, align 8
  %184 = load i32*, i32** %11, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = call i32 @svn_fs_x__dag_get_node(i32** %22, i32* %183, %struct.TYPE_19__* %27, i32* %184, i32* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  %188 = load i32*, i32** %22, align 8
  %189 = call i8* @svn_fs_x__dag_get_created_path(i32* %188)
  store i8* %189, i8** %13, align 8
  %190 = load i32*, i32** %22, align 8
  %191 = call i64 @svn_fs_x__dag_get_revision(i32* %190)
  store i64 %191, i64* %16, align 8
  br label %192

192:                                              ; preds = %182
  br label %193

193:                                              ; preds = %192, %135
  %194 = load i32*, i32** %20, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %196 = call i32 @find_youngest_copyroot(i64* %25, i8** %26, i32* %194, %struct.TYPE_20__* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  store i8* null, i8** %14, align 8
  %198 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %198, i64* %17, align 8
  %199 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %199, i64* %18, align 8
  %200 = load i64, i64* %25, align 8
  %201 = load i64, i64* %16, align 8
  %202 = icmp sgt i64 %200, %201
  br i1 %202, label %203, label %232

203:                                              ; preds = %193
  %204 = load i32*, i32** %20, align 8
  %205 = load i64, i64* %25, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = call i32 @svn_fs_x__revision_root(i32** %32, i32* %204, i64 %205, i32* %206)
  %208 = call i32 @SVN_ERR(i32 %207)
  %209 = load i32*, i32** %32, align 8
  %210 = load i8*, i8** %26, align 8
  %211 = load i32*, i32** %11, align 8
  %212 = call i32 @svn_fs_x__get_temp_dag_node(i32** %22, i32* %209, i8* %210, i32* %211)
  %213 = call i32 @SVN_ERR(i32 %212)
  %214 = load i32*, i32** %22, align 8
  %215 = call i8* @svn_fs_x__dag_get_created_path(i32* %214)
  store i8* %215, i8** %30, align 8
  %216 = load i8*, i8** %30, align 8
  %217 = load i8*, i8** %15, align 8
  %218 = call i8* @svn_fspath__skip_ancestor(i8* %216, i8* %217)
  store i8* %218, i8** %29, align 8
  %219 = load i8*, i8** %29, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %231

221:                                              ; preds = %203
  %222 = load i32*, i32** %22, align 8
  %223 = call i64 @svn_fs_x__dag_get_copyfrom_rev(i32* %222)
  store i64 %223, i64* %17, align 8
  %224 = load i32*, i32** %22, align 8
  %225 = call i8* @svn_fs_x__dag_get_copyfrom_path(i32* %224)
  store i8* %225, i8** %31, align 8
  %226 = load i64, i64* %25, align 8
  store i64 %226, i64* %18, align 8
  %227 = load i8*, i8** %31, align 8
  %228 = load i8*, i8** %29, align 8
  %229 = load i32*, i32** %11, align 8
  %230 = call i8* @svn_fspath__join(i8* %227, i8* %228, i32* %229)
  store i8* %230, i8** %14, align 8
  br label %231

231:                                              ; preds = %221, %203
  br label %232

232:                                              ; preds = %231, %193
  %233 = load i8*, i8** %14, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %263

235:                                              ; preds = %232
  %236 = load i64, i64* %17, align 8
  %237 = call i64 @SVN_IS_VALID_REVNUM(i64 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %263

239:                                              ; preds = %235
  %240 = load i32, i32* @FALSE, align 4
  store i32 %240, i32* %33, align 4
  %241 = load i64, i64* %18, align 8
  %242 = load i64, i64* %19, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load i32, i32* %24, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = load i32, i32* @TRUE, align 4
  store i32 %248, i32* %33, align 4
  br label %249

249:                                              ; preds = %247, %244, %239
  %250 = load i32*, i32** %20, align 8
  %251 = load i8*, i8** %15, align 8
  %252 = load i64, i64* %18, align 8
  %253 = load i32, i32* %33, align 4
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = load i8*, i8** %14, align 8
  %258 = load i64, i64* %17, align 8
  %259 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %260 = load i32*, i32** %10, align 8
  %261 = call %struct.TYPE_21__* @assemble_history(i32* %250, i8* %251, i64 %252, i32 %256, i8* %257, i64 %258, i64 %259, %struct.TYPE_19__* null, i32* %260)
  %262 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* %261, %struct.TYPE_21__** %262, align 8
  br label %273

263:                                              ; preds = %235, %232
  %264 = load i32*, i32** %20, align 8
  %265 = load i8*, i8** %13, align 8
  %266 = load i64, i64* %16, align 8
  %267 = load i32, i32* @TRUE, align 4
  %268 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %269 = load i64, i64* %25, align 8
  %270 = load i32*, i32** %10, align 8
  %271 = call %struct.TYPE_21__* @assemble_history(i32* %264, i8* %265, i64 %266, i32 %267, i8* null, i64 %268, i64 %269, %struct.TYPE_19__* %27, i32* %270)
  %272 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* %271, %struct.TYPE_21__** %272, align 8
  br label %273

273:                                              ; preds = %263, %249
  %274 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %274, i32** %6, align 8
  br label %275

275:                                              ; preds = %273, %180, %162, %126, %93, %80
  %276 = load i32*, i32** %6, align 8
  ret i32* %276
}

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i64 @svn_fs_x__id_used(%struct.TYPE_19__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_node_revision(%struct.TYPE_18__**, i32*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i64 @svn_fs_x__get_revnum(i32) #1

declare dso_local %struct.TYPE_21__* @assemble_history(i32*, i8*, i64, i32, i8*, i64, i64, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_fs_x__revision_root(i32**, i32*, i64, i32*) #1

declare dso_local i32 @svn_fs_x__get_dag_path(%struct.TYPE_20__**, i32*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i8* @svn_fs_x__dag_get_created_path(i32*) #1

declare dso_local i64 @svn_fs_x__dag_get_revision(i32*) #1

declare dso_local i32 @svn_fs_x__id_reset(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @svn_fs_x__dag_get_predecessor_id(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @svn_fs_x__dag_get_node(i32**, i32*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @find_youngest_copyroot(i64*, i8**, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @svn_fs_x__get_temp_dag_node(i32**, i32*, i8*, i32*) #1

declare dso_local i8* @svn_fspath__skip_ancestor(i8*, i8*) #1

declare dso_local i64 @svn_fs_x__dag_get_copyfrom_rev(i32*) #1

declare dso_local i8* @svn_fs_x__dag_get_copyfrom_path(i32*) #1

declare dso_local i8* @svn_fspath__join(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_history_prev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_history_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.history_prev_args = type { i32, i32*, %struct.TYPE_22__*, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i8*, i64, i32, i8*, i64, i32* }
%struct.TYPE_23__ = type { i32* }
%struct.revision_root_args = type { i64, i32** }
%struct.TYPE_24__ = type { i64, i32, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@copy_kind_soft = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_21__*)* @txn_body_history_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_history_prev(i8* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.history_prev_args*, align 8
  %7 = alloca %struct.TYPE_22__**, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.revision_root_args, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_24__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = bitcast i8* %33 to %struct.history_prev_args*
  store %struct.history_prev_args* %34, %struct.history_prev_args** %6, align 8
  %35 = load %struct.history_prev_args*, %struct.history_prev_args** %6, align 8
  %36 = getelementptr inbounds %struct.history_prev_args, %struct.history_prev_args* %35, i32 0, i32 3
  %37 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %36, align 8
  store %struct.TYPE_22__** %37, %struct.TYPE_22__*** %7, align 8
  %38 = load %struct.history_prev_args*, %struct.history_prev_args** %6, align 8
  %39 = getelementptr inbounds %struct.history_prev_args, %struct.history_prev_args* %38, i32 0, i32 2
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %8, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %42, align 8
  store %struct.TYPE_25__* %43, %struct.TYPE_25__** %9, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %16, align 8
  %50 = load %struct.history_prev_args*, %struct.history_prev_args** %6, align 8
  %51 = getelementptr inbounds %struct.history_prev_args, %struct.history_prev_args* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %17, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %18, align 8
  store i8* null, i8** %23, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %25, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %27, align 8
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %28, align 4
  %60 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %60, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %2
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @SVN_IS_VALID_REVNUM(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %25, align 4
  %73 = load %struct.history_prev_args*, %struct.history_prev_args** %6, align 8
  %74 = getelementptr inbounds %struct.history_prev_args, %struct.history_prev_args* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %3, align 8
  br label %308

79:                                               ; preds = %71
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %12, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %16, align 8
  br label %86

86:                                               ; preds = %79, %65, %2
  %87 = getelementptr inbounds %struct.revision_root_args, %struct.revision_root_args* %24, i32 0, i32 1
  store i32** %21, i32*** %87, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds %struct.revision_root_args, %struct.revision_root_args* %24, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = call i32 @txn_body_revision_root(%struct.revision_root_args* %24, %struct.TYPE_21__* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i32*, i32** %18, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @svn_fs_base__rev_get_txn_id(i8** %26, i32* %93, i64 %94, %struct.TYPE_21__* %95, i32 %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load i32*, i32** %21, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %26, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @open_path(%struct.TYPE_23__** %19, i32* %101, i8* %102, i32 0, i8* %103, %struct.TYPE_21__* %104, i32 %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %20, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = call i32* @svn_fs_base__dag_get_id(i32* %113)
  store i32* %114, i32** %22, align 8
  %115 = load i32*, i32** %20, align 8
  %116 = call i8* @svn_fs_base__dag_get_created_path(i32* %115)
  store i8* %116, i8** %10, align 8
  %117 = load i32*, i32** %20, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @svn_fs_base__dag_get_revision(i64* %13, i32* %117, %struct.TYPE_21__* %118, i32 %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* %13, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %175

127:                                              ; preds = %86
  %128 = load i32, i32* %25, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %142, label %130

130:                                              ; preds = %127
  %131 = load i32*, i32** %18, align 8
  %132 = load i32*, i32** %17, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @apr_pstrdup(i32* %132, i8* %133)
  %135 = load i64, i64* %13, align 8
  %136 = load i32, i32* @TRUE, align 4
  %137 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %138 = load i32*, i32** %17, align 8
  %139 = call %struct.TYPE_22__* @assemble_history(i32* %131, i32 %134, i64 %135, i32 %136, i8* null, i64 %137, i32* %138)
  %140 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %139, %struct.TYPE_22__** %140, align 8
  %141 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %141, i32** %3, align 8
  br label %308

142:                                              ; preds = %127
  %143 = load i32*, i32** %20, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @svn_fs_base__dag_get_predecessor_id(i32** %29, i32* %143, %struct.TYPE_21__* %144, i32 %147)
  %149 = call i32 @SVN_ERR(i32 %148)
  %150 = load i32*, i32** %29, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %142
  %153 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %153, i32** %3, align 8
  br label %308

154:                                              ; preds = %142
  %155 = load i32*, i32** %18, align 8
  %156 = load i32*, i32** %29, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @svn_fs_base__dag_get_node(i32** %20, i32* %155, i32* %156, %struct.TYPE_21__* %157, i32 %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  %163 = load i32*, i32** %20, align 8
  %164 = call i32* @svn_fs_base__dag_get_id(i32* %163)
  store i32* %164, i32** %22, align 8
  %165 = load i32*, i32** %20, align 8
  %166 = call i8* @svn_fs_base__dag_get_created_path(i32* %165)
  store i8* %166, i8** %10, align 8
  %167 = load i32*, i32** %20, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @svn_fs_base__dag_get_revision(i64* %13, i32* %167, %struct.TYPE_21__* %168, i32 %171)
  %173 = call i32 @SVN_ERR(i32 %172)
  br label %174

174:                                              ; preds = %154
  br label %175

175:                                              ; preds = %174, %86
  %176 = load i32*, i32** %18, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @examine_copy_inheritance(i8** %23, %struct.TYPE_24__** %27, i32* %176, %struct.TYPE_23__* %177, %struct.TYPE_21__* %178, i32 %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  store i8* null, i8** %11, align 8
  %184 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %184, i64* %14, align 8
  %185 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %185, i64* %15, align 8
  %186 = load i32*, i32** %22, align 8
  %187 = call i32 @svn_fs_base__id_copy_id(i32* %186)
  %188 = load i8*, i8** %23, align 8
  %189 = call i64 @strcmp(i32 %187, i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %260

191:                                              ; preds = %175
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %193 = icmp ne %struct.TYPE_24__* %192, null
  br i1 %193, label %203, label %194

194:                                              ; preds = %191
  %195 = load i32*, i32** %18, align 8
  %196 = load i8*, i8** %23, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @svn_fs_bdb__get_copy(%struct.TYPE_24__** %27, i32* %195, i8* %196, %struct.TYPE_21__* %197, i32 %200)
  %202 = call i32 @SVN_ERR(i32 %201)
  br label %203

203:                                              ; preds = %194, %191
  %204 = load i32*, i32** %18, align 8
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @svn_fs_base__dag_get_node(i32** %31, i32* %204, i32* %207, %struct.TYPE_21__* %208, i32 %211)
  %213 = call i32 @SVN_ERR(i32 %212)
  %214 = load i32*, i32** %31, align 8
  %215 = call i8* @svn_fs_base__dag_get_created_path(i32* %214)
  store i8* %215, i8** %32, align 8
  %216 = load i8*, i8** %32, align 8
  %217 = load i8*, i8** %12, align 8
  %218 = call i8* @svn_fspath__skip_ancestor(i8* %216, i8* %217)
  store i8* %218, i8** %30, align 8
  %219 = load i8*, i8** %30, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %259

221:                                              ; preds = %203
  %222 = load i32*, i32** %18, align 8
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @svn_fs_base__txn_get_revision(i64* %14, i32* %222, i32 %225, %struct.TYPE_21__* %226, i32 %229)
  %231 = call i32 @SVN_ERR(i32 %230)
  %232 = load i32*, i32** %18, align 8
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @svn_fs_base__id_txn_id(i32* %235)
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @svn_fs_base__txn_get_revision(i64* %15, i32* %232, i32 %236, %struct.TYPE_21__* %237, i32 %240)
  %242 = call i32 @SVN_ERR(i32 %241)
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i8*, i8** %30, align 8
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i8* @svn_fspath__join(i32 %245, i8* %246, i32 %249)
  store i8* %250, i8** %11, align 8
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @copy_kind_soft, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %221
  %257 = load i32, i32* @TRUE, align 4
  store i32 %257, i32* %28, align 4
  br label %258

258:                                              ; preds = %256, %221
  br label %259

259:                                              ; preds = %258, %203
  br label %260

260:                                              ; preds = %259, %175
  %261 = load i8*, i8** %11, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %295

263:                                              ; preds = %260
  %264 = load i64, i64* %14, align 8
  %265 = call i64 @SVN_IS_VALID_REVNUM(i64 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %295

267:                                              ; preds = %263
  %268 = load i64, i64* %14, align 8
  %269 = load i64, i64* %13, align 8
  %270 = icmp sge i64 %268, %269
  br i1 %270, label %271, label %295

271:                                              ; preds = %267
  %272 = load i64, i64* %15, align 8
  %273 = load i64, i64* %16, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %271
  %276 = load i32, i32* %25, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = load i32, i32* @TRUE, align 4
  store i32 %279, i32* %28, align 4
  br label %280

280:                                              ; preds = %278, %275, %271
  %281 = load i32*, i32** %18, align 8
  %282 = load i32*, i32** %17, align 8
  %283 = load i8*, i8** %12, align 8
  %284 = call i32 @apr_pstrdup(i32* %282, i8* %283)
  %285 = load i64, i64* %15, align 8
  %286 = load i32, i32* %28, align 4
  %287 = icmp ne i32 %286, 0
  %288 = xor i1 %287, true
  %289 = zext i1 %288 to i32
  %290 = load i8*, i8** %11, align 8
  %291 = load i64, i64* %14, align 8
  %292 = load i32*, i32** %17, align 8
  %293 = call %struct.TYPE_22__* @assemble_history(i32* %281, i32 %284, i64 %285, i32 %289, i8* %290, i64 %291, i32* %292)
  %294 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %293, %struct.TYPE_22__** %294, align 8
  br label %306

295:                                              ; preds = %267, %263, %260
  %296 = load i32*, i32** %18, align 8
  %297 = load i32*, i32** %17, align 8
  %298 = load i8*, i8** %10, align 8
  %299 = call i32 @apr_pstrdup(i32* %297, i8* %298)
  %300 = load i64, i64* %13, align 8
  %301 = load i32, i32* @TRUE, align 4
  %302 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %303 = load i32*, i32** %17, align 8
  %304 = call %struct.TYPE_22__* @assemble_history(i32* %296, i32 %299, i64 %300, i32 %301, i8* null, i64 %302, i32* %303)
  %305 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %304, %struct.TYPE_22__** %305, align 8
  br label %306

306:                                              ; preds = %295, %280
  %307 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %307, i32** %3, align 8
  br label %308

308:                                              ; preds = %306, %152, %130, %77
  %309 = load i32*, i32** %3, align 8
  ret i32* %309
}

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @txn_body_revision_root(%struct.revision_root_args*, %struct.TYPE_21__*) #1

declare dso_local i32 @svn_fs_base__rev_get_txn_id(i8**, i32*, i64, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @open_path(%struct.TYPE_23__**, i32*, i8*, i32, i8*, %struct.TYPE_21__*, i32) #1

declare dso_local i32* @svn_fs_base__dag_get_id(i32*) #1

declare dso_local i8* @svn_fs_base__dag_get_created_path(i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_revision(i64*, i32*, %struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_22__* @assemble_history(i32*, i32, i64, i32, i8*, i64, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_fs_base__dag_get_predecessor_id(i32**, i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_node(i32**, i32*, i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @examine_copy_inheritance(i8**, %struct.TYPE_24__**, i32*, %struct.TYPE_23__*, %struct.TYPE_21__*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @svn_fs_base__id_copy_id(i32*) #1

declare dso_local i32 @svn_fs_bdb__get_copy(%struct.TYPE_24__**, i32*, i8*, %struct.TYPE_21__*, i32) #1

declare dso_local i8* @svn_fspath__skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_fs_base__txn_get_revision(i64*, i32*, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @svn_fs_base__id_txn_id(i32*) #1

declare dso_local i8* @svn_fspath__join(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

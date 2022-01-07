; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_history_prev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_history_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i64, i32, i64, i8*, i64, i64, i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i8*, i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__**, %struct.TYPE_11__*, i32, i32*, i32*)* @history_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @history_prev(%struct.TYPE_11__** %0, %struct.TYPE_11__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_13__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %12, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %15, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %19, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 7
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %20, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %24, align 4
  store i32* null, i32** %27, align 8
  %49 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @SVN_IS_VALID_REVNUM(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %112

55:                                               ; preds = %5
  %56 = load i64, i64* %19, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %112

61:                                               ; preds = %55
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %112

66:                                               ; preds = %61
  %67 = load i32, i32* %24, align 4
  %68 = call i32 @assert(i32 %67)
  %69 = load i32*, i32** %20, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @svn_fs_fs__get_node_revision(%struct.TYPE_13__** %28, i32* %69, i64 %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %66
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %6, align 8
  br label %281

83:                                               ; preds = %66
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @svn_fs_fs__id_rev(i32* %86)
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %83
  %94 = load i32*, i32** %20, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i32, i32* @TRUE, align 4
  %100 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = call %struct.TYPE_11__* @assemble_history(i32* %94, i8* %97, i64 %98, i32 %99, i8* null, i64 %100, i64 %103, i32* %106, i32* %107)
  %109 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %109, align 8
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %110, i32** %6, align 8
  br label %281

111:                                              ; preds = %83
  br label %112

112:                                              ; preds = %111, %61, %55, %5
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %136

117:                                              ; preds = %112
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @SVN_IS_VALID_REVNUM(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %24, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %128, i32** %6, align 8
  br label %281

129:                                              ; preds = %123
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 4
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %15, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %19, align 8
  br label %136

136:                                              ; preds = %129, %117, %112
  %137 = load i32*, i32** %20, align 8
  %138 = load i64, i64* %19, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @svn_fs_fs__revision_root(i32** %23, i32* %137, i64 %138, i32* %139)
  %141 = call i32 @SVN_ERR(i32 %140)
  %142 = load i32*, i32** %23, align 8
  %143 = load i8*, i8** %15, align 8
  %144 = load i32, i32* @FALSE, align 4
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @open_path(%struct.TYPE_12__** %21, i32* %142, i8* %143, i32 0, i32 %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** %22, align 8
  %151 = load i32*, i32** %22, align 8
  %152 = call i8* @svn_fs_fs__dag_get_created_path(i32* %151)
  store i8* %152, i8** %13, align 8
  %153 = load i32*, i32** %22, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @svn_fs_fs__dag_get_revision(i64* %16, i32* %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load i64, i64* %19, align 8
  %158 = load i64, i64* %16, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %195

160:                                              ; preds = %136
  %161 = load i32, i32* %24, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %174, label %163

163:                                              ; preds = %160
  %164 = load i32*, i32** %20, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load i32, i32* @TRUE, align 4
  %168 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %169 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = call %struct.TYPE_11__* @assemble_history(i32* %164, i8* %165, i64 %166, i32 %167, i8* null, i64 %168, i64 %169, i32* null, i32* %170)
  %172 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %171, %struct.TYPE_11__** %172, align 8
  %173 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %173, i32** %6, align 8
  br label %281

174:                                              ; preds = %160
  %175 = load i32*, i32** %22, align 8
  %176 = call i32 @svn_fs_fs__dag_get_predecessor_id(i32** %27, i32* %175)
  %177 = call i32 @SVN_ERR(i32 %176)
  %178 = load i32*, i32** %27, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %174
  %181 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %181, i32** %6, align 8
  br label %281

182:                                              ; preds = %174
  %183 = load i32*, i32** %20, align 8
  %184 = load i32*, i32** %27, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = call i32 @svn_fs_fs__dag_get_node(i32** %22, i32* %183, i32* %184, i32* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  %188 = load i32*, i32** %22, align 8
  %189 = call i8* @svn_fs_fs__dag_get_created_path(i32* %188)
  store i8* %189, i8** %13, align 8
  %190 = load i32*, i32** %22, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = call i32 @svn_fs_fs__dag_get_revision(i64* %16, i32* %190, i32* %191)
  %193 = call i32 @SVN_ERR(i32 %192)
  br label %194

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194, %136
  %196 = load i32*, i32** %20, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %198 = load i32*, i32** %11, align 8
  %199 = call i32 @find_youngest_copyroot(i64* %25, i8** %26, i32* %196, %struct.TYPE_12__* %197, i32* %198)
  %200 = call i32 @SVN_ERR(i32 %199)
  store i8* null, i8** %14, align 8
  %201 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %201, i64* %17, align 8
  %202 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %202, i64* %18, align 8
  %203 = load i64, i64* %25, align 8
  %204 = load i64, i64* %16, align 8
  %205 = icmp sgt i64 %203, %204
  br i1 %205, label %206, label %237

206:                                              ; preds = %195
  %207 = load i32*, i32** %20, align 8
  %208 = load i64, i64* %25, align 8
  %209 = load i32*, i32** %11, align 8
  %210 = call i32 @svn_fs_fs__revision_root(i32** %32, i32* %207, i64 %208, i32* %209)
  %211 = call i32 @SVN_ERR(i32 %210)
  %212 = load i32*, i32** %32, align 8
  %213 = load i8*, i8** %26, align 8
  %214 = load i32*, i32** %11, align 8
  %215 = call i32 @get_dag(i32** %22, i32* %212, i8* %213, i32* %214)
  %216 = call i32 @SVN_ERR(i32 %215)
  %217 = load i32*, i32** %22, align 8
  %218 = call i8* @svn_fs_fs__dag_get_created_path(i32* %217)
  store i8* %218, i8** %30, align 8
  %219 = load i8*, i8** %30, align 8
  %220 = load i8*, i8** %15, align 8
  %221 = call i8* @svn_fspath__skip_ancestor(i8* %219, i8* %220)
  store i8* %221, i8** %29, align 8
  %222 = load i8*, i8** %29, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %236

224:                                              ; preds = %206
  %225 = load i32*, i32** %22, align 8
  %226 = call i32 @svn_fs_fs__dag_get_copyfrom_rev(i64* %17, i32* %225)
  %227 = call i32 @SVN_ERR(i32 %226)
  %228 = load i32*, i32** %22, align 8
  %229 = call i32 @svn_fs_fs__dag_get_copyfrom_path(i8** %31, i32* %228)
  %230 = call i32 @SVN_ERR(i32 %229)
  %231 = load i64, i64* %25, align 8
  store i64 %231, i64* %18, align 8
  %232 = load i8*, i8** %31, align 8
  %233 = load i8*, i8** %29, align 8
  %234 = load i32*, i32** %11, align 8
  %235 = call i8* @svn_fspath__join(i8* %232, i8* %233, i32* %234)
  store i8* %235, i8** %14, align 8
  br label %236

236:                                              ; preds = %224, %206
  br label %237

237:                                              ; preds = %236, %195
  %238 = load i8*, i8** %14, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %268

240:                                              ; preds = %237
  %241 = load i64, i64* %17, align 8
  %242 = call i64 @SVN_IS_VALID_REVNUM(i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %268

244:                                              ; preds = %240
  %245 = load i32, i32* @FALSE, align 4
  store i32 %245, i32* %33, align 4
  %246 = load i64, i64* %18, align 8
  %247 = load i64, i64* %19, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load i32, i32* %24, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  %253 = load i32, i32* @TRUE, align 4
  store i32 %253, i32* %33, align 4
  br label %254

254:                                              ; preds = %252, %249, %244
  %255 = load i32*, i32** %20, align 8
  %256 = load i8*, i8** %15, align 8
  %257 = load i64, i64* %18, align 8
  %258 = load i32, i32* %33, align 4
  %259 = icmp ne i32 %258, 0
  %260 = xor i1 %259, true
  %261 = zext i1 %260 to i32
  %262 = load i8*, i8** %14, align 8
  %263 = load i64, i64* %17, align 8
  %264 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %265 = load i32*, i32** %10, align 8
  %266 = call %struct.TYPE_11__* @assemble_history(i32* %255, i8* %256, i64 %257, i32 %261, i8* %262, i64 %263, i64 %264, i32* null, i32* %265)
  %267 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %266, %struct.TYPE_11__** %267, align 8
  br label %279

268:                                              ; preds = %240, %237
  %269 = load i32*, i32** %20, align 8
  %270 = load i8*, i8** %13, align 8
  %271 = load i64, i64* %16, align 8
  %272 = load i32, i32* @TRUE, align 4
  %273 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %274 = load i64, i64* %25, align 8
  %275 = load i32*, i32** %27, align 8
  %276 = load i32*, i32** %10, align 8
  %277 = call %struct.TYPE_11__* @assemble_history(i32* %269, i8* %270, i64 %271, i32 %272, i8* null, i64 %273, i64 %274, i32* %275, i32* %276)
  %278 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %277, %struct.TYPE_11__** %278, align 8
  br label %279

279:                                              ; preds = %268, %254
  %280 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %280, i32** %6, align 8
  br label %281

281:                                              ; preds = %279, %180, %163, %127, %93, %81
  %282 = load i32*, i32** %6, align 8
  ret i32* %282
}

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__get_node_revision(%struct.TYPE_13__**, i32*, i64, i32*, i32*) #1

declare dso_local i64 @svn_fs_fs__id_rev(i32*) #1

declare dso_local %struct.TYPE_11__* @assemble_history(i32*, i8*, i64, i32, i8*, i64, i64, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__revision_root(i32**, i32*, i64, i32*) #1

declare dso_local i32 @open_path(%struct.TYPE_12__**, i32*, i8*, i32, i32, i32*) #1

declare dso_local i8* @svn_fs_fs__dag_get_created_path(i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_revision(i64*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_predecessor_id(i32**, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_node(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @find_youngest_copyroot(i64*, i8**, i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @get_dag(i32**, i32*, i8*, i32*) #1

declare dso_local i8* @svn_fspath__skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_fs_fs__dag_get_copyfrom_rev(i64*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_copyfrom_path(i8**, i32*) #1

declare dso_local i8* @svn_fspath__join(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

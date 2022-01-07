; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_apply_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_apply_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.editor_baton = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 (i8*, i8*, i32*)*, i32 (i8*, i32*, i32*, i32*, i8**)*, i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i32, i8*, i32*)*, i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)* }
%struct.TYPE_3__ = type { i8* }
%struct.change_node = type { i64, i64, i8*, i32, i64, i64, i32, i32, i32 }

@RESTRUCTURE_NONE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@RESTRUCTURE_DELETE = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@RESTRUCTURE_ADD_ABSENT = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@RESTRUCTURE_ADD = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i8*, i8*, i32*)* @apply_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_change(i8** %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.editor_baton*, align 8
  %14 = alloca %struct.change_node*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  store i32* %23, i32** %12, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to %struct.editor_baton*
  store %struct.editor_baton* %25, %struct.editor_baton** %13, align 8
  store i8* null, i8** %16, align 8
  %26 = load i8**, i8*** %7, align 8
  store i8* null, i8** %26, align 8
  %27 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %28 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i8* @svn_relpath_join(i32 %29, i8* %30, i32* %31)
  store i8* %32, i8** %15, align 8
  %33 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %34 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = call %struct.change_node* @svn_hash_gets(i32 %35, i8* %36)
  store %struct.change_node* %37, %struct.change_node** %14, align 8
  %38 = load %struct.change_node*, %struct.change_node** %14, align 8
  %39 = icmp ne %struct.change_node* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @SVN_ERR_ASSERT(i32 %40)
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %5
  %45 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %46 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %7, align 8
  store i8* %48, i8** %49, align 8
  %50 = load %struct.change_node*, %struct.change_node** %14, align 8
  %51 = getelementptr inbounds %struct.change_node, %struct.change_node* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RESTRUCTURE_NONE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @SVN_ERR_ASSERT(i32 %55)
  %57 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = load %struct.change_node*, %struct.change_node** %14, align 8
  %60 = load i8**, i8*** %7, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @drive_ev1_props(%struct.editor_baton* %57, i8* %58, %struct.change_node* %59, i8* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %65, i32** %6, align 8
  br label %345

66:                                               ; preds = %5
  %67 = load %struct.change_node*, %struct.change_node** %14, align 8
  %68 = getelementptr inbounds %struct.change_node, %struct.change_node* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %74 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 6
  %77 = load i32 (i8*, i32, i8*, i32*)*, i32 (i8*, i32, i8*, i32*)** %76, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.change_node*, %struct.change_node** %14, align 8
  %80 = getelementptr inbounds %struct.change_node, %struct.change_node* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 %77(i8* %78, i32 %81, i8* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %6, align 8
  br label %345

87:                                               ; preds = %66
  %88 = load %struct.change_node*, %struct.change_node** %14, align 8
  %89 = getelementptr inbounds %struct.change_node, %struct.change_node* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @svn_node_unknown, align 8
  %92 = icmp ne i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @SVN_ERR_ASSERT(i32 %93)
  %95 = load %struct.change_node*, %struct.change_node** %14, align 8
  %96 = getelementptr inbounds %struct.change_node, %struct.change_node* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RESTRUCTURE_ADD_ABSENT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %130

100:                                              ; preds = %87
  %101 = load %struct.change_node*, %struct.change_node** %14, align 8
  %102 = getelementptr inbounds %struct.change_node, %struct.change_node* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @svn_node_dir, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %108 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 8
  %111 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %110, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 %111(i8* %112, i8* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  br label %128

117:                                              ; preds = %100
  %118 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %119 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 7
  %122 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %121, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 %122(i8* %123, i8* %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  br label %128

128:                                              ; preds = %117, %106
  %129 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %129, i32** %6, align 8
  br label %345

130:                                              ; preds = %87
  %131 = load %struct.change_node*, %struct.change_node** %14, align 8
  %132 = getelementptr inbounds %struct.change_node, %struct.change_node* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @RESTRUCTURE_ADD, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %229

136:                                              ; preds = %130
  store i8* null, i8** %17, align 8
  %137 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %137, i32* %18, align 4
  %138 = load %struct.change_node*, %struct.change_node** %14, align 8
  %139 = getelementptr inbounds %struct.change_node, %struct.change_node* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @SVN_IS_VALID_REVNUM(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %136
  %144 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %145 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 6
  %148 = load i32 (i8*, i32, i8*, i32*)*, i32 (i8*, i32, i8*, i32*)** %147, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = load %struct.change_node*, %struct.change_node** %14, align 8
  %151 = getelementptr inbounds %struct.change_node, %struct.change_node* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = load i32*, i32** %12, align 8
  %155 = call i32 %148(i8* %149, i32 %152, i8* %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  br label %157

157:                                              ; preds = %143, %136
  %158 = load %struct.change_node*, %struct.change_node** %14, align 8
  %159 = getelementptr inbounds %struct.change_node, %struct.change_node* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %195

162:                                              ; preds = %157
  %163 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %164 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %169 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.change_node*, %struct.change_node** %14, align 8
  %172 = getelementptr inbounds %struct.change_node, %struct.change_node* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = load i32*, i32** %12, align 8
  %175 = call i8* @svn_path_url_add_component2(i64 %170, i8* %173, i32* %174)
  store i8* %175, i8** %17, align 8
  br label %191

176:                                              ; preds = %162
  %177 = load %struct.change_node*, %struct.change_node** %14, align 8
  %178 = getelementptr inbounds %struct.change_node, %struct.change_node* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  store i8* %179, i8** %17, align 8
  %180 = load i8*, i8** %17, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 47
  br i1 %184, label %185, label %190

185:                                              ; preds = %176
  %186 = load i32*, i32** %12, align 8
  %187 = load i8*, i8** %17, align 8
  %188 = load i32, i32* @SVN_VA_NULL, align 4
  %189 = call i8* @apr_pstrcat(i32* %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %187, i32 %188)
  store i8* %189, i8** %17, align 8
  br label %190

190:                                              ; preds = %185, %176
  br label %191

191:                                              ; preds = %190, %167
  %192 = load %struct.change_node*, %struct.change_node** %14, align 8
  %193 = getelementptr inbounds %struct.change_node, %struct.change_node* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %18, align 4
  br label %195

195:                                              ; preds = %191, %157
  %196 = load %struct.change_node*, %struct.change_node** %14, align 8
  %197 = getelementptr inbounds %struct.change_node, %struct.change_node* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @svn_node_dir, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %215

201:                                              ; preds = %195
  %202 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %203 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %202, i32 0, i32 0
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 5
  %206 = load i32 (i8*, i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i8*, i32, i32*, i8**)** %205, align 8
  %207 = load i8*, i8** %10, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = load i32, i32* %18, align 4
  %211 = load i32*, i32** %11, align 8
  %212 = load i8**, i8*** %7, align 8
  %213 = call i32 %206(i8* %207, i8* %208, i8* %209, i32 %210, i32* %211, i8** %212)
  %214 = call i32 @SVN_ERR(i32 %213)
  br label %228

215:                                              ; preds = %195
  %216 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %217 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %216, i32 0, i32 0
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 4
  %220 = load i32 (i8*, i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i8*, i32, i32*, i8**)** %219, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = load i8*, i8** %8, align 8
  %223 = load i8*, i8** %17, align 8
  %224 = load i32, i32* %18, align 4
  %225 = load i32*, i32** %11, align 8
  %226 = call i32 %220(i8* %221, i8* %222, i8* %223, i32 %224, i32* %225, i8** %16)
  %227 = call i32 @SVN_ERR(i32 %226)
  br label %228

228:                                              ; preds = %215, %201
  br label %265

229:                                              ; preds = %130
  %230 = load %struct.change_node*, %struct.change_node** %14, align 8
  %231 = getelementptr inbounds %struct.change_node, %struct.change_node* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @svn_node_dir, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %250

235:                                              ; preds = %229
  %236 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %237 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %236, i32 0, i32 0
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 3
  %240 = load i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i32, i32*, i8**)** %239, align 8
  %241 = load i8*, i8** %10, align 8
  %242 = load i8*, i8** %8, align 8
  %243 = load %struct.change_node*, %struct.change_node** %14, align 8
  %244 = getelementptr inbounds %struct.change_node, %struct.change_node* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 8
  %246 = load i32*, i32** %11, align 8
  %247 = load i8**, i8*** %7, align 8
  %248 = call i32 %240(i8* %241, i8* %242, i32 %245, i32* %246, i8** %247)
  %249 = call i32 @SVN_ERR(i32 %248)
  br label %264

250:                                              ; preds = %229
  %251 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %252 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %251, i32 0, i32 0
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 2
  %255 = load i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i32, i32*, i8**)** %254, align 8
  %256 = load i8*, i8** %10, align 8
  %257 = load i8*, i8** %8, align 8
  %258 = load %struct.change_node*, %struct.change_node** %14, align 8
  %259 = getelementptr inbounds %struct.change_node, %struct.change_node* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = load i32*, i32** %11, align 8
  %262 = call i32 %255(i8* %256, i8* %257, i32 %260, i32* %261, i8** %16)
  %263 = call i32 @SVN_ERR(i32 %262)
  br label %264

264:                                              ; preds = %250, %235
  br label %265

265:                                              ; preds = %264, %228
  %266 = load %struct.change_node*, %struct.change_node** %14, align 8
  %267 = getelementptr inbounds %struct.change_node, %struct.change_node* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @svn_node_dir, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %280

271:                                              ; preds = %265
  %272 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %273 = load i8*, i8** %15, align 8
  %274 = load %struct.change_node*, %struct.change_node** %14, align 8
  %275 = load i8**, i8*** %7, align 8
  %276 = load i8*, i8** %275, align 8
  %277 = load i32*, i32** %12, align 8
  %278 = call i32 @drive_ev1_props(%struct.editor_baton* %272, i8* %273, %struct.change_node* %274, i8* %276, i32* %277)
  %279 = call i32 @SVN_ERR(i32 %278)
  br label %288

280:                                              ; preds = %265
  %281 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %282 = load i8*, i8** %15, align 8
  %283 = load %struct.change_node*, %struct.change_node** %14, align 8
  %284 = load i8*, i8** %16, align 8
  %285 = load i32*, i32** %12, align 8
  %286 = call i32 @drive_ev1_props(%struct.editor_baton* %281, i8* %282, %struct.change_node* %283, i8* %284, i32* %285)
  %287 = call i32 @SVN_ERR(i32 %286)
  br label %288

288:                                              ; preds = %280, %271
  %289 = load %struct.change_node*, %struct.change_node** %14, align 8
  %290 = getelementptr inbounds %struct.change_node, %struct.change_node* %289, i32 0, i32 5
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %324

293:                                              ; preds = %288
  %294 = load %struct.change_node*, %struct.change_node** %14, align 8
  %295 = getelementptr inbounds %struct.change_node, %struct.change_node* %294, i32 0, i32 4
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %324

298:                                              ; preds = %293
  %299 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %300 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %299, i32 0, i32 0
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 1
  %303 = load i32 (i8*, i32*, i32*, i32*, i8**)*, i32 (i8*, i32*, i32*, i32*, i8**)** %302, align 8
  %304 = load i8*, i8** %16, align 8
  %305 = load i32*, i32** %12, align 8
  %306 = call i32 %303(i8* %304, i32* null, i32* %305, i32* %19, i8** %20)
  %307 = call i32 @SVN_ERR(i32 %306)
  %308 = load %struct.change_node*, %struct.change_node** %14, align 8
  %309 = getelementptr inbounds %struct.change_node, %struct.change_node* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = load i32*, i32** %12, align 8
  %312 = load i32*, i32** %12, align 8
  %313 = call i32 @svn_stream_open_readonly(i32** %21, i64 %310, i32* %311, i32* %312)
  %314 = call i32 @SVN_ERR(i32 %313)
  %315 = load i32*, i32** %21, align 8
  %316 = load i32, i32* %19, align 4
  %317 = load i8*, i8** %20, align 8
  %318 = load i32*, i32** %12, align 8
  %319 = call i32 @svn_txdelta_send_stream(i32* %315, i32 %316, i8* %317, i32* null, i32* %318)
  %320 = call i32 @SVN_ERR(i32 %319)
  %321 = load i32*, i32** %21, align 8
  %322 = call i32 @svn_stream_close(i32* %321)
  %323 = call i32 @SVN_ERR(i32 %322)
  br label %324

324:                                              ; preds = %298, %293, %288
  %325 = load i8*, i8** %16, align 8
  %326 = icmp ne i8* %325, null
  br i1 %326, label %327, label %343

327:                                              ; preds = %324
  %328 = load %struct.change_node*, %struct.change_node** %14, align 8
  %329 = getelementptr inbounds %struct.change_node, %struct.change_node* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = load i32*, i32** %12, align 8
  %332 = call i8* @svn_checksum_to_cstring(i32 %330, i32* %331)
  store i8* %332, i8** %22, align 8
  %333 = load %struct.editor_baton*, %struct.editor_baton** %13, align 8
  %334 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %333, i32 0, i32 0
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 0
  %337 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %336, align 8
  %338 = load i8*, i8** %16, align 8
  %339 = load i8*, i8** %22, align 8
  %340 = load i32*, i32** %12, align 8
  %341 = call i32 %337(i8* %338, i8* %339, i32* %340)
  %342 = call i32 @SVN_ERR(i32 %341)
  br label %343

343:                                              ; preds = %327, %324
  %344 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %344, i32** %6, align 8
  br label %345

345:                                              ; preds = %343, %128, %72, %44
  %346 = load i32*, i32** %6, align 8
  ret i32* %346
}

declare dso_local i8* @svn_relpath_join(i32, i8*, i32*) #1

declare dso_local %struct.change_node* @svn_hash_gets(i32, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @drive_ev1_props(%struct.editor_baton*, i8*, %struct.change_node*, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i8* @svn_path_url_add_component2(i64, i8*, i32*) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i64, i32*, i32*) #1

declare dso_local i32 @svn_txdelta_send_stream(i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i8* @svn_checksum_to_cstring(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

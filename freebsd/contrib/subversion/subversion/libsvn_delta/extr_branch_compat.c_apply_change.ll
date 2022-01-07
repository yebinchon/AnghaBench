; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_apply_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_apply_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__*, i64, i8*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*, i32*, i8**)*, i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i32, i8*, i32*)*, i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)* }
%struct.TYPE_7__ = type { i64, i64, i8*, i64, i32, i32, i32, i64 }

@RESTRUCTURE_NONE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@RESTRUCTURE_DELETE = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@RESTRUCTURE_ADD = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@RESTRUCTURE_ADD_ABSENT = common dso_local global i64 0, align 8
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
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  store i32* %22, i32** %12, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %13, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call %struct.TYPE_7__* @svn_hash_gets(i32 %27, i8* %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %14, align 8
  store i8* null, i8** %15, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i8**, i8*** %7, align 8
  store i8* null, i8** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @fetch_base_props(i32** %16, i32 %37, i8* %38, i32 %41, i32 %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i8*, i8** %8, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %75

51:                                               ; preds = %5
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %7, align 8
  store i8* %54, i8** %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RESTRUCTURE_NONE, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @SVN_ERR_ASSERT(i32 %61)
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i8**, i8*** %7, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @drive_ev1_props(i8* %63, %struct.TYPE_7__* %64, i32* %65, %struct.TYPE_8__* %68, i8* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %74, i32** %6, align 8
  br label %328

75:                                               ; preds = %5
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 6
  %86 = load i32 (i8*, i32, i8*, i32*)*, i32 (i8*, i32, i8*, i32*)** %85, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 %86(i8* %87, i32 %90, i8* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %95, i32** %6, align 8
  br label %328

96:                                               ; preds = %75
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @svn_node_unknown, align 8
  %101 = icmp ne i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @SVN_ERR_ASSERT(i32 %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @RESTRUCTURE_ADD, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %210

109:                                              ; preds = %96
  store i8* null, i8** %17, align 8
  %110 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %110, i32* %18, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 6
  %120 = load i32 (i8*, i32, i8*, i32*)*, i32 (i8*, i32, i8*, i32*)** %119, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 %120(i8* %121, i32 %124, i8* %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  br label %129

129:                                              ; preds = %115, %109
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %167

134:                                              ; preds = %129
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = call i8* @svn_path_url_add_component2(i64 %142, i8* %145, i32* %146)
  store i8* %147, i8** %17, align 8
  br label %163

148:                                              ; preds = %134
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** %17, align 8
  %152 = load i8*, i8** %17, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 47
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load i32*, i32** %12, align 8
  %159 = load i8*, i8** %17, align 8
  %160 = load i32, i32* @SVN_VA_NULL, align 4
  %161 = call i8* @apr_pstrcat(i32* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %159, i32 %160)
  store i8* %161, i8** %17, align 8
  br label %162

162:                                              ; preds = %157, %148
  br label %163

163:                                              ; preds = %162, %139
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %18, align 4
  br label %167

167:                                              ; preds = %163, %129
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @svn_node_dir, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %187

173:                                              ; preds = %167
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 5
  %178 = load i32 (i8*, i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i8*, i32, i32*, i8**)** %177, align 8
  %179 = load i8*, i8** %10, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = load i8*, i8** %17, align 8
  %182 = load i32, i32* %18, align 4
  %183 = load i32*, i32** %11, align 8
  %184 = load i8**, i8*** %7, align 8
  %185 = call i32 %178(i8* %179, i8* %180, i8* %181, i32 %182, i32* %183, i8** %184)
  %186 = call i32 @SVN_ERR(i32 %185)
  br label %209

187:                                              ; preds = %167
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @svn_node_file, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %187
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 4
  %198 = load i32 (i8*, i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i8*, i32, i32*, i8**)** %197, align 8
  %199 = load i8*, i8** %10, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = load i8*, i8** %17, align 8
  %202 = load i32, i32* %18, align 4
  %203 = load i32*, i32** %11, align 8
  %204 = call i32 %198(i8* %199, i8* %200, i8* %201, i32 %202, i32* %203, i8** %15)
  %205 = call i32 @SVN_ERR(i32 %204)
  br label %208

206:                                              ; preds = %187
  %207 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %208

208:                                              ; preds = %206, %193
  br label %209

209:                                              ; preds = %208, %173
  br label %255

210:                                              ; preds = %96
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @svn_node_dir, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %210
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 3
  %221 = load i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i32, i32*, i8**)** %220, align 8
  %222 = load i8*, i8** %10, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i32*, i32** %11, align 8
  %228 = load i8**, i8*** %7, align 8
  %229 = call i32 %221(i8* %222, i8* %223, i32 %226, i32* %227, i8** %228)
  %230 = call i32 @SVN_ERR(i32 %229)
  br label %254

231:                                              ; preds = %210
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @svn_node_file, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %251

237:                                              ; preds = %231
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 2
  %242 = load i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i32, i32*, i8**)** %241, align 8
  %243 = load i8*, i8** %10, align 8
  %244 = load i8*, i8** %8, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load i32*, i32** %11, align 8
  %249 = call i32 %242(i8* %243, i8* %244, i32 %247, i32* %248, i8** %15)
  %250 = call i32 @SVN_ERR(i32 %249)
  br label %253

251:                                              ; preds = %231
  %252 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %253

253:                                              ; preds = %251, %237
  br label %254

254:                                              ; preds = %253, %216
  br label %255

255:                                              ; preds = %254, %209
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @svn_node_dir, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %273

261:                                              ; preds = %255
  %262 = load i8*, i8** %10, align 8
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %264 = load i32*, i32** %16, align 8
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %266, align 8
  %268 = load i8**, i8*** %7, align 8
  %269 = load i8*, i8** %268, align 8
  %270 = load i32*, i32** %12, align 8
  %271 = call i32 @drive_ev1_props(i8* %262, %struct.TYPE_7__* %263, i32* %264, %struct.TYPE_8__* %267, i8* %269, i32* %270)
  %272 = call i32 @SVN_ERR(i32 %271)
  br label %284

273:                                              ; preds = %255
  %274 = load i8*, i8** %10, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %276 = load i32*, i32** %16, align 8
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = load i8*, i8** %15, align 8
  %281 = load i32*, i32** %12, align 8
  %282 = call i32 @drive_ev1_props(i8* %274, %struct.TYPE_7__* %275, i32* %276, %struct.TYPE_8__* %279, i8* %280, i32* %281)
  %283 = call i32 @SVN_ERR(i32 %282)
  br label %284

284:                                              ; preds = %273, %261
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %313

289:                                              ; preds = %284
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = load i32*, i32** %12, align 8
  %294 = call i32* @svn_stream_from_stringbuf(i64 %292, i32* %293)
  store i32* %294, i32** %19, align 8
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 1
  %299 = load i32 (i8*, i32*, i32*, i32*, i8**)*, i32 (i8*, i32*, i32*, i32*, i8**)** %298, align 8
  %300 = load i8*, i8** %15, align 8
  %301 = load i32*, i32** %12, align 8
  %302 = call i32 %299(i8* %300, i32* null, i32* %301, i32* %20, i8** %21)
  %303 = call i32 @SVN_ERR(i32 %302)
  %304 = load i32*, i32** %19, align 8
  %305 = load i32, i32* %20, align 4
  %306 = load i8*, i8** %21, align 8
  %307 = load i32*, i32** %12, align 8
  %308 = call i32 @svn_txdelta_send_stream(i32* %304, i32 %305, i8* %306, i32* null, i32* %307)
  %309 = call i32 @SVN_ERR(i32 %308)
  %310 = load i32*, i32** %19, align 8
  %311 = call i32 @svn_stream_close(i32* %310)
  %312 = call i32 @SVN_ERR(i32 %311)
  br label %313

313:                                              ; preds = %289, %284
  %314 = load i8*, i8** %15, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %326

316:                                              ; preds = %313
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %320, align 8
  %322 = load i8*, i8** %15, align 8
  %323 = load i32*, i32** %12, align 8
  %324 = call i32 %321(i8* %322, i32* null, i32* %323)
  %325 = call i32 @SVN_ERR(i32 %324)
  br label %326

326:                                              ; preds = %316, %313
  %327 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %327, i32** %6, align 8
  br label %328

328:                                              ; preds = %326, %81, %51
  %329 = load i32*, i32** %6, align 8
  ret i32* %329
}

declare dso_local %struct.TYPE_7__* @svn_hash_gets(i32, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @fetch_base_props(i32**, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @drive_ev1_props(i8*, %struct.TYPE_7__*, i32*, %struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i64, i8*, i32*) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32* @svn_stream_from_stringbuf(i64, i32*) #1

declare dso_local i32 @svn_txdelta_send_stream(i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

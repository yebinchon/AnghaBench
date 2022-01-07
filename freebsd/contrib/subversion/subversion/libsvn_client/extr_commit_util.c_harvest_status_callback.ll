; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_harvest_status_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_harvest_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8*, i8*, i64, i8*, i32, i32, i32, i64, i32, i64, i64, i64 }
%struct.harvest_baton = type { i8*, i32, i32, i32 (i32, i64*, i32, i64, i32*)*, i32*, i32*, i32*, i32*, i64, i32, i32*, i8*, i32 (i8*, i32, i32*)*, i32* }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"'%s' is not under version control\00", align 1
@svn_node_dir = common dso_local global i32 0, align 4
@svn_wc_notify_failed_conflict = common dso_local global i32 0, align 4
@SVN_ERR_WC_FOUND_CONFLICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Aborting commit: '%s' remains in conflict\00", align 1
@svn_wc_status_obstructed = common dso_local global i32 0, align 4
@svn_wc_notify_failed_obstruction = common dso_local global i32 0, align 4
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Node '%s' has unexpectedly changed kind\00", align 1
@svn_node_unknown = common dso_local global i32 0, align 4
@svn_wc_status_missing = common dso_local global i32 0, align 4
@svn_wc_notify_failed_missing = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"'%s' is scheduled for addition, but is missing\00", align 1
@SVN_CLIENT_COMMIT_ITEM_DELETE = common dso_local global i32 0, align 4
@SVN_CLIENT_COMMIT_ITEM_ADD = common dso_local global i32 0, align 4
@SVN_CLIENT_COMMIT_ITEM_IS_COPY = common dso_local global i32 0, align 4
@SVN_CLIENT_COMMIT_ITEM_MOVED_HERE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_CLIENT_COMMIT_ITEM_TEXT_MODS = common dso_local global i32 0, align 4
@SVN_CLIENT_COMMIT_ITEM_PROP_MODS = common dso_local global i32 0, align 4
@SVN_CLIENT_COMMIT_ITEM_LOCK_TOKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_3__*, i32*)* @harvest_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @harvest_status_callback(i8* %0, i8* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.harvest_baton*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32 (i8*, i32, i32*)*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i8*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i8*, align 8
  %48 = alloca i8*, align 8
  %49 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %50 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %50, i64* %13, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = bitcast i8* %51 to %struct.harvest_baton*
  store %struct.harvest_baton* %52, %struct.harvest_baton** %22, align 8
  %53 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %54 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strcmp(i32 %55, i8* %56)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %23, align 4
  %60 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %61 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %60, i32 0, i32 13
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %24, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %25, align 8
  store i8* null, i8** %26, align 8
  %66 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %67 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %4
  %71 = load i32, i32* %23, align 4
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %70, %4
  %74 = phi i1 [ false, %4 ], [ %72, %70 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %27, align 4
  %76 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %77 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %28, align 4
  %79 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %80 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %79, i32 0, i32 7
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %29, align 8
  %82 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %83 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %82, i32 0, i32 12
  %84 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %83, align 8
  store i32 (i8*, i32, i32*)* %84, i32 (i8*, i32, i32*)** %30, align 8
  %85 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %86 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %85, i32 0, i32 11
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %31, align 8
  %88 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %89 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %88, i32 0, i32 10
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %32, align 8
  %91 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %92 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %33, align 8
  store i8* null, i8** %34, align 8
  %94 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %95 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %73
  %99 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %100 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %103 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @svn_dirent_skip_ancestor(i32 %104, i8* %105)
  %107 = load i32*, i32** %9, align 8
  %108 = call i8* @svn_relpath_join(i8* %101, i32 %106, i32* %107)
  store i8* %108, i8** %26, align 8
  br label %109

109:                                              ; preds = %98, %73
  %110 = load i8*, i8** %26, align 8
  %111 = icmp ne i8* %110, null
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %21, align 4
  %113 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %114 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %109
  %118 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %119 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = call i64 @svn_dirent_is_ancestor(i32* %120, i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %125, i32** %5, align 8
  br label %820

126:                                              ; preds = %117, %109
  %127 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %128 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %127, i32 0, i32 5
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %126
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  switch i32 %132, label %164 [
    i32 128, label %133
    i32 131, label %133
    i32 132, label %133
    i32 130, label %133
    i32 129, label %145
  ]

133:                                              ; preds = %129, %129, %129, %129
  %134 = load i32, i32* %23, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %138 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %139 = load i8*, i8** %7, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @svn_dirent_local_style(i8* %139, i32* %140)
  %142 = call i32* @svn_error_createf(i32 %137, i32* null, i32 %138, i32 %141)
  store i32* %142, i32** %5, align 8
  br label %820

143:                                              ; preds = %133
  %144 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %144, i32** %5, align 8
  br label %820

145:                                              ; preds = %129
  %146 = load i32, i32* %21, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %163, label %148

148:                                              ; preds = %145
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 13
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %28, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %156, %153
  %162 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %162, i32** %5, align 8
  br label %820

163:                                              ; preds = %156, %148, %145
  br label %165

164:                                              ; preds = %129
  br label %165

165:                                              ; preds = %164, %163
  %166 = load i32*, i32** %24, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = call i64 @look_up_committable(i32* %166, i8* %167, i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %172, i32** %5, align 8
  br label %820

173:                                              ; preds = %165
  %174 = load i32, i32* %21, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i8*, i8** %26, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %188, label %179

179:                                              ; preds = %176, %173
  %180 = load i32, i32* %21, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  %183 = load i8*, i8** %26, align 8
  %184 = icmp ne i8* %183, null
  %185 = xor i1 %184, true
  br label %186

186:                                              ; preds = %182, %179
  %187 = phi i1 [ false, %179 ], [ %185, %182 ]
  br label %188

188:                                              ; preds = %186, %176
  %189 = phi i1 [ true, %176 ], [ %187, %186 ]
  %190 = zext i1 %189 to i32
  %191 = call i32 @SVN_ERR_ASSERT(i32 %190)
  %192 = load i32, i32* %27, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load i32, i32* %21, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194, %188
  %198 = load i32, i32* %27, align 4
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  br label %201

201:                                              ; preds = %197, %194
  %202 = phi i1 [ true, %194 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = call i32 @SVN_ERR_ASSERT(i32 %203)
  %205 = load i32*, i32** %29, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %221, label %207

207:                                              ; preds = %201
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load i32*, i32** %29, align 8
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = call i32* @svn_hash_gets(i32* %213, i8* %216)
  %218 = icmp ne i32* %217, null
  br label %219

219:                                              ; preds = %212, %207
  %220 = phi i1 [ false, %207 ], [ %218, %212 ]
  br label %221

221:                                              ; preds = %219, %201
  %222 = phi i1 [ true, %201 ], [ %220, %219 ]
  %223 = zext i1 %222 to i32
  store i32 %223, i32* %14, align 4
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 8
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @svn_node_dir, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %221
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %229
  %233 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %233, i32** %5, align 8
  br label %820

234:                                              ; preds = %229, %221
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 13
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %261

239:                                              ; preds = %234
  %240 = load i32, i32* %14, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %239
  %243 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %30, align 8
  %244 = icmp ne i32 (i8*, i32, i32*)* %243, null
  br i1 %244, label %245, label %254

245:                                              ; preds = %242
  %246 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %30, align 8
  %247 = load i8*, i8** %31, align 8
  %248 = load i8*, i8** %7, align 8
  %249 = load i32, i32* @svn_wc_notify_failed_conflict, align 4
  %250 = load i32*, i32** %9, align 8
  %251 = call i32 @svn_wc_create_notify(i8* %248, i32 %249, i32* %250)
  %252 = load i32*, i32** %9, align 8
  %253 = call i32 %246(i8* %247, i32 %251, i32* %252)
  br label %254

254:                                              ; preds = %245, %242
  %255 = load i32, i32* @SVN_ERR_WC_FOUND_CONFLICT, align 4
  %256 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %257 = load i8*, i8** %7, align 8
  %258 = load i32*, i32** %9, align 8
  %259 = call i32 @svn_dirent_local_style(i8* %257, i32* %258)
  %260 = call i32* @svn_error_createf(i32 %255, i32* null, i32 %256, i32 %259)
  store i32* %260, i32** %5, align 8
  br label %820

261:                                              ; preds = %239, %234
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @svn_wc_status_obstructed, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %286

267:                                              ; preds = %261
  %268 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %30, align 8
  %269 = icmp ne i32 (i8*, i32, i32*)* %268, null
  br i1 %269, label %270, label %279

270:                                              ; preds = %267
  %271 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %30, align 8
  %272 = load i8*, i8** %31, align 8
  %273 = load i8*, i8** %7, align 8
  %274 = load i32, i32* @svn_wc_notify_failed_obstruction, align 4
  %275 = load i32*, i32** %9, align 8
  %276 = call i32 @svn_wc_create_notify(i8* %273, i32 %274, i32* %275)
  %277 = load i32*, i32** %9, align 8
  %278 = call i32 %271(i8* %272, i32 %276, i32* %277)
  br label %279

279:                                              ; preds = %270, %267
  %280 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %281 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %282 = load i8*, i8** %7, align 8
  %283 = load i32*, i32** %9, align 8
  %284 = call i32 @svn_dirent_local_style(i8* %282, i32* %283)
  %285 = call i32* @svn_error_createf(i32 %280, i32* null, i32 %281, i32 %284)
  store i32* %285, i32** %5, align 8
  br label %820

286:                                              ; preds = %261
  br label %287

287:                                              ; preds = %286
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 13
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %287
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 8
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @svn_node_unknown, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %292
  %299 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %299, i32** %5, align 8
  br label %820

300:                                              ; preds = %292, %287
  %301 = load i32*, i32** %32, align 8
  %302 = load i8*, i8** %7, align 8
  %303 = load i32*, i32** %9, align 8
  %304 = load i32*, i32** %9, align 8
  %305 = call i32 @svn_wc__node_get_commit_status(i32* %15, i32* %16, i32* %17, i32* %18, i64* %11, i64* %19, i8** %20, i32* %301, i8* %302, i32* %303, i32* %304)
  %306 = call i32 @SVN_ERR(i32 %305)
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 12
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %300
  %312 = load i32, i32* %23, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  %315 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %315, i32** %5, align 8
  br label %820

316:                                              ; preds = %311, %300
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @svn_wc_status_missing, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %352

322:                                              ; preds = %316
  %323 = load i32, i32* %14, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %352

325:                                              ; preds = %322
  %326 = load i32, i32* %15, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %350

328:                                              ; preds = %325
  %329 = load i32, i32* %18, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %350

331:                                              ; preds = %328
  %332 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %30, align 8
  %333 = icmp ne i32 (i8*, i32, i32*)* %332, null
  br i1 %333, label %334, label %343

334:                                              ; preds = %331
  %335 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %30, align 8
  %336 = load i8*, i8** %31, align 8
  %337 = load i8*, i8** %7, align 8
  %338 = load i32, i32* @svn_wc_notify_failed_missing, align 4
  %339 = load i32*, i32** %9, align 8
  %340 = call i32 @svn_wc_create_notify(i8* %337, i32 %338, i32* %339)
  %341 = load i32*, i32** %9, align 8
  %342 = call i32 %335(i8* %336, i32 %340, i32* %341)
  br label %343

343:                                              ; preds = %334, %331
  %344 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %345 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %346 = load i8*, i8** %7, align 8
  %347 = load i32*, i32** %9, align 8
  %348 = call i32 @svn_dirent_local_style(i8* %346, i32* %347)
  %349 = call i32* @svn_error_createf(i32 %344, i32* null, i32 %345, i32 %348)
  store i32* %349, i32** %5, align 8
  br label %820

350:                                              ; preds = %328, %325
  %351 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %351, i32** %5, align 8
  br label %820

352:                                              ; preds = %322, %316
  %353 = load i32, i32* %16, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %352
  %356 = load i32, i32* %18, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %355
  %359 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %359, i32** %5, align 8
  br label %820

360:                                              ; preds = %355, %352
  %361 = load i32, i32* %16, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %360
  %364 = load i32, i32* %17, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %363, %360
  %367 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_DELETE, align 4
  %368 = load i32, i32* %10, align 4
  %369 = or i32 %368, %367
  store i32 %369, i32* %10, align 4
  br label %370

370:                                              ; preds = %366, %363
  %371 = load i32, i32* %15, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %404

373:                                              ; preds = %370
  %374 = load i32, i32* %18, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %404

376:                                              ; preds = %373
  %377 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_ADD, align 4
  %378 = load i32, i32* %10, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %10, align 4
  %380 = load i8*, i8** %20, align 8
  %381 = icmp ne i8* %380, null
  br i1 %381, label %382, label %403

382:                                              ; preds = %376
  %383 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_IS_COPY, align 4
  %384 = load i32, i32* %10, align 4
  %385 = or i32 %384, %383
  store i32 %385, i32* %10, align 4
  %386 = load i8*, i8** %20, align 8
  store i8* %386, i8** %12, align 8
  %387 = load i64, i64* %19, align 8
  store i64 %387, i64* %13, align 8
  %388 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 3
  %390 = load i8*, i8** %389, align 8
  %391 = icmp ne i8* %390, null
  br i1 %391, label %392, label %402

392:                                              ; preds = %382
  %393 = load i32, i32* %21, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %402, label %395

395:                                              ; preds = %392
  %396 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_MOVED_HERE, align 4
  %397 = load i32, i32* %10, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %10, align 4
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 3
  %401 = load i8*, i8** %400, align 8
  store i8* %401, i8** %34, align 8
  br label %402

402:                                              ; preds = %395, %392, %382
  br label %403

403:                                              ; preds = %402, %376
  br label %505

404:                                              ; preds = %373, %370
  %405 = load i32, i32* %21, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %504

407:                                              ; preds = %404
  %408 = load i32, i32* %10, align 4
  %409 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_DELETE, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %504, label %412

412:                                              ; preds = %407
  %413 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %413, i64* %35, align 8
  store i8* null, i8** %36, align 8
  %414 = load i32, i32* %27, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %429, label %416

416:                                              ; preds = %412
  %417 = load i32, i32* %15, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %429, label %419

419:                                              ; preds = %416
  %420 = load i32*, i32** %32, align 8
  %421 = load i8*, i8** %7, align 8
  %422 = load i32*, i32** %9, align 8
  %423 = call i8* @svn_dirent_dirname(i8* %421, i32* %422)
  %424 = load i32, i32* @FALSE, align 4
  %425 = load i32*, i32** %9, align 8
  %426 = load i32*, i32** %9, align 8
  %427 = call i32 @svn_wc__node_get_base(i32* null, i64* %35, i8** %36, i32* null, i32* null, i32* null, i32* %420, i8* %423, i32 %424, i32* %425, i32* %426)
  %428 = call i32 @SVN_ERR(i32 %427)
  br label %429

429:                                              ; preds = %419, %416, %412
  %430 = load i32, i32* %27, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %441, label %432

432:                                              ; preds = %429
  %433 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %434 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %433, i32 0, i32 11
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %441, label %437

437:                                              ; preds = %432
  %438 = load i64, i64* %11, align 8
  %439 = load i64, i64* %35, align 8
  %440 = icmp ne i64 %438, %439
  br i1 %440, label %441, label %503

441:                                              ; preds = %437, %432, %429
  %442 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_ADD, align 4
  %443 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_IS_COPY, align 4
  %444 = or i32 %442, %443
  %445 = load i32, i32* %10, align 4
  %446 = or i32 %445, %444
  store i32 %446, i32* %10, align 4
  %447 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %448 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %447, i32 0, i32 9
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %454

451:                                              ; preds = %441
  %452 = load i64, i64* %19, align 8
  store i64 %452, i64* %13, align 8
  %453 = load i8*, i8** %20, align 8
  store i8* %453, i8** %12, align 8
  br label %461

454:                                              ; preds = %441
  %455 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 4
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %13, align 8
  %458 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 5
  %460 = load i8*, i8** %459, align 8
  store i8* %460, i8** %12, align 8
  br label %461

461:                                              ; preds = %454, %451
  %462 = load i32, i32* %27, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %502, label %464

464:                                              ; preds = %461
  %465 = load i32, i32* %15, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %502, label %467

467:                                              ; preds = %464
  %468 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %469 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %468, i32 0, i32 3
  %470 = load i32 (i32, i64*, i32, i64, i32*)*, i32 (i32, i64*, i32, i64, i32*)** %469, align 8
  %471 = icmp ne i32 (i32, i64*, i32, i64, i32*)* %470, null
  br i1 %471, label %472, label %502

472:                                              ; preds = %467
  %473 = load i8*, i8** %36, align 8
  %474 = icmp ne i8* %473, null
  br i1 %474, label %475, label %502

475:                                              ; preds = %472
  %476 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %477 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %476, i32 0, i32 3
  %478 = load i32 (i32, i64*, i32, i64, i32*)*, i32 (i32, i64*, i32, i64, i32*)** %477, align 8
  %479 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %480 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 4
  %482 = load i8*, i8** %25, align 8
  %483 = load i8*, i8** %36, align 8
  %484 = load i8*, i8** %7, align 8
  %485 = call i32 @svn_dirent_basename(i8* %484, i32* null)
  %486 = load i32*, i32** %9, align 8
  %487 = call i8* @svn_relpath_join(i8* %483, i32 %485, i32* %486)
  %488 = load i32*, i32** %9, align 8
  %489 = call i32 @svn_path_url_add_component2(i8* %482, i8* %487, i32* %488)
  %490 = load i64, i64* %35, align 8
  %491 = load i32*, i32** %9, align 8
  %492 = call i32 %478(i32 %481, i64* %37, i32 %489, i64 %490, i32* %491)
  %493 = call i32 @SVN_ERR(i32 %492)
  %494 = load i64, i64* %37, align 8
  %495 = load i64, i64* @svn_node_none, align 8
  %496 = icmp ne i64 %494, %495
  br i1 %496, label %497, label %501

497:                                              ; preds = %475
  %498 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_DELETE, align 4
  %499 = load i32, i32* %10, align 4
  %500 = or i32 %499, %498
  store i32 %500, i32* %10, align 4
  br label %501

501:                                              ; preds = %497, %475
  br label %502

502:                                              ; preds = %501, %472, %467, %464, %461
  br label %503

503:                                              ; preds = %502, %437
  br label %504

504:                                              ; preds = %503, %407, %404
  br label %505

505:                                              ; preds = %504, %403
  %506 = load i32, i32* %10, align 4
  %507 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_DELETE, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %515

510:                                              ; preds = %505
  %511 = load i32, i32* %10, align 4
  %512 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_ADD, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %569

515:                                              ; preds = %510, %505
  %516 = load i32, i32* @FALSE, align 4
  store i32 %516, i32* %38, align 4
  %517 = load i32, i32* @FALSE, align 4
  store i32 %517, i32* %39, align 4
  %518 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %519 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %518, i32 0, i32 8
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @svn_node_file, align 4
  %522 = icmp eq i32 %520, %521
  br i1 %522, label %523, label %542

523:                                              ; preds = %515
  %524 = load i32, i32* %10, align 4
  %525 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_ADD, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %535

528:                                              ; preds = %523
  %529 = load i32, i32* %10, align 4
  %530 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_IS_COPY, align 4
  %531 = and i32 %529, %530
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %535, label %533

533:                                              ; preds = %528
  %534 = load i32, i32* @TRUE, align 4
  store i32 %534, i32* %38, align 4
  br label %541

535:                                              ; preds = %528, %523
  %536 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %537 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %536, i32 0, i32 6
  %538 = load i32, i32* %537, align 8
  %539 = icmp ne i32 %538, 129
  %540 = zext i1 %539 to i32
  store i32 %540, i32* %38, align 4
  br label %541

541:                                              ; preds = %535, %533
  br label %542

542:                                              ; preds = %541, %515
  %543 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %544 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %543, i32 0, i32 7
  %545 = load i32, i32* %544, align 4
  %546 = icmp ne i32 %545, 129
  br i1 %546, label %547, label %552

547:                                              ; preds = %542
  %548 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %549 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %548, i32 0, i32 7
  %550 = load i32, i32* %549, align 4
  %551 = icmp ne i32 %550, 130
  br label %552

552:                                              ; preds = %547, %542
  %553 = phi i1 [ false, %542 ], [ %551, %547 ]
  %554 = zext i1 %553 to i32
  store i32 %554, i32* %39, align 4
  %555 = load i32, i32* %38, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %561

557:                                              ; preds = %552
  %558 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_TEXT_MODS, align 4
  %559 = load i32, i32* %10, align 4
  %560 = or i32 %559, %558
  store i32 %560, i32* %10, align 4
  br label %561

561:                                              ; preds = %557, %552
  %562 = load i32, i32* %39, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %568

564:                                              ; preds = %561
  %565 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_PROP_MODS, align 4
  %566 = load i32, i32* %10, align 4
  %567 = or i32 %566, %565
  store i32 %567, i32* %10, align 4
  br label %568

568:                                              ; preds = %564, %561
  br label %569

569:                                              ; preds = %568, %510
  %570 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %571 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %570, i32 0, i32 10
  %572 = load i32, i32* %571, align 8
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %589

574:                                              ; preds = %569
  %575 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %576 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %575, i32 0, i32 8
  %577 = load i64, i64* %576, align 8
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %589

579:                                              ; preds = %574
  %580 = load i32, i32* %10, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %585, label %582

582:                                              ; preds = %579
  %583 = load i32, i32* %28, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %589

585:                                              ; preds = %582, %579
  %586 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_LOCK_TOKEN, align 4
  %587 = load i32, i32* %10, align 4
  %588 = or i32 %587, %586
  store i32 %588, i32* %10, align 4
  br label %589

589:                                              ; preds = %585, %582, %574, %569
  %590 = load i32, i32* %14, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %634

592:                                              ; preds = %589
  %593 = load i32, i32* %10, align 4
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %634

595:                                              ; preds = %592
  %596 = load i32*, i32** %24, align 8
  %597 = load i8*, i8** %7, align 8
  %598 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %599 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %598, i32 0, i32 8
  %600 = load i32, i32* %599, align 8
  %601 = load i8*, i8** %25, align 8
  %602 = load i32, i32* %21, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %606

604:                                              ; preds = %595
  %605 = load i8*, i8** %26, align 8
  br label %610

606:                                              ; preds = %595
  %607 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %608 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %607, i32 0, i32 5
  %609 = load i8*, i8** %608, align 8
  br label %610

610:                                              ; preds = %606, %604
  %611 = phi i8* [ %605, %604 ], [ %609, %606 ]
  %612 = load i32, i32* %21, align 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %616

614:                                              ; preds = %610
  %615 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  br label %618

616:                                              ; preds = %610
  %617 = load i64, i64* %11, align 8
  br label %618

618:                                              ; preds = %616, %614
  %619 = phi i64 [ %615, %614 ], [ %617, %616 ]
  %620 = load i8*, i8** %12, align 8
  %621 = load i64, i64* %13, align 8
  %622 = load i8*, i8** %34, align 8
  %623 = load i32, i32* %10, align 4
  %624 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %625 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %624, i32 0, i32 8
  %626 = load i64, i64* %625, align 8
  %627 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %628 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %627, i32 0, i32 10
  %629 = load i32, i32* %628, align 8
  %630 = load i32*, i32** %33, align 8
  %631 = load i32*, i32** %9, align 8
  %632 = call i32 @add_committable(i32* %596, i8* %597, i32 %600, i8* %601, i8* %611, i64 %619, i8* %620, i64 %621, i8* %622, i32 %623, i64 %626, i32 %629, i32* %630, i32* %631)
  %633 = call i32 @SVN_ERR(i32 %632)
  br label %634

634:                                              ; preds = %618, %592, %589
  %635 = load i32, i32* %14, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %681

637:                                              ; preds = %634
  %638 = load i32, i32* %10, align 4
  %639 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_DELETE, align 4
  %640 = and i32 %638, %639
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %681

642:                                              ; preds = %637
  %643 = load i32, i32* %21, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %681, label %645

645:                                              ; preds = %642
  %646 = load i64, i64* %11, align 8
  %647 = call i64 @SVN_IS_VALID_REVNUM(i64 %646)
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %681

649:                                              ; preds = %645
  %650 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %651 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %650, i32 0, i32 8
  %652 = load i64, i64* %651, align 8
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %654, label %681

654:                                              ; preds = %649
  %655 = load i32*, i32** %32, align 8
  %656 = load i8*, i8** %7, align 8
  %657 = load i32*, i32** %33, align 8
  %658 = load i32*, i32** %9, align 8
  %659 = call i32 @svn_wc__node_get_lock_tokens_recursive(i32** %40, i32* %655, i8* %656, i32* %657, i32* %658)
  %660 = call i32 @SVN_ERR(i32 %659)
  %661 = load i32*, i32** %9, align 8
  %662 = load i32*, i32** %40, align 8
  %663 = call i32* @apr_hash_first(i32* %661, i32* %662)
  store i32* %663, i32** %41, align 8
  br label %664

664:                                              ; preds = %677, %654
  %665 = load i32*, i32** %41, align 8
  %666 = icmp ne i32* %665, null
  br i1 %666, label %667, label %680

667:                                              ; preds = %664
  %668 = load i32*, i32** %41, align 8
  %669 = call i32 @apr_hash_this(i32* %668, i8** %42, i32* %43, i8** %44)
  %670 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %671 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %670, i32 0, i32 8
  %672 = load i64, i64* %671, align 8
  %673 = load i8*, i8** %42, align 8
  %674 = load i32, i32* %43, align 4
  %675 = load i8*, i8** %44, align 8
  %676 = call i32 @apr_hash_set(i64 %672, i8* %673, i32 %674, i8* %675)
  br label %677

677:                                              ; preds = %667
  %678 = load i32*, i32** %41, align 8
  %679 = call i32* @apr_hash_next(i32* %678)
  store i32* %679, i32** %41, align 8
  br label %664

680:                                              ; preds = %664
  br label %681

681:                                              ; preds = %680, %649, %645, %642, %637, %634
  %682 = load i32, i32* %14, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %765

684:                                              ; preds = %681
  %685 = load i32, i32* %23, align 4
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %692, label %687

687:                                              ; preds = %684
  %688 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %689 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %688, i32 0, i32 7
  %690 = load i32*, i32** %689, align 8
  %691 = icmp ne i32* %690, null
  br i1 %691, label %692, label %765

692:                                              ; preds = %687, %684
  %693 = load i32, i32* %10, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %765

695:                                              ; preds = %692
  %696 = load i32, i32* %15, align 4
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %709, label %698

698:                                              ; preds = %695
  %699 = load i32, i32* %16, align 4
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %765

701:                                              ; preds = %698
  %702 = load i32, i32* %18, align 4
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %765

704:                                              ; preds = %701
  %705 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %706 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %705, i32 0, i32 9
  %707 = load i64, i64* %706, align 8
  %708 = icmp ne i64 %707, 0
  br i1 %708, label %709, label %765

709:                                              ; preds = %704, %695
  %710 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %711 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %710, i32 0, i32 6
  %712 = load i32*, i32** %711, align 8
  %713 = icmp ne i32* %712, null
  br i1 %713, label %714, label %765

714:                                              ; preds = %709
  %715 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %716 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %715, i32 0, i32 6
  %717 = load i32*, i32** %716, align 8
  store i32* %717, i32** %45, align 8
  %718 = load i8*, i8** %7, align 8
  %719 = load i32*, i32** %9, align 8
  %720 = call i8* @svn_dirent_dirname(i8* %718, i32* %719)
  store i8* %720, i8** %47, align 8
  %721 = load i32*, i32** %24, align 8
  %722 = load i8*, i8** %47, align 8
  %723 = load i32*, i32** %9, align 8
  %724 = call i64 @look_up_committable(i32* %721, i8* %722, i32* %723)
  %725 = icmp ne i64 %724, 0
  br i1 %725, label %726, label %728

726:                                              ; preds = %714
  %727 = load i32, i32* @FALSE, align 4
  store i32 %727, i32* %46, align 4
  br label %734

728:                                              ; preds = %714
  %729 = load i32*, i32** %32, align 8
  %730 = load i8*, i8** %47, align 8
  %731 = load i32*, i32** %9, align 8
  %732 = call i32 @svn_wc__node_is_added(i32* %46, i32* %729, i8* %730, i32* %731)
  %733 = call i32 @SVN_ERR(i32 %732)
  br label %734

734:                                              ; preds = %728, %726
  %735 = load i32, i32* %46, align 4
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %764

737:                                              ; preds = %734
  %738 = load i32*, i32** %32, align 8
  %739 = load i8*, i8** %47, align 8
  %740 = load i32, i32* @FALSE, align 4
  %741 = load i32*, i32** %9, align 8
  %742 = load i32*, i32** %9, align 8
  %743 = call i32 @svn_wc__node_get_origin(i32* %49, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %48, i32* %738, i8* %739, i32 %740, i32* %741, i32* %742)
  %744 = call i32 @SVN_ERR(i32 %743)
  %745 = load i32, i32* %49, align 4
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %747, label %749

747:                                              ; preds = %737
  %748 = load i8*, i8** %48, align 8
  store i8* %748, i8** %47, align 8
  br label %749

749:                                              ; preds = %747, %737
  %750 = load i32*, i32** %45, align 8
  %751 = load i8*, i8** %47, align 8
  %752 = call i32* @svn_hash_gets(i32* %750, i8* %751)
  %753 = icmp ne i32* %752, null
  br i1 %753, label %763, label %754

754:                                              ; preds = %749
  %755 = load i32*, i32** %45, align 8
  %756 = load i32*, i32** %33, align 8
  %757 = load i8*, i8** %47, align 8
  %758 = call i32* @apr_pstrdup(i32* %756, i8* %757)
  %759 = load i32*, i32** %33, align 8
  %760 = load i8*, i8** %7, align 8
  %761 = call i32* @apr_pstrdup(i32* %759, i8* %760)
  %762 = call i32 @svn_hash_sets(i32* %755, i32* %758, i32* %761)
  br label %763

763:                                              ; preds = %754, %749
  br label %764

764:                                              ; preds = %763, %734
  br label %765

765:                                              ; preds = %764, %709, %704, %701, %698, %692, %687, %681
  %766 = load i32, i32* %16, align 4
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %768, label %787

768:                                              ; preds = %765
  %769 = load i32, i32* %15, align 4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %787, label %771

771:                                              ; preds = %768
  %772 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %773 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %772, i32 0, i32 8
  %774 = load i32, i32* %773, align 8
  %775 = load i32, i32* @svn_node_dir, align 4
  %776 = icmp eq i32 %774, %775
  br i1 %776, label %777, label %785

777:                                              ; preds = %771
  %778 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %779 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %778, i32 0, i32 4
  %780 = load i32*, i32** %779, align 8
  %781 = load i8*, i8** %7, align 8
  %782 = call i32* @apr_pstrdup(i32* %780, i8* %781)
  %783 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %784 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %783, i32 0, i32 5
  store i32* %782, i32** %784, align 8
  br label %785

785:                                              ; preds = %777, %771
  %786 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %786, i32** %5, align 8
  br label %820

787:                                              ; preds = %768, %765
  %788 = load i32, i32* %21, align 4
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %818

790:                                              ; preds = %787
  %791 = load i32, i32* %15, align 4
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %818, label %793

793:                                              ; preds = %790
  %794 = load i32, i32* %16, align 4
  %795 = icmp ne i32 %794, 0
  br i1 %795, label %818, label %796

796:                                              ; preds = %793
  %797 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %798 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %797, i32 0, i32 8
  %799 = load i32, i32* %798, align 8
  %800 = load i32, i32* @svn_node_dir, align 4
  %801 = icmp eq i32 %799, %800
  br i1 %801, label %802, label %818

802:                                              ; preds = %796
  %803 = load i32*, i32** %32, align 8
  %804 = load i8*, i8** %7, align 8
  %805 = load i32*, i32** %24, align 8
  %806 = load i8*, i8** %25, align 8
  %807 = load i8*, i8** %26, align 8
  %808 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %809 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %808, i32 0, i32 3
  %810 = load i32 (i32, i64*, i32, i64, i32*)*, i32 (i32, i64*, i32, i64, i32*)** %809, align 8
  %811 = load %struct.harvest_baton*, %struct.harvest_baton** %22, align 8
  %812 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %811, i32 0, i32 2
  %813 = load i32, i32* %812, align 4
  %814 = load i32*, i32** %33, align 8
  %815 = load i32*, i32** %9, align 8
  %816 = call i32 @harvest_not_present_for_copy(i32* %803, i8* %804, i32* %805, i8* %806, i8* %807, i32 (i32, i64*, i32, i64, i32*)* %810, i32 %813, i32* %814, i32* %815)
  %817 = call i32 @SVN_ERR(i32 %816)
  br label %818

818:                                              ; preds = %802, %796, %793, %790, %787
  %819 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %819, i32** %5, align 8
  br label %820

820:                                              ; preds = %818, %785, %358, %350, %343, %314, %298, %279, %254, %232, %171, %161, %143, %136, %124
  %821 = load i32*, i32** %5, align 8
  ret i32* %821
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i64 @svn_dirent_is_ancestor(i32*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i64 @look_up_committable(i32*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__node_get_commit_status(i32*, i32*, i32*, i32*, i64*, i64*, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__node_get_base(i32*, i64*, i8**, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @add_committable(i32*, i8*, i32, i8*, i8*, i64, i8*, i64, i8*, i32, i64, i32, i32*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_wc__node_get_lock_tokens_recursive(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32 @apr_hash_set(i64, i8*, i32, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_wc__node_is_added(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__node_get_origin(i32*, i32*, i32*, i32*, i32*, i32*, i8**, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32*, i32*) #1

declare dso_local i32* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @harvest_not_present_for_copy(i32*, i8*, i32*, i8*, i8*, i32 (i32, i64*, i32, i64, i32*)*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

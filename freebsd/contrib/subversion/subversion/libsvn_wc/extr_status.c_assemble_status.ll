; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_assemble_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_assemble_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i32, %struct.TYPE_24__*, i32, i32, i32, i32*, i64, i32, i64, i32, i8*, i32, i32, %struct.TYPE_24__*, i8*, i8*, i64, i32 }
%struct.svn_wc__db_info_t = type { i64, i32, i32, i64, i64, i32, %struct.TYPE_21__*, i64, i32, %struct.TYPE_20__*, i32, i64, i32, i32, i32, i64, i32, i64, i64, i64, i8*, i8*, i32, i64, i64, i64, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i64, i64, i64 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@svn_wc_status_normal = common dso_local global i32 0, align 4
@svn_wc_status_none = common dso_local global i32 0, align 4
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@svn_wc_status_incomplete = common dso_local global i32 0, align 4
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@svn_wc_status_deleted = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_wc_status_missing = common dso_local global i32 0, align 4
@svn_wc_status_obstructed = common dso_local global i32 0, align 4
@svn_wc_status_modified = common dso_local global i32 0, align 4
@SVN_INVALID_FILESIZE = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_ACCESS_DENIED = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc_status_added = common dso_local global i32 0, align 4
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc_status_replaced = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_26__* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_23__**, i32*, i8*, i8*, i8*, i8*, %struct.svn_wc__db_info_t*, %struct.TYPE_25__*, i8*, i8*, i8*, %struct.TYPE_24__*, i32*, i32*)* @assemble_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @assemble_status(%struct.TYPE_23__** %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5, %struct.svn_wc__db_info_t* %6, %struct.TYPE_25__* %7, i8* %8, i8* %9, i8* %10, %struct.TYPE_24__* %11, i32* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct.TYPE_23__**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.svn_wc__db_info_t*, align 8
  %23 = alloca %struct.TYPE_25__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_24__*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_23__*, align 8
  %31 = alloca %struct.TYPE_22__*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i64, align 8
  %42 = alloca i8*, align 8
  %43 = alloca %struct.TYPE_26__*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i64, align 8
  %48 = alloca i8*, align 8
  %49 = alloca i8*, align 8
  %50 = alloca %struct.TYPE_26__*, align 8
  %51 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__** %0, %struct.TYPE_23__*** %16, align 8
  store i32* %1, i32** %17, align 8
  store i8* %2, i8** %18, align 8
  store i8* %3, i8** %19, align 8
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store %struct.svn_wc__db_info_t* %6, %struct.svn_wc__db_info_t** %22, align 8
  store %struct.TYPE_25__* %7, %struct.TYPE_25__** %23, align 8
  store i8* %8, i8** %24, align 8
  store i8* %9, i8** %25, align 8
  store i8* %10, i8** %26, align 8
  store %struct.TYPE_24__* %11, %struct.TYPE_24__** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %52 = load i8*, i8** @FALSE, align 8
  store i8* %52, i8** %32, align 8
  %53 = load i8*, i8** @FALSE, align 8
  store i8* %53, i8** %33, align 8
  store i8* null, i8** %35, align 8
  %54 = load i32, i32* @svn_wc_status_normal, align 4
  store i32 %54, i32* %36, align 4
  %55 = load i32, i32* @svn_wc_status_normal, align 4
  store i32 %55, i32* %37, align 4
  %56 = load i32, i32* @svn_wc_status_none, align 4
  store i32 %56, i32* %38, align 4
  %57 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %58 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %57, i32 0, i32 26
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %14
  %62 = load i8*, i8** %20, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61, %14
  %65 = load i8*, i8** @FALSE, align 8
  store i8* %65, i8** %32, align 8
  br label %85

66:                                               ; preds = %61
  %67 = load i8*, i8** %20, align 8
  %68 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %69 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %68, i32 0, i32 26
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @svn_relpath_skip_ancestor(i8* %67, i32 %70)
  store i8* %71, i8** %39, align 8
  %72 = load i8*, i8** %39, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load i8*, i8** %39, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = call i32 @svn_dirent_basename(i8* %76, i32* null)
  %78 = call i64 @strcmp(i8* %75, i32 %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %74, %66
  %81 = phi i1 [ true, %66 ], [ %79, %74 ]
  %82 = zext i1 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %32, align 8
  br label %85

85:                                               ; preds = %80, %64
  %86 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %87 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %93 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %92, i32 0, i32 25
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %85
  %97 = load i32, i32* @svn_wc_status_incomplete, align 4
  store i32 %97, i32* %36, align 4
  br label %184

98:                                               ; preds = %91
  %99 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %100 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %148

104:                                              ; preds = %98
  %105 = load i32, i32* @svn_wc_status_deleted, align 4
  store i32 %105, i32* %36, align 4
  %106 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %107 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %106, i32 0, i32 19
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %112 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %111, i32 0, i32 18
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %117 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %116, i32 0, i32 20
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %115, %110, %104
  %121 = load i8*, i8** @TRUE, align 8
  store i8* %121, i8** %33, align 8
  br label %147

122:                                              ; preds = %115
  %123 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %124 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %123, i32 0, i32 18
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %122
  %128 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %129 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %128, i32 0, i32 19
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i8*, i8** @FALSE, align 8
  store i8* %133, i8** %33, align 8
  br label %146

134:                                              ; preds = %127, %122
  %135 = load i32*, i32** %17, align 8
  %136 = load i8*, i8** %18, align 8
  %137 = load i32*, i32** %29, align 8
  %138 = load i32*, i32** %29, align 8
  %139 = call i32 @svn_wc__db_scan_deletion(i32* null, i32* null, i8** %40, i32* null, i32* %135, i8* %136, i32* %137, i32* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load i8*, i8** %40, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i8*, i8** @TRUE, align 8
  store i8* %144, i8** %33, align 8
  br label %145

145:                                              ; preds = %143, %134
  br label %146

146:                                              ; preds = %145, %132
  br label %147

147:                                              ; preds = %146, %120
  br label %183

148:                                              ; preds = %98
  %149 = load i8*, i8** %26, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %182

151:                                              ; preds = %148
  %152 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %153 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 131
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 131, i32 130
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %41, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %160 = icmp ne %struct.TYPE_25__* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %151
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %41, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %161, %151
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %169 = icmp ne %struct.TYPE_25__* %168, null
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @svn_node_none, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %170, %167
  %177 = load i32, i32* @svn_wc_status_missing, align 4
  store i32 %177, i32* %36, align 4
  br label %180

178:                                              ; preds = %170
  %179 = load i32, i32* @svn_wc_status_obstructed, align 4
  store i32 %179, i32* %36, align 4
  br label %180

180:                                              ; preds = %178, %176
  br label %181

181:                                              ; preds = %180, %161
  br label %182

182:                                              ; preds = %181, %148
  br label %183

183:                                              ; preds = %182, %147
  br label %184

184:                                              ; preds = %183, %96
  %185 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %186 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %206

190:                                              ; preds = %184
  %191 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %192 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %191, i32 0, i32 24
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* @svn_wc_status_modified, align 4
  store i32 %196, i32* %38, align 4
  br label %205

197:                                              ; preds = %190
  %198 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %199 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %198, i32 0, i32 23
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = load i32, i32* @svn_wc_status_normal, align 4
  store i32 %203, i32* %38, align 4
  br label %204

204:                                              ; preds = %202, %197
  br label %205

205:                                              ; preds = %204, %195
  br label %206

206:                                              ; preds = %205, %184
  %207 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %208 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 131
  br i1 %210, label %211, label %298

211:                                              ; preds = %206
  %212 = load i32, i32* %36, align 4
  %213 = load i32, i32* @svn_wc_status_normal, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %298

215:                                              ; preds = %211
  %216 = load i8*, i8** @FALSE, align 8
  store i8* %216, i8** %42, align 8
  %217 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %218 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 130
  br i1 %220, label %226, label %221

221:                                              ; preds = %215
  %222 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %223 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 129
  br i1 %225, label %226, label %292

226:                                              ; preds = %221, %215
  %227 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %228 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %227, i32 0, i32 22
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %226
  %232 = load i8*, i8** @TRUE, align 8
  store i8* %232, i8** %42, align 8
  br label %291

233:                                              ; preds = %226
  %234 = load i8*, i8** %25, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %266, label %236

236:                                              ; preds = %233
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %238 = icmp ne %struct.TYPE_25__* %237, null
  br i1 %238, label %239, label %268

239:                                              ; preds = %236
  %240 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %241 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @SVN_INVALID_FILESIZE, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %268

245:                                              ; preds = %239
  %246 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %247 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %268

250:                                              ; preds = %245
  %251 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %252 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %253, %256
  br i1 %257, label %258, label %268

258:                                              ; preds = %250
  %259 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %260 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %261, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %258, %233
  %267 = load i8*, i8** @FALSE, align 8
  store i8* %267, i8** %42, align 8
  br label %290

268:                                              ; preds = %258, %250, %245, %239, %236
  %269 = load i32*, i32** %17, align 8
  %270 = load i8*, i8** %18, align 8
  %271 = load i8*, i8** @FALSE, align 8
  %272 = load i32*, i32** %29, align 8
  %273 = call %struct.TYPE_26__* @svn_wc__internal_file_modified_p(i8** %42, i32* %269, i8* %270, i8* %271, i32* %272)
  store %struct.TYPE_26__* %273, %struct.TYPE_26__** %43, align 8
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  %275 = icmp ne %struct.TYPE_26__* %274, null
  br i1 %275, label %276, label %289

276:                                              ; preds = %268
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @SVN_ERR_WC_PATH_ACCESS_DENIED, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %276
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  %284 = call %struct.TYPE_26__* @svn_error_trace(%struct.TYPE_26__* %283)
  store %struct.TYPE_26__* %284, %struct.TYPE_26__** %15, align 8
  br label %731

285:                                              ; preds = %276
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  %287 = call i32 @svn_error_clear(%struct.TYPE_26__* %286)
  %288 = load i8*, i8** @TRUE, align 8
  store i8* %288, i8** %42, align 8
  br label %289

289:                                              ; preds = %285, %268
  br label %290

290:                                              ; preds = %289, %266
  br label %291

291:                                              ; preds = %290, %231
  br label %292

292:                                              ; preds = %291, %221
  %293 = load i8*, i8** %42, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = load i32, i32* @svn_wc_status_modified, align 4
  store i32 %296, i32* %37, align 4
  br label %297

297:                                              ; preds = %295, %292
  br label %298

298:                                              ; preds = %297, %211, %206
  %299 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %300 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %299, i32 0, i32 21
  %301 = load i8*, i8** %300, align 8
  store i8* %301, i8** %34, align 8
  %302 = load i8*, i8** %34, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %321

304:                                              ; preds = %298
  %305 = load i32*, i32** %17, align 8
  %306 = load i8*, i8** %18, align 8
  %307 = load i32*, i32** %29, align 8
  %308 = call i32 @svn_wc__internal_conflicted_p(i8** %44, i8** %45, i8** %46, i32* %305, i8* %306, i32* %307)
  %309 = call i32 @SVN_ERR(i32 %308)
  %310 = load i8*, i8** %44, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %320, label %312

312:                                              ; preds = %304
  %313 = load i8*, i8** %45, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %320, label %315

315:                                              ; preds = %312
  %316 = load i8*, i8** %46, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %320, label %318

318:                                              ; preds = %315
  %319 = load i8*, i8** @FALSE, align 8
  store i8* %319, i8** %34, align 8
  br label %320

320:                                              ; preds = %318, %315, %312, %304
  br label %321

321:                                              ; preds = %320, %298
  %322 = load i32, i32* %36, align 4
  %323 = load i32, i32* @svn_wc_status_normal, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %404

325:                                              ; preds = %321
  %326 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %327 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @svn_wc__db_status_added, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %403

331:                                              ; preds = %325
  %332 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %333 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %332, i32 0, i32 20
  %334 = load i8*, i8** %333, align 8
  store i8* %334, i8** %33, align 8
  %335 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %336 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %335, i32 0, i32 15
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %331
  br label %371

340:                                              ; preds = %331
  %341 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %342 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %341, i32 0, i32 19
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %352, label %345

345:                                              ; preds = %340
  %346 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %347 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %346, i32 0, i32 18
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %345
  %351 = load i32, i32* @svn_wc_status_added, align 4
  store i32 %351, i32* %36, align 4
  br label %370

352:                                              ; preds = %345, %340
  %353 = load i32*, i32** %17, align 8
  %354 = load i8*, i8** %18, align 8
  %355 = load i32*, i32** %29, align 8
  %356 = call i32 @svn_wc__db_info_below_working(i8** %48, i8** %49, i64* %47, i32* %353, i8* %354, i32* %355)
  %357 = call i32 @SVN_ERR(i32 %356)
  %358 = load i64, i64* %47, align 8
  %359 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %360 = icmp ne i64 %358, %359
  br i1 %360, label %361, label %367

361:                                              ; preds = %352
  %362 = load i64, i64* %47, align 8
  %363 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %364 = icmp ne i64 %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = load i32, i32* @svn_wc_status_replaced, align 4
  store i32 %366, i32* %36, align 4
  br label %369

367:                                              ; preds = %361, %352
  %368 = load i32, i32* @svn_wc_status_added, align 4
  store i32 %368, i32* %36, align 4
  br label %369

369:                                              ; preds = %367, %365
  br label %370

370:                                              ; preds = %369, %350
  br label %371

371:                                              ; preds = %370, %339
  %372 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %373 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %372, i32 0, i32 17
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %402

376:                                              ; preds = %371
  %377 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %378 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %377, i32 0, i32 15
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %402

381:                                              ; preds = %376
  %382 = load i32*, i32** %17, align 8
  %383 = load i8*, i8** %18, align 8
  %384 = load i32*, i32** %28, align 8
  %385 = load i32*, i32** %29, align 8
  %386 = call %struct.TYPE_26__* @svn_wc__db_scan_moved(i8** %35, i32* null, i32* null, i32* null, i32* %382, i8* %383, i32* %384, i32* %385)
  store %struct.TYPE_26__* %386, %struct.TYPE_26__** %50, align 8
  %387 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %388 = icmp ne %struct.TYPE_26__* %387, null
  br i1 %388, label %389, label %401

389:                                              ; preds = %381
  %390 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %391 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 8
  %394 = icmp ne i64 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %389
  %396 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %397 = call %struct.TYPE_26__* @svn_error_trace(%struct.TYPE_26__* %396)
  store %struct.TYPE_26__* %397, %struct.TYPE_26__** %15, align 8
  br label %731

398:                                              ; preds = %389
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %400 = call i32 @svn_error_clear(%struct.TYPE_26__* %399)
  store i8* null, i8** %35, align 8
  br label %401

401:                                              ; preds = %398, %381
  br label %402

402:                                              ; preds = %401, %376, %371
  br label %403

403:                                              ; preds = %402, %325
  br label %404

404:                                              ; preds = %403, %321
  %405 = load i32, i32* %36, align 4
  %406 = load i32, i32* @svn_wc_status_normal, align 4
  %407 = icmp eq i32 %405, %406
  br i1 %407, label %408, label %410

408:                                              ; preds = %404
  %409 = load i32, i32* %37, align 4
  store i32 %409, i32* %36, align 4
  br label %410

410:                                              ; preds = %408, %404
  %411 = load i32, i32* %36, align 4
  %412 = load i32, i32* @svn_wc_status_normal, align 4
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %414, label %420

414:                                              ; preds = %410
  %415 = load i32, i32* %38, align 4
  %416 = load i32, i32* @svn_wc_status_none, align 4
  %417 = icmp ne i32 %415, %416
  br i1 %417, label %418, label %420

418:                                              ; preds = %414
  %419 = load i32, i32* %38, align 4
  store i32 %419, i32* %36, align 4
  br label %420

420:                                              ; preds = %418, %414, %410
  %421 = load i8*, i8** %24, align 8
  %422 = icmp ne i8* %421, null
  br i1 %422, label %473, label %423

423:                                              ; preds = %420
  %424 = load i32, i32* %36, align 4
  %425 = load i32, i32* @svn_wc_status_none, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %440, label %427

427:                                              ; preds = %423
  %428 = load i32, i32* %36, align 4
  %429 = load i32, i32* @svn_wc_status_normal, align 4
  %430 = icmp eq i32 %428, %429
  br i1 %430, label %440, label %431

431:                                              ; preds = %427
  %432 = load i32, i32* %36, align 4
  %433 = load i32, i32* @svn_wc_status_deleted, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %472

435:                                              ; preds = %431
  %436 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %437 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %436, i32 0, i32 15
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %472, label %440

440:                                              ; preds = %435, %427, %423
  %441 = load i8*, i8** %32, align 8
  %442 = icmp ne i8* %441, null
  br i1 %442, label %472, label %443

443:                                              ; preds = %440
  %444 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %445 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %444, i32 0, i32 8
  %446 = load i32, i32* %445, align 8
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %472, label %448

448:                                              ; preds = %443
  %449 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %450 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %449, i32 0, i32 9
  %451 = load %struct.TYPE_20__*, %struct.TYPE_20__** %450, align 8
  %452 = icmp ne %struct.TYPE_20__* %451, null
  br i1 %452, label %472, label %453

453:                                              ; preds = %448
  %454 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %455 = icmp ne %struct.TYPE_24__* %454, null
  br i1 %455, label %472, label %456

456:                                              ; preds = %453
  %457 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %458 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %457, i32 0, i32 7
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %472, label %461

461:                                              ; preds = %456
  %462 = load i8*, i8** %34, align 8
  %463 = icmp ne i8* %462, null
  br i1 %463, label %472, label %464

464:                                              ; preds = %461
  %465 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %466 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %465, i32 0, i32 6
  %467 = load %struct.TYPE_21__*, %struct.TYPE_21__** %466, align 8
  %468 = icmp ne %struct.TYPE_21__* %467, null
  br i1 %468, label %472, label %469

469:                                              ; preds = %464
  %470 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %16, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %470, align 8
  %471 = load %struct.TYPE_26__*, %struct.TYPE_26__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_26__* %471, %struct.TYPE_26__** %15, align 8
  br label %731

472:                                              ; preds = %464, %461, %456, %453, %448, %443, %440, %435, %431
  br label %473

473:                                              ; preds = %472, %420
  %474 = load i32*, i32** %28, align 8
  %475 = call %struct.TYPE_23__* @apr_pcalloc(i32* %474, i32 224)
  store %struct.TYPE_23__* %475, %struct.TYPE_23__** %30, align 8
  %476 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %477 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %476, i32 0, i32 2
  store %struct.TYPE_22__* %477, %struct.TYPE_22__** %31, align 8
  %478 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %479 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %478, i32 0, i32 16
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %482 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %481, i32 0, i32 1
  store i32 %480, i32* %482, align 8
  %483 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %484 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %483, i32 0, i32 15
  %485 = load i64, i64* %484, align 8
  %486 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %487 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %486, i32 0, i32 0
  store i64 %485, i64* %487, align 8
  %488 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %489 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  switch i32 %490, label %498 [
    i32 131, label %491
    i32 130, label %494
    i32 129, label %494
    i32 128, label %497
  ]

491:                                              ; preds = %473
  %492 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %493 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %492, i32 0, i32 0
  store i32 131, i32* %493, align 8
  br label %501

494:                                              ; preds = %473, %473
  %495 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %496 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %495, i32 0, i32 0
  store i32 130, i32* %496, align 8
  br label %501

497:                                              ; preds = %473
  br label %498

498:                                              ; preds = %473, %497
  %499 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %500 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %499, i32 0, i32 0
  store i32 128, i32* %500, align 8
  br label %501

501:                                              ; preds = %498, %494, %491
  %502 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %503 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %502, i32 0, i32 14
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %506 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %505, i32 0, i32 31
  store i32 %504, i32* %506, align 8
  %507 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %508 = icmp ne %struct.TYPE_25__* %507, null
  br i1 %508, label %509, label %538

509:                                              ; preds = %501
  %510 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %511 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = icmp eq i64 %512, 130
  br i1 %513, label %514, label %518

514:                                              ; preds = %509
  %515 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %516 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %515, i32 0, i32 1
  %517 = load i64, i64* %516, align 8
  br label %520

518:                                              ; preds = %509
  %519 = load i64, i64* @SVN_INVALID_FILESIZE, align 8
  br label %520

520:                                              ; preds = %518, %514
  %521 = phi i64 [ %517, %514 ], [ %519, %518 ]
  %522 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %523 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %522, i32 0, i32 30
  store i64 %521, i64* %523, align 8
  %524 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %525 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %524, i32 0, i32 3
  %526 = load i64, i64* %525, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %520
  br label %533

529:                                              ; preds = %520
  %530 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %531 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  br label %533

533:                                              ; preds = %529, %528
  %534 = phi i64 [ 129, %528 ], [ %532, %529 ]
  %535 = trunc i64 %534 to i32
  %536 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %537 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %536, i32 0, i32 1
  store i32 %535, i32* %537, align 4
  br label %552

538:                                              ; preds = %501
  %539 = load i64, i64* @SVN_INVALID_FILESIZE, align 8
  %540 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %541 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %540, i32 0, i32 30
  store i64 %539, i64* %541, align 8
  %542 = load i8*, i8** %25, align 8
  %543 = icmp ne i8* %542, null
  br i1 %543, label %544, label %545

544:                                              ; preds = %538
  br label %547

545:                                              ; preds = %538
  %546 = load i64, i64* @svn_node_none, align 8
  br label %547

547:                                              ; preds = %545, %544
  %548 = phi i64 [ 128, %544 ], [ %546, %545 ]
  %549 = trunc i64 %548 to i32
  %550 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %551 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %550, i32 0, i32 1
  store i32 %549, i32* %551, align 4
  br label %552

552:                                              ; preds = %547, %533
  %553 = load i32, i32* %36, align 4
  %554 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %555 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %554, i32 0, i32 2
  store i32 %553, i32* %555, align 8
  %556 = load i32, i32* %37, align 4
  %557 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %558 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %557, i32 0, i32 3
  store i32 %556, i32* %558, align 4
  %559 = load i32, i32* %38, align 4
  %560 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %561 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %560, i32 0, i32 4
  store i32 %559, i32* %561, align 8
  %562 = load i32, i32* @svn_wc_status_none, align 4
  %563 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %564 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %563, i32 0, i32 5
  store i32 %562, i32* %564, align 4
  %565 = load i32, i32* @svn_wc_status_none, align 4
  %566 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %567 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %566, i32 0, i32 6
  store i32 %565, i32* %567, align 8
  %568 = load i32, i32* @svn_wc_status_none, align 4
  %569 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %570 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %569, i32 0, i32 7
  store i32 %568, i32* %570, align 4
  %571 = load i8*, i8** %32, align 8
  %572 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %573 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %572, i32 0, i32 29
  store i8* %571, i8** %573, align 8
  %574 = load i8*, i8** %33, align 8
  %575 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %576 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %575, i32 0, i32 28
  store i8* %574, i8** %576, align 8
  %577 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %578 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %579 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %578, i32 0, i32 27
  store %struct.TYPE_24__* %577, %struct.TYPE_24__** %579, align 8
  %580 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %581 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %580, i32 0, i32 13
  %582 = load i32, i32* %581, align 4
  %583 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %584 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %583, i32 0, i32 26
  store i32 %582, i32* %584, align 4
  %585 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %586 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %585, i32 0, i32 12
  %587 = load i32, i32* %586, align 8
  %588 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %589 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %588, i32 0, i32 25
  store i32 %587, i32* %589, align 8
  %590 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %591 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %590, i32 0, i32 11
  %592 = load i64, i64* %591, align 8
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %602

594:                                              ; preds = %552
  %595 = load i32*, i32** %28, align 8
  %596 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %597 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %596, i32 0, i32 11
  %598 = load i64, i64* %597, align 8
  %599 = call i8* @apr_pstrdup(i32* %595, i64 %598)
  %600 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %601 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %600, i32 0, i32 24
  store i8* %599, i8** %601, align 8
  br label %602

602:                                              ; preds = %594, %552
  %603 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %604 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %603, i32 0, i32 10
  %605 = load i32, i32* %604, align 8
  %606 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %607 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %606, i32 0, i32 23
  store i32 %605, i32* %607, align 8
  %608 = load i64, i64* @svn_node_none, align 8
  %609 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %610 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %609, i32 0, i32 22
  store i64 %608, i64* %610, align 8
  %611 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %612 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %613 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %612, i32 0, i32 21
  store i32 %611, i32* %613, align 8
  %614 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %615 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %614, i32 0, i32 20
  store i64 0, i64* %615, align 8
  %616 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %617 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %616, i32 0, i32 19
  store i32* null, i32** %617, align 8
  %618 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %619 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %618, i32 0, i32 16
  %620 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %621 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %620, i32 0, i32 18
  %622 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %623 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %622, i32 0, i32 17
  %624 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %625 = load i8*, i8** %20, align 8
  %626 = load i8*, i8** %19, align 8
  %627 = load i8*, i8** %21, align 8
  %628 = load i32*, i32** %17, align 8
  %629 = load i8*, i8** %18, align 8
  %630 = load i32*, i32** %28, align 8
  %631 = load i32*, i32** %29, align 8
  %632 = call i32 @get_repos_root_url_relpath(i32* %619, i32* %621, i32* %623, %struct.svn_wc__db_info_t* %624, i8* %625, i8* %626, i8* %627, i32* %628, i8* %629, i32* %630, i32* %631)
  %633 = call i32 @SVN_ERR(i32 %632)
  %634 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %635 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %634, i32 0, i32 9
  %636 = load %struct.TYPE_20__*, %struct.TYPE_20__** %635, align 8
  %637 = icmp ne %struct.TYPE_20__* %636, null
  br i1 %637, label %638, label %677

638:                                              ; preds = %602
  %639 = load i32*, i32** %28, align 8
  %640 = call %struct.TYPE_24__* @svn_lock_create(i32* %639)
  store %struct.TYPE_24__* %640, %struct.TYPE_24__** %51, align 8
  %641 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %642 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %641, i32 0, i32 16
  %643 = load i32, i32* %642, align 8
  %644 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %645 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %644, i32 0, i32 4
  store i32 %643, i32* %645, align 4
  %646 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %647 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %646, i32 0, i32 9
  %648 = load %struct.TYPE_20__*, %struct.TYPE_20__** %647, align 8
  %649 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %648, i32 0, i32 3
  %650 = load i32, i32* %649, align 4
  %651 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %652 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %651, i32 0, i32 3
  store i32 %650, i32* %652, align 4
  %653 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %654 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %653, i32 0, i32 9
  %655 = load %struct.TYPE_20__*, %struct.TYPE_20__** %654, align 8
  %656 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %655, i32 0, i32 2
  %657 = load i32, i32* %656, align 4
  %658 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %659 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %658, i32 0, i32 2
  store i32 %657, i32* %659, align 4
  %660 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %661 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %660, i32 0, i32 9
  %662 = load %struct.TYPE_20__*, %struct.TYPE_20__** %661, align 8
  %663 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %662, i32 0, i32 1
  %664 = load i32, i32* %663, align 4
  %665 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %666 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %665, i32 0, i32 1
  store i32 %664, i32* %666, align 4
  %667 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %668 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %667, i32 0, i32 9
  %669 = load %struct.TYPE_20__*, %struct.TYPE_20__** %668, align 8
  %670 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %669, i32 0, i32 0
  %671 = load i32, i32* %670, align 4
  %672 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %673 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %672, i32 0, i32 0
  store i32 %671, i32* %673, align 4
  %674 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %675 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %676 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %675, i32 0, i32 15
  store %struct.TYPE_24__* %674, %struct.TYPE_24__** %676, align 8
  br label %680

677:                                              ; preds = %602
  %678 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %679 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %678, i32 0, i32 15
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %679, align 8
  br label %680

680:                                              ; preds = %677, %638
  %681 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %682 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %681, i32 0, i32 8
  %683 = load i32, i32* %682, align 8
  %684 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %685 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %684, i32 0, i32 14
  store i32 %683, i32* %685, align 8
  %686 = load i8*, i8** %34, align 8
  %687 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %688 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %687, i32 0, i32 13
  store i8* %686, i8** %688, align 8
  %689 = load i8*, i8** @TRUE, align 8
  %690 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %691 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %690, i32 0, i32 12
  store i8* %689, i8** %691, align 8
  %692 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %693 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %692, i32 0, i32 7
  %694 = load i64, i64* %693, align 8
  %695 = icmp ne i64 %694, 0
  br i1 %695, label %696, label %704

696:                                              ; preds = %680
  %697 = load i32*, i32** %28, align 8
  %698 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %699 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %698, i32 0, i32 7
  %700 = load i64, i64* %699, align 8
  %701 = call i8* @apr_pstrdup(i32* %697, i64 %700)
  %702 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %703 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %702, i32 0, i32 11
  store i8* %701, i8** %703, align 8
  br label %704

704:                                              ; preds = %696, %680
  %705 = load i8*, i8** %35, align 8
  %706 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %707 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %706, i32 0, i32 8
  store i8* %705, i8** %707, align 8
  %708 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %709 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %708, i32 0, i32 6
  %710 = load %struct.TYPE_21__*, %struct.TYPE_21__** %709, align 8
  %711 = icmp ne %struct.TYPE_21__* %710, null
  br i1 %711, label %712, label %722

712:                                              ; preds = %704
  %713 = load i32*, i32** %28, align 8
  %714 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %715 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %714, i32 0, i32 6
  %716 = load %struct.TYPE_21__*, %struct.TYPE_21__** %715, align 8
  %717 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %716, i32 0, i32 0
  %718 = load i64, i64* %717, align 8
  %719 = call i8* @apr_pstrdup(i32* %713, i64 %718)
  %720 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %721 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %720, i32 0, i32 10
  store i8* %719, i8** %721, align 8
  br label %722

722:                                              ; preds = %712, %704
  %723 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %22, align 8
  %724 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %723, i32 0, i32 5
  %725 = load i32, i32* %724, align 8
  %726 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %727 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %726, i32 0, i32 9
  store i32 %725, i32* %727, align 8
  %728 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %729 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %16, align 8
  store %struct.TYPE_23__* %728, %struct.TYPE_23__** %729, align 8
  %730 = load %struct.TYPE_26__*, %struct.TYPE_26__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_26__* %730, %struct.TYPE_26__** %15, align 8
  br label %731

731:                                              ; preds = %722, %469, %395, %282
  %732 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  ret %struct.TYPE_26__* %732
}

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_scan_deletion(i32*, i32*, i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__internal_file_modified_p(i8**, i32*, i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_error_trace(%struct.TYPE_26__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_26__*) #1

declare dso_local i32 @svn_wc__internal_conflicted_p(i8**, i8**, i8**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_info_below_working(i8**, i8**, i64*, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__db_scan_moved(i8**, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_23__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i64) #1

declare dso_local i32 @get_repos_root_url_relpath(i32*, i32*, i32*, %struct.svn_wc__db_info_t*, i8*, i8*, i8*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_24__* @svn_lock_create(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

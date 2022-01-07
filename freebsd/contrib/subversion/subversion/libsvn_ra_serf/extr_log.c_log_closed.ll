; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_log.c_log_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_log.c_log_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_11__ = type { i64, i64, i64, i32*, i32*, i64, i64, i64, i32, i32 (i32, %struct.TYPE_10__*, i32*)* }
%struct.TYPE_10__ = type { i64, i8*, i8*, i32*, i32*, i32* }

@ITEM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"has-children\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"subtractive-merge\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@VERSION = common dso_local global i32 0, align 4
@CREATOR = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@DATE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_LOG = common dso_local global i32 0, align 4
@REVPROP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@HAS_CHILDREN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@SUBTRACTIVE_MERGE = common dso_local global i32 0, align 4
@ADDED_PATH = common dso_local global i32 0, align 4
@REPLACED_PATH = common dso_local global i32 0, align 4
@DELETED_PATH = common dso_local global i32 0, align 4
@MODIFIED_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, %struct.TYPE_9__*, i32*, i32*)* @log_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @log_closed(i32* %0, i8* %1, i32 %2, %struct.TYPE_9__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8, align 1
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %14, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @ITEM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %137

25:                                               ; preds = %6
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %7, align 8
  br label %286

46:                                               ; preds = %35, %30, %25
  %47 = load i32*, i32** %13, align 8
  %48 = call %struct.TYPE_10__* @svn_log_entry_create(i32* %47)
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %15, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @apr_hash_count(i32* %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  br label %65

65:                                               ; preds = %54, %46
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  store i32* %68, i32** %70, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i8* @svn_hash__get_bool(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i8* @svn_hash__get_bool(i32* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = call i8* @svn_hash_gets(i32* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %82, i8** %16, align 8
  %83 = load i8*, i8** %16, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %65
  %86 = load i8*, i8** %16, align 8
  %87 = call i32 @svn_cstring_atoi64(i64* %17, i8* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i64, i64* %17, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %96

92:                                               ; preds = %65
  %93 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 9
  %99 = load i32 (i32, %struct.TYPE_10__*, i32*)*, i32 (i32, %struct.TYPE_10__*, i32*)** %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 %99(i32 %102, %struct.TYPE_10__* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %96
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %111, %96
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @SVN_IS_VALID_REVNUM(i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @SVN_ERR_ASSERT(i32 %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, -1
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %122, %116
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 4
  store i32* null, i32** %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  store i32* null, i32** %136, align 8
  br label %284

137:                                              ; preds = %6
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @VERSION, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* @ITEM, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @svn_ra_serf__xml_note(i32* %142, i32 %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %146)
  br label %283

148:                                              ; preds = %137
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @CREATOR, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %148
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 7
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = call i8* @svn_hash_gets(i32* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %165 = call i32 @collect_revprop(i32* %160, i32 %161, %struct.TYPE_9__* %162, i8* %164)
  %166 = call i32 @SVN_ERR(i32 %165)
  br label %167

167:                                              ; preds = %157, %152
  br label %282

168:                                              ; preds = %148
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @DATE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %168
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = call i8* @svn_hash_gets(i32* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %185 = call i32 @collect_revprop(i32* %180, i32 %181, %struct.TYPE_9__* %182, i8* %184)
  %186 = call i32 @SVN_ERR(i32 %185)
  br label %187

187:                                              ; preds = %177, %172
  br label %281

188:                                              ; preds = %168
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @COMMENT, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %208

192:                                              ; preds = %188
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %192
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* @SVN_PROP_REVISION_LOG, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %203 = load i32*, i32** %12, align 8
  %204 = call i8* @svn_hash_gets(i32* %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %205 = call i32 @collect_revprop(i32* %200, i32 %201, %struct.TYPE_9__* %202, i8* %204)
  %206 = call i32 @SVN_ERR(i32 %205)
  br label %207

207:                                              ; preds = %197, %192
  br label %280

208:                                              ; preds = %188
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* @REVPROP, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %229

212:                                              ; preds = %208
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = call i32* @apr_hash_pool_get(i32* %215)
  store i32* %216, i32** %18, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = load i32*, i32** %18, align 8
  %221 = load i32*, i32** %12, align 8
  %222 = call i8* @svn_hash_gets(i32* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %223 = call i32 @apr_pstrdup(i32* %220, i8* %222)
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %225 = load i32*, i32** %12, align 8
  %226 = call i8* @svn_hash_gets(i32* %225, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %227 = call i32 @collect_revprop(i32* %219, i32 %223, %struct.TYPE_9__* %224, i8* %226)
  %228 = call i32 @SVN_ERR(i32 %227)
  br label %279

229:                                              ; preds = %208
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @HAS_CHILDREN, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i32*, i32** %8, align 8
  %235 = load i32, i32* @ITEM, align 4
  %236 = call i32 @svn_ra_serf__xml_note(i32* %234, i32 %235, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %278

237:                                              ; preds = %229
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* @SUBTRACTIVE_MERGE, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load i32*, i32** %8, align 8
  %243 = load i32, i32* @ITEM, align 4
  %244 = call i32 @svn_ra_serf__xml_note(i32* %242, i32 %243, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %277

245:                                              ; preds = %237
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @ADDED_PATH, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  store i8 65, i8* %19, align 1
  br label %268

250:                                              ; preds = %245
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* @REPLACED_PATH, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  store i8 82, i8* %19, align 1
  br label %267

255:                                              ; preds = %250
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* @DELETED_PATH, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  store i8 68, i8* %19, align 1
  br label %266

260:                                              ; preds = %255
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* @MODIFIED_PATH, align 4
  %263 = icmp eq i32 %261, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 @SVN_ERR_ASSERT(i32 %264)
  store i8 77, i8* %19, align 1
  br label %266

266:                                              ; preds = %260, %259
  br label %267

267:                                              ; preds = %266, %254
  br label %268

268:                                              ; preds = %267, %249
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 3
  %271 = load i32*, i32** %270, align 8
  %272 = load i8, i8* %19, align 1
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %274 = load i32*, i32** %12, align 8
  %275 = call i32 @collect_path(i32* %271, i8 signext %272, %struct.TYPE_9__* %273, i32* %274)
  %276 = call i32 @SVN_ERR(i32 %275)
  br label %277

277:                                              ; preds = %268, %241
  br label %278

278:                                              ; preds = %277, %233
  br label %279

279:                                              ; preds = %278, %212
  br label %280

280:                                              ; preds = %279, %207
  br label %281

281:                                              ; preds = %280, %187
  br label %282

282:                                              ; preds = %281, %167
  br label %283

283:                                              ; preds = %282, %141
  br label %284

284:                                              ; preds = %283, %132
  %285 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %285, i32** %7, align 8
  br label %286

286:                                              ; preds = %284, %44
  %287 = load i32*, i32** %7, align 8
  ret i32* %287
}

declare dso_local %struct.TYPE_10__* @svn_log_entry_create(i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i8* @svn_hash__get_bool(i32*, i8*, i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_ra_serf__xml_note(i32*, i32, i8*, i8*) #1

declare dso_local i32 @collect_revprop(i32*, i32, %struct.TYPE_9__*, i8*) #1

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @collect_path(i32*, i8 signext, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

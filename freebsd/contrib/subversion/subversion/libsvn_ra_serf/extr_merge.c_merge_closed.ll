; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_merge.c_merge_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_merge.c_merge_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32, i8*, i32, %struct.TYPE_10__*, i32*)* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i64 }

@RESPONSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"resourcetype\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"post-commit-err\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@SVN_ERR_RA_DAV_REQUEST_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"A MERGE response for '%s' is not a child of the destination ('%s')\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"checked-in\00", align 1
@SVN_RA_SERF__WC_CHECKED_IN_URL = common dso_local global i32 0, align 4
@BASELINE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@COLLECTION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"collection\00", align 1
@HREF = common dso_local global i32 0, align 4
@CHECKED_IN = common dso_local global i32 0, align 4
@VERSION_NAME = common dso_local global i32 0, align 4
@DATE = common dso_local global i32 0, align 4
@AUTHOR = common dso_local global i32 0, align 4
@POST_COMMIT_ERR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, %struct.TYPE_10__*, i32*, i32*)* @merge_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_closed(i32* %0, i8* %1, i32 %2, %struct.TYPE_10__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_10__, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %14, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @RESPONSE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %148

28:                                               ; preds = %6
  %29 = load i32*, i32** %12, align 8
  %30 = call i8* @svn_hash_gets(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %89

33:                                               ; preds = %28
  %34 = load i8*, i8** %15, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 98
  br i1 %37, label %38, label %89

38:                                               ; preds = %33
  %39 = load i32*, i32** %12, align 8
  %40 = call i8* @svn_hash_gets(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %16, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i8*, i8** %16, align 8
  %45 = call i32 @svn_cstring_atoi64(i64* %17, i8* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i64, i64* %17, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store i64 %47, i64* %51, align 8
  br label %58

52:                                               ; preds = %38
  %53 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i64 %53, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %43
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = call i8* @svn_hash_gets(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = call i8* @apr_pstrdup(i32 %61, i8* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i8* %64, i8** %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = call i8* @svn_hash_gets(i32* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i8* @apr_pstrdup(i32 %71, i8* %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i8* %74, i8** %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = call i8* @svn_hash_gets(i32* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %84 = call i8* @apr_pstrdup(i32 %81, i8* %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i8* %84, i8** %88, align 8
  br label %147

89:                                               ; preds = %33, %28
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call i8* @svn_hash_gets(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %95 = call i8* @svn_urlpath__skip_ancestor(i32 %92, i8* %94)
  store i8* %95, i8** %18, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %89
  %99 = load i32, i32* @SVN_ERR_RA_DAV_REQUEST_FAILED, align 4
  %100 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i8*, i8** %18, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32* @svn_error_createf(i32 %99, i32* null, i32 %100, i8* %101, i32 %104)
  store i32* %105, i32** %7, align 8
  br label %220

106:                                              ; preds = %89
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = call i32 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_12__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %146, label %112

112:                                              ; preds = %106
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32 (i32, i8*, i32, %struct.TYPE_10__*, i32*)*, i32 (i32, i8*, i32, %struct.TYPE_10__*, i32*)** %118, align 8
  %120 = icmp ne i32 (i32, i8*, i32, %struct.TYPE_10__*, i32*)* %119, null
  br i1 %120, label %121, label %146

121:                                              ; preds = %112
  %122 = load i32*, i32** %12, align 8
  %123 = call i8* @svn_hash_gets(i32* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i8* %123, i8** %19, align 8
  %124 = load i8*, i8** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i8* %124, i8** %125, align 8
  %126 = load i8*, i8** %19, align 8
  %127 = call i32 @strlen(i8* %126)
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i32 %127, i32* %128, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32 (i32, i8*, i32, %struct.TYPE_10__*, i32*)*, i32 (i32, i8*, i32, %struct.TYPE_10__*, i32*)** %134, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i8*, i8** %18, align 8
  %142 = load i32, i32* @SVN_RA_SERF__WC_CHECKED_IN_URL, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 %135(i32 %140, i8* %141, i32 %142, %struct.TYPE_10__* %20, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  br label %146

146:                                              ; preds = %121, %112, %106
  br label %147

147:                                              ; preds = %146, %58
  br label %218

148:                                              ; preds = %6
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @BASELINE, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* @RESPONSE, align 4
  %155 = call i32 @svn_ra_serf__xml_note(i32* %153, i32 %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %217

156:                                              ; preds = %148
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @COLLECTION, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* @RESPONSE, align 4
  %163 = call i32 @svn_ra_serf__xml_note(i32* %161, i32 %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %216

164:                                              ; preds = %156
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %22, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @HREF, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %21, align 8
  %172 = load i8*, i8** %22, align 8
  %173 = load i32*, i32** %13, align 8
  %174 = call i8* @svn_urlpath__canonicalize(i8* %172, i32* %173)
  store i8* %174, i8** %22, align 8
  br label %210

175:                                              ; preds = %164
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @CHECKED_IN, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %21, align 8
  %180 = load i8*, i8** %22, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = call i8* @svn_urlpath__canonicalize(i8* %180, i32* %181)
  store i8* %182, i8** %22, align 8
  br label %209

183:                                              ; preds = %175
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @VERSION_NAME, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %208

188:                                              ; preds = %183
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @DATE, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  br label %207

193:                                              ; preds = %188
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @AUTHOR, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  br label %206

198:                                              ; preds = %193
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @POST_COMMIT_ERR, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  br label %205

203:                                              ; preds = %198
  %204 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %205

205:                                              ; preds = %203, %202
  br label %206

206:                                              ; preds = %205, %197
  br label %207

207:                                              ; preds = %206, %192
  br label %208

208:                                              ; preds = %207, %187
  br label %209

209:                                              ; preds = %208, %179
  br label %210

210:                                              ; preds = %209, %171
  %211 = load i32*, i32** %8, align 8
  %212 = load i32, i32* @RESPONSE, align 4
  %213 = load i8*, i8** %21, align 8
  %214 = load i8*, i8** %22, align 8
  %215 = call i32 @svn_ra_serf__xml_note(i32* %211, i32 %212, i8* %213, i8* %214)
  br label %216

216:                                              ; preds = %210, %160
  br label %217

217:                                              ; preds = %216, %152
  br label %218

218:                                              ; preds = %217, %147
  %219 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %219, i32** %7, align 8
  br label %220

220:                                              ; preds = %218, %98
  %221 = load i32*, i32** %7, align 8
  ret i32* %221
}

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i8* @svn_urlpath__skip_ancestor(i32, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_12__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_ra_serf__xml_note(i32*, i32, i8*, i8*) #1

declare dso_local i8* @svn_urlpath__canonicalize(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_make_update_reporter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_make_update_reporter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32*, i8*, i8*, i32*, i32, i8*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i32 }

@SVN_RA_CAPABILITY_DEPTH = common dso_local global i32 0, align 4
@svn_depth_files = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@ra_serf_reporter = common dso_local global i32 0, align 4
@SVN_RA_SERF__REQUEST_BODY_IN_MEM_SIZE = common dso_local global i32 0, align 4
@svn_tristate_true = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@svn_tristate_false = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"prefer\00", align 1
@svn_xml_normal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"S:update-report\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"xmlns:S\00", align 1
@SVN_XML_NAMESPACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"send-all\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"S:include-props\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"S:src-path\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"S:target-revision\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"S:dst-path\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"S:update-target\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"S:ignore-ancestry\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"S:send-copyfrom-args\00", align 1
@svn_depth_empty = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"S:recursive\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"S:text-deltas\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"S:depth\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32**, i8**, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32*, i8*, i32*, i32*)* @make_update_reporter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_update_reporter(%struct.TYPE_11__* %0, i32** %1, i8** %2, i32 %3, i8* %4, i8* %5, i8* %6, i32 %7, i8* %8, i8* %9, i8* %10, i32* %11, i8* %12, i32* %13, i32* %14) #0 {
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_13__*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca %struct.TYPE_12__*, align 8
  %37 = alloca %struct.TYPE_10__*, align 8
  %38 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %16, align 8
  store i32** %1, i32*** %17, align 8
  store i8** %2, i8*** %18, align 8
  store i32 %3, i32* %19, align 4
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i32 %7, i32* %23, align 4
  store i8* %8, i8** %24, align 8
  store i8* %9, i8** %25, align 8
  store i8* %10, i8** %26, align 8
  store i32* %11, i32** %27, align 8
  store i8* %12, i8** %28, align 8
  store i32* %13, i32** %29, align 8
  store i32* %14, i32** %30, align 8
  %39 = load i8*, i8** %22, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %34, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %36, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %37, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %50 = load i32, i32* @SVN_RA_CAPABILITY_DEPTH, align 4
  %51 = load i32*, i32** %30, align 8
  %52 = call i32 @svn_ra_serf__has_capability(%struct.TYPE_11__* %49, i8** %35, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32, i32* %23, align 4
  %55 = load i32, i32* @svn_depth_files, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %15
  %58 = load i32, i32* %23, align 4
  %59 = load i32, i32* @svn_depth_infinity, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i8*, i8** %35, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = load i32*, i32** %27, align 8
  %66 = load i8*, i8** %28, align 8
  %67 = load i32, i32* %23, align 4
  %68 = load i8*, i8** %34, align 8
  %69 = load i32*, i32** %29, align 8
  %70 = call i32 @svn_delta_depth_filter_editor(i32** %32, i8** %33, i32* %65, i8* %66, i32 %67, i8* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %32, align 8
  store i32* %72, i32** %27, align 8
  %73 = load i8*, i8** %33, align 8
  store i8* %73, i8** %28, align 8
  br label %74

74:                                               ; preds = %64, %61, %57, %15
  %75 = load i32*, i32** %29, align 8
  %76 = call %struct.TYPE_13__* @apr_pcalloc(i32* %75, i32 112)
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %31, align 8
  %77 = load i32*, i32** %29, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 8
  store i32* %77, i32** %79, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 14
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %82, align 8
  %83 = load i32, i32* %19, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load i8*, i8** %24, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %26, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** %25, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 13
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 8
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @apr_hash_make(i32* %97)
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 12
  store i32 %98, i32* %100, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %21, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %22, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load i32*, i32** %27, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 11
  store i32* %110, i32** %112, align 8
  %113 = load i8*, i8** %28, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 10
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @FALSE, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 9
  store i8* %116, i8** %118, align 8
  %119 = load i32**, i32*** %17, align 8
  store i32* @ra_serf_reporter, i32** %119, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %121 = bitcast %struct.TYPE_13__* %120 to i8*
  %122 = load i8**, i8*** %18, align 8
  store i8* %121, i8** %122, align 8
  %123 = load i32, i32* @SVN_RA_SERF__REQUEST_BODY_IN_MEM_SIZE, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 8
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @svn_ra_serf__request_body_create(i32 %123, i32* %126)
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @svn_ra_serf__request_body_get_stream(i32 %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @svn_tristate_true, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %74
  %142 = load i8*, i8** @TRUE, align 8
  store i8* %142, i8** %38, align 8
  br label %188

143:                                              ; preds = %74
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @svn_tristate_false, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i8*, i8** @FALSE, align 8
  store i8* %150, i8** %38, align 8
  br label %187

151:                                              ; preds = %143
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %151
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @apr_strnatcasecmp(i64 %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i8*, i8** @FALSE, align 8
  store i8* %163, i8** %38, align 8
  br label %175

164:                                              ; preds = %156
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @apr_strnatcasecmp(i64 %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i8*, i8** @TRUE, align 8
  store i8* %171, i8** %38, align 8
  br label %174

172:                                              ; preds = %164
  %173 = load i8*, i8** @FALSE, align 8
  store i8* %173, i8** %38, align 8
  br label %174

174:                                              ; preds = %172, %170
  br label %175

175:                                              ; preds = %174, %162
  br label %186

176:                                              ; preds = %151
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i8*, i8** @FALSE, align 8
  store i8* %182, i8** %38, align 8
  br label %185

183:                                              ; preds = %176
  %184 = load i8*, i8** @TRUE, align 8
  store i8* %184, i8** %38, align 8
  br label %185

185:                                              ; preds = %183, %181
  br label %186

186:                                              ; preds = %185, %175
  br label %187

187:                                              ; preds = %186, %149
  br label %188

188:                                              ; preds = %187, %141
  %189 = load i8*, i8** %38, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load i32*, i32** %30, align 8
  %193 = load i32, i32* @svn_xml_normal, align 4
  %194 = load i32, i32* @SVN_XML_NAMESPACE, align 4
  %195 = load i32, i32* @SVN_VA_NULL, align 4
  %196 = call i32 (%struct.TYPE_10__**, i32*, i32, i8*, i8*, i32, i8*, ...) @svn_xml_make_open_tag(%struct.TYPE_10__** %37, i32* %192, i32 %193, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %195)
  br label %207

197:                                              ; preds = %188
  %198 = load i32*, i32** %30, align 8
  %199 = load i32, i32* @svn_xml_normal, align 4
  %200 = load i32, i32* @SVN_XML_NAMESPACE, align 4
  %201 = load i32, i32* @SVN_VA_NULL, align 4
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32 (%struct.TYPE_10__**, i32*, i32, i8*, i8*, i32, i8*, ...) @svn_xml_make_open_tag(%struct.TYPE_10__** %37, i32* %198, i32 %199, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %200, i8* %203)
  %205 = load i32*, i32** %30, align 8
  %206 = call i32 @make_simple_xml_tag(%struct.TYPE_10__** %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %205)
  br label %207

207:                                              ; preds = %197, %191
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load i32*, i32** %30, align 8
  %212 = call i32 @make_simple_xml_tag(%struct.TYPE_10__** %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %210, i32* %211)
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 8
  %216 = call i64 @SVN_IS_VALID_REVNUM(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %207
  %219 = load i32*, i32** %30, align 8
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = call i8* @apr_ltoa(i32* %219, i32 %222)
  %224 = load i32*, i32** %30, align 8
  %225 = call i32 @make_simple_xml_tag(%struct.TYPE_10__** %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %223, i32* %224)
  br label %226

226:                                              ; preds = %218, %207
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %244

231:                                              ; preds = %226
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = load i8*, i8** %233, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %231
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = load i32*, i32** %30, align 8
  %243 = call i32 @make_simple_xml_tag(%struct.TYPE_10__** %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %241, i32* %242)
  br label %244

244:                                              ; preds = %238, %231, %226
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %262

249:                                              ; preds = %244
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 2
  %252 = load i8*, i8** %251, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %249
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  %259 = load i8*, i8** %258, align 8
  %260 = load i32*, i32** %30, align 8
  %261 = call i32 @make_simple_xml_tag(%struct.TYPE_10__** %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %259, i32* %260)
  br label %262

262:                                              ; preds = %256, %249, %244
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 5
  %265 = load i8*, i8** %264, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load i32*, i32** %30, align 8
  %269 = call i32 @make_simple_xml_tag(%struct.TYPE_10__** %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %268)
  br label %270

270:                                              ; preds = %267, %262
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 4
  %273 = load i8*, i8** %272, align 8
  %274 = icmp ne i8* %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = load i32*, i32** %30, align 8
  %277 = call i32 @make_simple_xml_tag(%struct.TYPE_10__** %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %276)
  br label %278

278:                                              ; preds = %275, %270
  %279 = load i32, i32* %23, align 4
  %280 = load i32, i32* @svn_depth_files, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %286, label %282

282:                                              ; preds = %278
  %283 = load i32, i32* %23, align 4
  %284 = load i32, i32* @svn_depth_empty, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %282, %278
  %287 = load i32*, i32** %30, align 8
  %288 = call i32 @make_simple_xml_tag(%struct.TYPE_10__** %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %287)
  br label %289

289:                                              ; preds = %286, %282
  %290 = load i8*, i8** %25, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %295, label %292

292:                                              ; preds = %289
  %293 = load i32*, i32** %30, align 8
  %294 = call i32 @make_simple_xml_tag(%struct.TYPE_10__** %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %293)
  br label %295

295:                                              ; preds = %292, %289
  %296 = load i32, i32* %23, align 4
  %297 = call i8* @svn_depth_to_word(i32 %296)
  %298 = load i32*, i32** %30, align 8
  %299 = call i32 @make_simple_xml_tag(%struct.TYPE_10__** %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* %297, i32* %298)
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = call i32 @svn_stream_write(i32 %302, i32 %305, i32* %307)
  %309 = call i32 @SVN_ERR(i32 %308)
  %310 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %310
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__has_capability(%struct.TYPE_11__*, i8**, i32, i32*) #1

declare dso_local i32 @svn_delta_depth_filter_editor(i32**, i8**, i32*, i8*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @svn_ra_serf__request_body_create(i32, i32*) #1

declare dso_local i32 @svn_ra_serf__request_body_get_stream(i32) #1

declare dso_local i64 @apr_strnatcasecmp(i64, i8*) #1

declare dso_local i32 @svn_xml_make_open_tag(%struct.TYPE_10__**, i32*, i32, i8*, i8*, i32, i8*, ...) #1

declare dso_local i32 @make_simple_xml_tag(%struct.TYPE_10__**, i8*, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i8* @apr_ltoa(i32*, i32) #1

declare dso_local i8* @svn_depth_to_word(i32) #1

declare dso_local i32 @svn_stream_write(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

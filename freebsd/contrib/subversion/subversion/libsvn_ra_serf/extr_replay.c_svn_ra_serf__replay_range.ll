; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_svn_ra_serf__replay_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_svn_ra_serf__replay_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, i64, i32, i32 (i32)*, i64 }
%struct.TYPE_15__ = type { i8* }
%struct.revision_report_t = type { i32*, i8*, i8*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i64, i32*, %struct.TYPE_17__*, i32, i64, i64, i32*, i8*, i32, i32 }
%struct.TYPE_18__ = type { i8*, i8*, i8*, %struct.revision_report_t*, i32, i32, %struct.revision_report_t*, i32, %struct.revision_report_t*, i32 }

@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@MAX_OUTSTANDING_REQUESTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s/%ld\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@all_props = common dso_local global i32 0, align 4
@svn_ra_serf__deliver_svn_props = common dso_local global i32 0, align 4
@replay_ttable = common dso_local global i32 0, align 4
@replay_opened = common dso_local global i32 0, align 4
@replay_closed = common dso_local global i32 0, align 4
@replay_cdata = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@create_replay_body = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@replay_done = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@setup_headers = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__replay_range(%struct.TYPE_16__* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca %struct.revision_report_t*, align 8
  %28 = alloca %struct.TYPE_18__*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %20, align 8
  %36 = load i64, i64* %12, align 8
  store i64 %36, i64* %21, align 8
  store i32 0, i32* %23, align 4
  %37 = load i32*, i32** %19, align 8
  %38 = call i32* @svn_pool_create(i32* %37)
  store i32* %38, i32** %26, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %9
  %44 = load i32, i32* @SVN_ERR_RA_NOT_IMPLEMENTED, align 4
  %45 = call i32* @svn_error_create(i32 %44, i32* null, i32* null)
  store i32* %45, i32** %10, align 8
  br label %265

46:                                               ; preds = %9
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %48 = load i32*, i32** %26, align 8
  %49 = call i32 @svn_ra_serf__report_resource(i8** %22, %struct.TYPE_17__* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %61 = load i32*, i32** %26, align 8
  %62 = call i32 @svn_ra_serf__get_relative_path(i8** %24, i8* %59, %struct.TYPE_17__* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %65

64:                                               ; preds = %46
  store i8* null, i8** %24, align 8
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %260, %65
  %67 = load i32, i32* %23, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %21, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp sle i64 %70, %71
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ true, %66 ], [ %72, %69 ]
  br i1 %74, label %75, label %261

75:                                               ; preds = %73
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  %78 = load i32 (i32)*, i32 (i32)** %77, align 8
  %79 = icmp ne i32 (i32)* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  %83 = load i32 (i32)*, i32 (i32)** %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %83(i32 %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  br label %89

89:                                               ; preds = %80, %75
  %90 = load i64, i64* %21, align 8
  %91 = load i64, i64* %13, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %93, label %248

93:                                               ; preds = %89
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* @MAX_OUTSTANDING_REQUESTS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %248

97:                                               ; preds = %93
  %98 = load i32*, i32** %26, align 8
  %99 = call i32* @svn_pool_create(i32* %98)
  store i32* %99, i32** %29, align 8
  %100 = load i32*, i32** %29, align 8
  %101 = call %struct.revision_report_t* @apr_pcalloc(i32* %100, i32 120)
  store %struct.revision_report_t* %101, %struct.revision_report_t** %27, align 8
  %102 = load i32*, i32** %29, align 8
  %103 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %104 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %103, i32 0, i32 7
  store i32* %102, i32** %104, align 8
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %107 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %106, i32 0, i32 15
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %110 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %109, i32 0, i32 14
  store i32 %108, i32* %110, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %113 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %112, i32 0, i32 13
  store i8* %111, i8** %113, align 8
  %114 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %115 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %114, i32 0, i32 12
  store i32* %25, i32** %115, align 8
  %116 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %117 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %116, i32 0, i32 0
  store i32* %23, i32** %117, align 8
  %118 = load i8*, i8** %24, align 8
  %119 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %120 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load i64, i64* %21, align 8
  %122 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %123 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %122, i32 0, i32 11
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %126 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %125, i32 0, i32 10
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %129 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %128, i32 0, i32 9
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %131 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %132 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %131, i32 0, i32 8
  store %struct.TYPE_17__* %130, %struct.TYPE_17__** %132, align 8
  %133 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %134 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %133, i32 0, i32 7
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @apr_hash_make(i32* %135)
  %137 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %138 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %140 = call i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_17__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %97
  %143 = load i32*, i32** %29, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i64, i64* %21, align 8
  %148 = call i8* @apr_psprintf(i32* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %146, i64 %147)
  %149 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %150 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  %151 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %152 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %153 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %152, i32 0, i32 6
  store i64 %151, i64* %153, align 8
  br label %161

154:                                              ; preds = %97
  %155 = load i8*, i8** %22, align 8
  %156 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %157 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = load i64, i64* %21, align 8
  %159 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %160 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %159, i32 0, i32 6
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %154, %142
  %162 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %163 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %162, i32 0, i32 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %165 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %166 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %169 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %168, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* @all_props, align 4
  %172 = load i32, i32* @svn_ra_serf__deliver_svn_props, align 4
  %173 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %174 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = load i32*, i32** %29, align 8
  %177 = call i32 @svn_ra_serf__create_propfind_handler(%struct.TYPE_18__** %163, %struct.TYPE_17__* %164, i8* %167, i64 %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %171, i32 %172, i32 %175, i32* %176)
  %178 = call i32 @SVN_ERR(i32 %177)
  %179 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %180 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %179, i32 0, i32 4
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  %182 = call i32 @svn_ra_serf__request_create(%struct.TYPE_18__* %181)
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %161
  %188 = load i32*, i32** %29, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i64, i64* %21, align 8
  %193 = call i8* @apr_psprintf(i32* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %191, i64 %192)
  store i8* %193, i8** %31, align 8
  br label %199

194:                                              ; preds = %161
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  store i8* %198, i8** %31, align 8
  br label %199

199:                                              ; preds = %194, %187
  %200 = load i32, i32* @replay_ttable, align 4
  %201 = load i32, i32* @replay_opened, align 4
  %202 = load i32, i32* @replay_closed, align 4
  %203 = load i32, i32* @replay_cdata, align 4
  %204 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %205 = load i32*, i32** %29, align 8
  %206 = call i32* @svn_ra_serf__xml_context_create(i32 %200, i32 %201, i32 %202, i32 %203, %struct.revision_report_t* %204, i32* %205)
  store i32* %206, i32** %30, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %208 = load i32*, i32** %30, align 8
  %209 = load i32*, i32** %29, align 8
  %210 = call %struct.TYPE_18__* @svn_ra_serf__create_expat_handler(%struct.TYPE_17__* %207, i32* %208, i32* null, i32* %209)
  store %struct.TYPE_18__* %210, %struct.TYPE_18__** %28, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %212, align 8
  %213 = load i8*, i8** %31, align 8
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  %216 = load i32, i32* @create_replay_body, align 4
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 9
  store i32 %216, i32* %218, align 8
  %219 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 8
  store %struct.revision_report_t* %219, %struct.revision_report_t** %221, align 8
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %223, align 8
  %224 = load i32, i32* @replay_done, align 4
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 7
  store i32 %224, i32* %226, align 8
  %227 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 6
  store %struct.revision_report_t* %227, %struct.revision_report_t** %229, align 8
  %230 = load i32, i32* @TRUE, align 4
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 5
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* @setup_headers, align 4
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 4
  store i32 %233, i32* %235, align 8
  %236 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 3
  store %struct.revision_report_t* %236, %struct.revision_report_t** %238, align 8
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %240 = load %struct.revision_report_t*, %struct.revision_report_t** %27, align 8
  %241 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %240, i32 0, i32 3
  store %struct.TYPE_18__* %239, %struct.TYPE_18__** %241, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %243 = call i32 @svn_ra_serf__request_create(%struct.TYPE_18__* %242)
  %244 = load i64, i64* %21, align 8
  %245 = add nsw i64 %244, 1
  store i64 %245, i64* %21, align 8
  %246 = load i32, i32* %23, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %23, align 4
  br label %248

248:                                              ; preds = %199, %93, %89
  %249 = load i32, i32* @FALSE, align 4
  store i32 %249, i32* %25, align 4
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %251 = load i32*, i32** %26, align 8
  %252 = call i32* @svn_ra_serf__context_run_wait(i32* %25, %struct.TYPE_17__* %250, i32* %251)
  store i32* %252, i32** %32, align 8
  %253 = load i32*, i32** %32, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %260

255:                                              ; preds = %248
  %256 = load i32*, i32** %26, align 8
  %257 = call i32 @svn_pool_destroy(i32* %256)
  %258 = load i32*, i32** %32, align 8
  %259 = call i32* @svn_error_trace(i32* %258)
  store i32* %259, i32** %10, align 8
  br label %265

260:                                              ; preds = %248
  br label %66

261:                                              ; preds = %73
  %262 = load i32*, i32** %26, align 8
  %263 = call i32 @svn_pool_destroy(i32* %262)
  %264 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %264, i32** %10, align 8
  br label %265

265:                                              ; preds = %261, %255, %43
  %266 = load i32*, i32** %10, align 8
  ret i32* %266
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__report_resource(i8**, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @svn_ra_serf__get_relative_path(i8**, i8*, %struct.TYPE_17__*, i32*) #1

declare dso_local %struct.revision_report_t* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_17__*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, i64) #1

declare dso_local i32 @svn_ra_serf__create_propfind_handler(%struct.TYPE_18__**, %struct.TYPE_17__*, i8*, i64, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_ra_serf__request_create(%struct.TYPE_18__*) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32, i32, i32, %struct.revision_report_t*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_ra_serf__create_expat_handler(%struct.TYPE_17__*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_ra_serf__context_run_wait(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

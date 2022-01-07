; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_handle_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_handle_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__* (i32*, i32*, i32, i32*)*, i32*, i8*, i8*, %struct.TYPE_23__, i32, %struct.TYPE_20__*, %struct.TYPE_19__*, i32, i32, i32, i32, i32 (i32*, i32*, i32, i32)*, i8* }
%struct.TYPE_23__ = type { i64, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32*, i64, i32, i32, i8*, i8* }

@APR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@SVN_ERR_RA_DAV_REQUEST_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s request on '%s' failed\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@SERF_HTTP_10 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@SVN_ERR_RA_DAV_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Premature EOF seen from server (http status=%d)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (i32*, i32*, %struct.TYPE_21__*, i64*, i32*)* @handle_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @handle_response(i32* %0, i32* %1, %struct.TYPE_21__* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i64, i64* @APR_SUCCESS, align 8
  %19 = load i64*, i64** %10, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %64, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** @FALSE, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 14
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 13
  %28 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %27, align 8
  %29 = icmp ne i32 (i32*, i32*, i32, i32)* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %22
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 13
  %33 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %32, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %33(i32* %34, i32* %35, i32 0, i32 %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %42 = call i32 @svn_ra_serf__request_create(%struct.TYPE_21__* %41)
  br label %62

43:                                               ; preds = %22
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %50 = call i32 @svn_ra_serf__request_create(%struct.TYPE_21__* %49)
  br label %61

51:                                               ; preds = %43
  %52 = load i32, i32* @SVN_ERR_RA_DAV_REQUEST_FAILED, align 4
  %53 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_22__* (i32, i32, i32, i32, ...) @svn_error_createf(i32 %52, i32 0, i32 %53, i32 %56, i32 %59)
  store %struct.TYPE_22__* %60, %struct.TYPE_22__** %6, align 8
  br label %347

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %30
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %6, align 8
  br label %347

64:                                               ; preds = %5
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %279

70:                                               ; preds = %64
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %127

76:                                               ; preds = %70
  %77 = load i32*, i32** %8, align 8
  %78 = call i64 @serf_bucket_response_status(i32* %77, %struct.TYPE_23__* %14)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @APR_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i64, i64* %12, align 8
  %84 = load i64*, i64** %10, align 8
  store i64 %83, i64* %84, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %85, %struct.TYPE_22__** %6, align 8
  br label %347

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @SVN_ERR_ASSERT(i32 %90)
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 5
  %94 = bitcast %struct.TYPE_23__* %93 to i8*
  %95 = bitcast %struct.TYPE_23__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 16, i1 false)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @apr_pstrdup(i32 %98, i32 %100)
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SERF_HTTP_10, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %86
  %110 = load i8*, i8** @FALSE, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 5
  store i8* %110, i8** %114, align 8
  br label %115

115:                                              ; preds = %109, %86
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @SERF_HTTP_VERSION(i32 2, i32 0)
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i8*, i8** @TRUE, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 4
  store i8* %121, i8** %125, align 8
  br label %126

126:                                              ; preds = %120, %115
  br label %127

127:                                              ; preds = %126, %70
  %128 = load i32*, i32** %8, align 8
  %129 = call i64 @serf_bucket_response_wait_for_headers(i32* %128)
  store i64 %129, i64* %12, align 8
  %130 = load i64, i64* %12, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %173

132:                                              ; preds = %127
  %133 = load i64, i64* %12, align 8
  %134 = call i32 @APR_STATUS_IS_EOF(i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %12, align 8
  %138 = load i64*, i64** %10, align 8
  store i64 %137, i64* %138, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %139, %struct.TYPE_22__** %6, align 8
  br label %347

140:                                              ; preds = %132
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @strcmp(i32 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %140
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 204
  br i1 %151, label %152, label %172

152:                                              ; preds = %146
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 304
  br i1 %157, label %158, label %172

158:                                              ; preds = %152
  %159 = load i32, i32* @SVN_ERR_RA_DAV_MALFORMED_DATA, align 4
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @svn_ra_serf__wrap_err(i64 %160, i32* null)
  %162 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call %struct.TYPE_22__* (i32, i32, i32, i32, ...) @svn_error_createf(i32 %159, i32 %161, i32 %162, i32 %166)
  store %struct.TYPE_22__* %167, %struct.TYPE_22__** %13, align 8
  %168 = load i8*, i8** @TRUE, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 3
  store i8* %168, i8** %170, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %171, %struct.TYPE_22__** %6, align 8
  br label %347

172:                                              ; preds = %152, %146, %140
  br label %173

173:                                              ; preds = %172, %127
  %174 = load i32*, i32** %8, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = call i32 @response_get_location(i32* %174, i32 %179, i32 %182, i32* %183)
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 9
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 7
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 401
  br i1 %192, label %193, label %220

193:                                              ; preds = %173
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %197, 400
  br i1 %198, label %199, label %220

199:                                              ; preds = %193
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @svn_auth_save_credentials(i32* %204, i32 %209)
  %211 = call i32 @SVN_ERR(i32 %210)
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 8
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 8
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 0
  store i32* null, i32** %219, align 8
  br label %220

220:                                              ; preds = %199, %193, %173
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 7
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  store i32 %224, i32* %228, align 4
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = icmp sge i32 %232, 400
  br i1 %233, label %234, label %264

234:                                              ; preds = %220
  %235 = load i32*, i32** %8, align 8
  %236 = call i32* @serf_bucket_response_get_headers(i32* %235)
  store i32* %236, i32** %15, align 8
  %237 = load i32*, i32** %15, align 8
  %238 = call i8* @serf_bucket_headers_get(i32* %237, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i8* %238, i8** %16, align 8
  %239 = load i8*, i8** %16, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %259

241:                                              ; preds = %234
  %242 = load i8*, i8** %16, align 8
  %243 = call i64 @strncasecmp(i8* %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %259

245:                                              ; preds = %241
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %247 = load i8*, i8** @FALSE, align 8
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @svn_ra_serf__setup_error_parsing(i32** %17, %struct.TYPE_21__* %246, i8* %247, i32 %250, i32 %253)
  %255 = call i32 @SVN_ERR(i32 %254)
  %256 = load i32*, i32** %17, align 8
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 2
  store i32* %256, i32** %258, align 8
  br label %263

259:                                              ; preds = %241, %234
  %260 = load i8*, i8** @TRUE, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 3
  store i8* %260, i8** %262, align 8
  br label %263

263:                                              ; preds = %259, %245
  br label %275

264:                                              ; preds = %220
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = icmp sle i32 %268, 199
  br i1 %269, label %270, label %274

270:                                              ; preds = %264
  %271 = load i8*, i8** @TRUE, align 8
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 3
  store i8* %271, i8** %273, align 8
  br label %274

274:                                              ; preds = %270, %264
  br label %275

275:                                              ; preds = %274, %263
  %276 = load i8*, i8** @TRUE, align 8
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 4
  store i8* %276, i8** %278, align 8
  br label %279

279:                                              ; preds = %275, %69
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 3
  %282 = load i8*, i8** %281, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %289

284:                                              ; preds = %279
  %285 = load i32*, i32** %8, align 8
  %286 = call i64 @drain_bucket(i32* %285)
  %287 = load i64*, i64** %10, align 8
  store i64 %286, i64* %287, align 8
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %288, %struct.TYPE_22__** %6, align 8
  br label %347

289:                                              ; preds = %279
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 2
  %292 = load i32*, i32** %291, align 8
  %293 = icmp ne i32* %292, null
  br i1 %293, label %294, label %305

294:                                              ; preds = %289
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 2
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %299 = load i32*, i32** %7, align 8
  %300 = load i32*, i32** %8, align 8
  %301 = load i64*, i64** %10, align 8
  %302 = load i32*, i32** %11, align 8
  %303 = call %struct.TYPE_22__* @svn_ra_serf__handle_server_error(i32* %297, %struct.TYPE_21__* %298, i32* %299, i32* %300, i64* %301, i32* %302)
  %304 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %303)
  store %struct.TYPE_22__* %304, %struct.TYPE_22__** %6, align 8
  br label %347

305:                                              ; preds = %289
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_22__* (i32*, i32*, i32, i32*)*, %struct.TYPE_22__* (i32*, i32*, i32, i32*)** %307, align 8
  %309 = load i32*, i32** %7, align 8
  %310 = load i32*, i32** %8, align 8
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32*, i32** %11, align 8
  %315 = call %struct.TYPE_22__* %308(i32* %309, i32* %310, i32 %313, i32* %314)
  store %struct.TYPE_22__* %315, %struct.TYPE_22__** %13, align 8
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %317 = icmp ne %struct.TYPE_22__* %316, null
  br i1 %317, label %318, label %344

318:                                              ; preds = %305
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = call i32 @SERF_BUCKET_READ_ERROR(i64 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %336

324:                                              ; preds = %318
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = call i64 @APR_STATUS_IS_ECONNRESET(i64 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %324
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = call i64 @APR_STATUS_IS_ECONNABORTED(i64 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %344

336:                                              ; preds = %330, %324, %318
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i64*, i64** %10, align 8
  store i64 %339, i64* %340, align 8
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %342 = call i32 @svn_error_clear(%struct.TYPE_22__* %341)
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %343, %struct.TYPE_22__** %6, align 8
  br label %347

344:                                              ; preds = %330, %305
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %346 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %345)
  store %struct.TYPE_22__* %346, %struct.TYPE_22__** %6, align 8
  br label %347

347:                                              ; preds = %344, %336, %294, %284, %158, %136, %82, %62, %51
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  ret %struct.TYPE_22__* %348
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__request_create(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @svn_error_createf(i32, i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @serf_bucket_response_status(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @apr_pstrdup(i32, i32) #1

declare dso_local i64 @SERF_HTTP_VERSION(i32, i32) #1

declare dso_local i64 @serf_bucket_response_wait_for_headers(i32*) #1

declare dso_local i32 @APR_STATUS_IS_EOF(i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @svn_ra_serf__wrap_err(i64, i32*) #1

declare dso_local i32 @response_get_location(i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_auth_save_credentials(i32*, i32) #1

declare dso_local i32* @serf_bucket_response_get_headers(i32*) #1

declare dso_local i8* @serf_bucket_headers_get(i32*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @svn_ra_serf__setup_error_parsing(i32**, %struct.TYPE_21__*, i8*, i32, i32) #1

declare dso_local i64 @drain_bucket(i32*) #1

declare dso_local %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_ra_serf__handle_server_error(i32*, %struct.TYPE_21__*, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @SERF_BUCKET_READ_ERROR(i64) #1

declare dso_local i64 @APR_STATUS_IS_ECONNRESET(i64) #1

declare dso_local i64 @APR_STATUS_IS_ECONNABORTED(i64) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

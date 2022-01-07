; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_open4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_open4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_lib_defn = type { i8*, i64, i32 (i32, %struct.TYPE_28__**, i32*)* }
%struct.TYPE_28__ = type { i64 (i32*)*, i32 (%struct.TYPE_26__*, i8**, i32*)*, i32 (%struct.TYPE_26__*, {}*)*, %struct.TYPE_29__* (%struct.TYPE_26__*, i8**, i8*, %struct.TYPE_27__*, i8*, i32*, i32*, i32*, i32*)*, i32 (...)* }
%struct.TYPE_26__ = type { i32*, %struct.TYPE_28__*, i8*, i32 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32* }

@APR_SUCCESS = common dso_local global i64 0, align 8
@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Illegal repository URL '%s'\00", align 1
@ra_libraries = common dso_local global %struct.ra_lib_defn* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Unrecognized URL scheme for '%s'\00", align 1
@SVN_ERR_RA_SESSION_URL_MISMATCH = common dso_local global i64 0, align 8
@SVN_ERR_RA_CANNOT_CREATE_SESSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Unable to connect to a repository at URL '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_29__* null, align 8
@SVN_ERR_RA_UUID_MISMATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Repository UUID '%s' doesn't match expected UUID '%s'\00", align 1
@DEFAULT_HTTP_LIBRARY = common dso_local global i8* null, align 8
@SVN_CONFIG_CATEGORY_SERVERS = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_HTTP_LIBRARY = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_GROUPS = common dso_local global i32 0, align 4
@SVN_ERR_BAD_CONFIG_VALUE = common dso_local global i32 0, align 4
@dav_schemes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_29__* @svn_ra_open4(%struct.TYPE_26__** %0, i8** %1, i8* %2, i8* %3, %struct.TYPE_27__* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_26__**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_26__*, align 8
  %21 = alloca %struct.ra_lib_defn*, align 8
  %22 = alloca %struct.TYPE_28__*, align 8
  %23 = alloca %struct.TYPE_30__, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_29__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32 (i32, %struct.TYPE_28__**, i32*)*, align 8
  %29 = alloca %struct.TYPE_29__* (%struct.TYPE_26__**, i8**, i8*, i8*, %struct.TYPE_27__*, i8*, i32*, i32*)*, align 8
  %30 = alloca i8*, align 8
  store %struct.TYPE_26__** %0, %struct.TYPE_26__*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = call i32* @svn_pool_create(i32* %31)
  store i32* %32, i32** %18, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = call i32* @svn_pool_create(i32* %33)
  store i32* %34, i32** %19, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %22, align 8
  %35 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %35, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i64 @apr_uri_parse(i32* %36, i8* %37, %struct.TYPE_30__* %23)
  store i64 %38, i64* %24, align 8
  %39 = load i64, i64* %24, align 8
  %40 = load i64, i64* @APR_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %8
  %47 = load i32, i32* @SVN_ERR_RA_ILLEGAL_URL, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %49 = load i8*, i8** %12, align 8
  %50 = call %struct.TYPE_29__* (i32, %struct.TYPE_29__*, i32, i8*, ...) @svn_error_createf(i32 %47, %struct.TYPE_29__* null, i32 %48, i8* %49)
  store %struct.TYPE_29__* %50, %struct.TYPE_29__** %9, align 8
  br label %247

51:                                               ; preds = %42
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %18, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = call i32 @svn_auth__make_session_auth(i32** %26, i32 %59, i32* %60, i32* %62, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  br label %68

67:                                               ; preds = %51
  store i32* null, i32** %26, align 8
  br label %68

68:                                               ; preds = %67, %56
  %69 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** @ra_libraries, align 8
  store %struct.ra_lib_defn* %69, %struct.ra_lib_defn** %21, align 8
  br label %70

70:                                               ; preds = %124, %68
  %71 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %21, align 8
  %72 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %127

75:                                               ; preds = %70
  %76 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %21, align 8
  %77 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i8* @has_scheme_of(i64 %78, i8* %79)
  store i8* %80, i8** %27, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %123

82:                                               ; preds = %75
  %83 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %21, align 8
  %84 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %83, i32 0, i32 2
  %85 = load i32 (i32, %struct.TYPE_28__**, i32*)*, i32 (i32, %struct.TYPE_28__**, i32*)** %84, align 8
  store i32 (i32, %struct.TYPE_28__**, i32*)* %85, i32 (i32, %struct.TYPE_28__**, i32*)** %28, align 8
  %86 = load i32 (i32, %struct.TYPE_28__**, i32*)*, i32 (i32, %struct.TYPE_28__**, i32*)** %28, align 8
  %87 = icmp ne i32 (i32, %struct.TYPE_28__**, i32*)* %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = bitcast i32 (i32, %struct.TYPE_28__**, i32*)** %28 to i32 (i32, %struct.TYPE_28__**, i32*)*
  %90 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %21, align 8
  %91 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32*, i32** %19, align 8
  %94 = call i32 @load_ra_module(i32 (i32, %struct.TYPE_28__**, i32*)* %89, i32* null, i8* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  br label %96

96:                                               ; preds = %88, %82
  %97 = load i32 (i32, %struct.TYPE_28__**, i32*)*, i32 (i32, %struct.TYPE_28__**, i32*)** %28, align 8
  %98 = icmp ne i32 (i32, %struct.TYPE_28__**, i32*)* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  br label %124

100:                                              ; preds = %96
  %101 = load i32 (i32, %struct.TYPE_28__**, i32*)*, i32 (i32, %struct.TYPE_28__**, i32*)** %28, align 8
  %102 = call i32 (...) @svn_ra_version()
  %103 = load i32*, i32** %19, align 8
  %104 = call i32 %101(i32 %102, %struct.TYPE_28__** %22, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 4
  %108 = load i32 (...)*, i32 (...)** %107, align 8
  %109 = call i32 (...) %108()
  %110 = load i8*, i8** %27, align 8
  %111 = call i32 @check_ra_version(i32 %109, i8* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = load i64 (i32*)*, i64 (i32*)** %114, align 8
  %116 = load i32*, i32** %19, align 8
  %117 = call i64 %115(i32* %116)
  %118 = load i8*, i8** %12, align 8
  %119 = call i8* @has_scheme_of(i64 %117, i8* %118)
  %120 = icmp ne i8* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %100
  br label %124

122:                                              ; preds = %100
  br label %127

123:                                              ; preds = %75
  br label %124

124:                                              ; preds = %123, %121, %99
  %125 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %21, align 8
  %126 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %125, i32 1
  store %struct.ra_lib_defn* %126, %struct.ra_lib_defn** %21, align 8
  br label %70

127:                                              ; preds = %122, %70
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %129 = icmp eq %struct.TYPE_28__* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* @SVN_ERR_RA_ILLEGAL_URL, align 4
  %132 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i8*, i8** %12, align 8
  %134 = call %struct.TYPE_29__* (i32, %struct.TYPE_29__*, i32, i8*, ...) @svn_error_createf(i32 %131, %struct.TYPE_29__* null, i32 %132, i8* %133)
  store %struct.TYPE_29__* %134, %struct.TYPE_29__** %9, align 8
  br label %247

135:                                              ; preds = %127
  %136 = load i32*, i32** %18, align 8
  %137 = call %struct.TYPE_26__* @apr_pcalloc(i32* %136, i32 32)
  store %struct.TYPE_26__* %137, %struct.TYPE_26__** %20, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load i8*, i8** %15, align 8
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 1
  store %struct.TYPE_28__* %146, %struct.TYPE_28__** %148, align 8
  %149 = load i32*, i32** %18, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  store i32* %149, i32** %151, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_29__* (%struct.TYPE_26__*, i8**, i8*, %struct.TYPE_27__*, i8*, i32*, i32*, i32*, i32*)*, %struct.TYPE_29__* (%struct.TYPE_26__*, i8**, i8*, %struct.TYPE_27__*, i8*, i32*, i32*, i32*, i32*)** %153, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %156 = load i8**, i8*** %11, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = load i32*, i32** %26, align 8
  %161 = load i32*, i32** %16, align 8
  %162 = load i32*, i32** %18, align 8
  %163 = load i32*, i32** %19, align 8
  %164 = call %struct.TYPE_29__* %154(%struct.TYPE_26__* %155, i8** %156, i8* %157, %struct.TYPE_27__* %158, i8* %159, i32* %160, i32* %161, i32* %162, i32* %163)
  store %struct.TYPE_29__* %164, %struct.TYPE_29__** %25, align 8
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %166 = icmp ne %struct.TYPE_29__* %165, null
  br i1 %166, label %167, label %184

167:                                              ; preds = %135
  %168 = load i32*, i32** %18, align 8
  %169 = call i32 @svn_pool_destroy(i32* %168)
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @SVN_ERR_RA_SESSION_URL_MISMATCH, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %167
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %177 = call %struct.TYPE_29__* @svn_error_trace(%struct.TYPE_29__* %176)
  store %struct.TYPE_29__* %177, %struct.TYPE_29__** %9, align 8
  br label %247

178:                                              ; preds = %167
  %179 = load i32, i32* @SVN_ERR_RA_CANNOT_CREATE_SESSION, align 4
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %181 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %182 = load i8*, i8** %12, align 8
  %183 = call %struct.TYPE_29__* (i32, %struct.TYPE_29__*, i32, i8*, ...) @svn_error_createf(i32 %179, %struct.TYPE_29__* %180, i32 %181, i8* %182)
  store %struct.TYPE_29__* %183, %struct.TYPE_29__** %9, align 8
  br label %247

184:                                              ; preds = %135
  %185 = load i8**, i8*** %11, align 8
  %186 = icmp ne i8** %185, null
  br i1 %186, label %187, label %200

187:                                              ; preds = %184
  %188 = load i8**, i8*** %11, align 8
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load i32*, i32** %17, align 8
  %193 = load i8**, i8*** %11, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = call i8* @apr_pstrdup(i32* %192, i8* %194)
  %196 = load i8**, i8*** %11, align 8
  store i8* %195, i8** %196, align 8
  %197 = load i32*, i32** %18, align 8
  %198 = call i32 @svn_pool_destroy(i32* %197)
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %199, %struct.TYPE_29__** %9, align 8
  br label %247

200:                                              ; preds = %187, %184
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 2
  %203 = load i32 (%struct.TYPE_26__*, {}*)*, i32 (%struct.TYPE_26__*, {}*)** %202, align 8
  %204 = icmp ne i32 (%struct.TYPE_26__*, {}*)* %203, null
  br i1 %204, label %205, label %214

205:                                              ; preds = %200
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 2
  %208 = load i32 (%struct.TYPE_26__*, {}*)*, i32 (%struct.TYPE_26__*, {}*)** %207, align 8
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  store %struct.TYPE_29__* (%struct.TYPE_26__**, i8**, i8*, i8*, %struct.TYPE_27__*, i8*, i32*, i32*)* @svn_ra_open4, %struct.TYPE_29__* (%struct.TYPE_26__**, i8**, i8*, i8*, %struct.TYPE_27__*, i8*, i32*, i32*)** %29, align 8
  %210 = load %struct.TYPE_29__* (%struct.TYPE_26__**, i8**, i8*, i8*, %struct.TYPE_27__*, i8*, i32*, i32*)*, %struct.TYPE_29__* (%struct.TYPE_26__**, i8**, i8*, i8*, %struct.TYPE_27__*, i8*, i32*, i32*)** %29, align 8
  %211 = bitcast %struct.TYPE_29__* (%struct.TYPE_26__**, i8**, i8*, i8*, %struct.TYPE_27__*, i8*, i32*, i32*)* %210 to {}*
  %212 = call i32 %208(%struct.TYPE_26__* %209, {}* %211)
  %213 = call i32 @SVN_ERR(i32 %212)
  br label %214

214:                                              ; preds = %205, %200
  %215 = load i8*, i8** %13, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %241

217:                                              ; preds = %214
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 1
  %220 = load i32 (%struct.TYPE_26__*, i8**, i32*)*, i32 (%struct.TYPE_26__*, i8**, i32*)** %219, align 8
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %222 = load i32*, i32** %17, align 8
  %223 = call i32 %220(%struct.TYPE_26__* %221, i8** %30, i32* %222)
  %224 = call i32 @SVN_ERR(i32 %223)
  %225 = load i8*, i8** %13, align 8
  %226 = load i8*, i8** %30, align 8
  %227 = call i64 @strcmp(i8* %225, i8* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %217
  %230 = load i32*, i32** %17, align 8
  %231 = load i8*, i8** %30, align 8
  %232 = call i8* @apr_pstrdup(i32* %230, i8* %231)
  store i8* %232, i8** %30, align 8
  %233 = load i32*, i32** %18, align 8
  %234 = call i32 @svn_pool_destroy(i32* %233)
  %235 = load i32, i32* @SVN_ERR_RA_UUID_MISMATCH, align 4
  %236 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %237 = load i8*, i8** %30, align 8
  %238 = load i8*, i8** %13, align 8
  %239 = call %struct.TYPE_29__* (i32, %struct.TYPE_29__*, i32, i8*, ...) @svn_error_createf(i32 %235, %struct.TYPE_29__* null, i32 %236, i8* %237, i8* %238)
  store %struct.TYPE_29__* %239, %struct.TYPE_29__** %9, align 8
  br label %247

240:                                              ; preds = %217
  br label %241

241:                                              ; preds = %240, %214
  %242 = load i32*, i32** %19, align 8
  %243 = call i32 @svn_pool_destroy(i32* %242)
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %245 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  store %struct.TYPE_26__* %244, %struct.TYPE_26__** %245, align 8
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %246, %struct.TYPE_29__** %9, align 8
  br label %247

247:                                              ; preds = %241, %229, %191, %178, %175, %130, %46
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  ret %struct.TYPE_29__* %248
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i64 @apr_uri_parse(i32*, i8*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_29__* @svn_error_createf(i32, %struct.TYPE_29__*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_auth__make_session_auth(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @has_scheme_of(i64, i8*) #1

declare dso_local i32 @load_ra_module(i32 (i32, %struct.TYPE_28__**, i32*)*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_ra_version(...) #1

declare dso_local i32 @check_ra_version(i32, i8*) #1

declare dso_local %struct.TYPE_26__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_29__* @svn_error_trace(%struct.TYPE_29__*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_fixup_commit_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_fixup_commit_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 (i32, %struct.TYPE_15__*, i32*)* }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i64 }

@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_FS_CONFLICT = common dso_local global i64 0, align 8
@SVN_ERR_FS_ALREADY_EXISTS = common dso_local global i64 0, align 8
@SVN_ERR_FS_TXN_OUT_OF_DATE = common dso_local global i64 0, align 8
@SVN_ERR_RA_DAV_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_RA_DAV_ALREADY_EXISTS = common dso_local global i64 0, align 8
@SVN_ERR_RA_DAV_PRECONDITION_FAILED = common dso_local global i64 0, align 8
@SVN_ERR_RA_OUT_OF_DATE = common dso_local global i32 0, align 4
@svn_wc_notify_failed_out_of_date = common dso_local global i32 0, align 4
@SVN_ERR_WC_NOT_UP_TO_DATE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Directory '%s' is out of date\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"File '%s' is out of date\00", align 1
@SVN_ERR_FS_NO_LOCK_TOKEN = common dso_local global i32 0, align 4
@SVN_ERR_FS_LOCK_OWNER_MISMATCH = common dso_local global i64 0, align 8
@SVN_ERR_FS_BAD_LOCK_TOKEN = common dso_local global i64 0, align 8
@SVN_ERR_RA_NOT_LOCKED = common dso_local global i64 0, align 8
@svn_wc_notify_failed_locked = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_NO_LOCK_TOKEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Directory '%s' is locked in another working copy\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"File '%s' is locked in another working copy\00", align 1
@SVN_ERR_RA_DAV_FORBIDDEN = common dso_local global i32 0, align 4
@SVN_ERR_AUTHZ_UNWRITABLE = common dso_local global i64 0, align 8
@svn_wc_notify_failed_forbidden_by_server = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_FORBIDDEN_BY_SERVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Changing directory '%s' is forbidden by the server\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Changing file '%s' is forbidden by the server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i8*, i8*, i8*, i64, %struct.TYPE_16__*, %struct.TYPE_17__*, i32*)* @fixup_commit_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @fixup_commit_error(i8* %0, i8* %1, i8* %2, i64 %3, %struct.TYPE_16__* %4, %struct.TYPE_17__* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_17__* %5, %struct.TYPE_17__** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %65, label %24

24:                                               ; preds = %7
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SVN_ERR_FS_CONFLICT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %65, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SVN_ERR_FS_ALREADY_EXISTS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %65, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SVN_ERR_FS_TXN_OUT_OF_DATE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %65, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SVN_ERR_RA_DAV_PATH_NOT_FOUND, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %65, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SVN_ERR_RA_DAV_ALREADY_EXISTS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SVN_ERR_RA_DAV_PRECONDITION_FAILED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %62 = load i32, i32* @SVN_ERR_RA_OUT_OF_DATE, align 4
  %63 = call i64 @svn_error_find_cause(%struct.TYPE_16__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %128

65:                                               ; preds = %60, %54, %48, %42, %36, %30, %24, %7
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %67, align 8
  %69 = icmp ne i32 (i32, %struct.TYPE_15__*, i32*)* %68, null
  br i1 %69, label %70, label %102

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* @svn_wc_notify_failed_out_of_date, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = call %struct.TYPE_15__* @svn_wc_create_notify(i8* %74, i32 %75, i32* %76)
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %16, align 8
  br label %86

78:                                               ; preds = %70
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @svn_path_url_add_component2(i8* %79, i8* %80, i32* %81)
  %83 = load i32, i32* @svn_wc_notify_failed_out_of_date, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = call %struct.TYPE_15__* @svn_wc_create_notify_url(i32 %82, i32 %83, i32* %84)
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %16, align 8
  br label %86

86:                                               ; preds = %78, %73
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store %struct.TYPE_16__* %90, %struct.TYPE_16__** %92, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %94, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 %95(i32 %98, %struct.TYPE_15__* %99, i32* %100)
  br label %102

102:                                              ; preds = %86, %65
  %103 = load i32, i32* @SVN_ERR_WC_NOT_UP_TO_DATE, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* @svn_node_dir, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %112

110:                                              ; preds = %102
  %111 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = load i8*, i8** %9, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i8*, i8** %9, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = call i32 @svn_dirent_local_style(i8* %117, i32* %118)
  br label %125

120:                                              ; preds = %112
  %121 = load i8*, i8** %10, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @svn_path_url_add_component2(i8* %121, i8* %122, i32* %123)
  br label %125

125:                                              ; preds = %120, %116
  %126 = phi i32 [ %119, %116 ], [ %124, %120 ]
  %127 = call %struct.TYPE_16__* @svn_error_createf(i32 %103, %struct.TYPE_16__* %104, i32 %113, i32 %126)
  store %struct.TYPE_16__* %127, %struct.TYPE_16__** %8, align 8
  br label %290

128:                                              ; preds = %60
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %130 = load i32, i32* @SVN_ERR_FS_NO_LOCK_TOKEN, align 4
  %131 = call i64 @svn_error_find_cause(%struct.TYPE_16__* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @SVN_ERR_FS_LOCK_OWNER_MISMATCH, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %151, label %139

139:                                              ; preds = %133
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SVN_ERR_FS_BAD_LOCK_TOKEN, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SVN_ERR_RA_NOT_LOCKED, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %214

151:                                              ; preds = %145, %139, %133, %128
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %153, align 8
  %155 = icmp ne i32 (i32, %struct.TYPE_15__*, i32*)* %154, null
  br i1 %155, label %156, label %188

156:                                              ; preds = %151
  %157 = load i8*, i8** %9, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load i8*, i8** %9, align 8
  %161 = load i32, i32* @svn_wc_notify_failed_locked, align 4
  %162 = load i32*, i32** %15, align 8
  %163 = call %struct.TYPE_15__* @svn_wc_create_notify(i8* %160, i32 %161, i32* %162)
  store %struct.TYPE_15__* %163, %struct.TYPE_15__** %17, align 8
  br label %172

164:                                              ; preds = %156
  %165 = load i8*, i8** %10, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = load i32*, i32** %15, align 8
  %168 = call i32 @svn_path_url_add_component2(i8* %165, i8* %166, i32* %167)
  %169 = load i32, i32* @svn_wc_notify_failed_locked, align 4
  %170 = load i32*, i32** %15, align 8
  %171 = call %struct.TYPE_15__* @svn_wc_create_notify_url(i32 %168, i32 %169, i32* %170)
  store %struct.TYPE_15__* %171, %struct.TYPE_15__** %17, align 8
  br label %172

172:                                              ; preds = %164, %159
  %173 = load i64, i64* %12, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  store %struct.TYPE_16__* %176, %struct.TYPE_16__** %178, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %180, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %186 = load i32*, i32** %15, align 8
  %187 = call i32 %181(i32 %184, %struct.TYPE_15__* %185, i32* %186)
  br label %188

188:                                              ; preds = %172, %151
  %189 = load i32, i32* @SVN_ERR_CLIENT_NO_LOCK_TOKEN, align 4
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %191 = load i64, i64* %12, align 8
  %192 = load i64, i64* @svn_node_dir, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %198

196:                                              ; preds = %188
  %197 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i32 [ %195, %194 ], [ %197, %196 ]
  %200 = load i8*, i8** %9, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i8*, i8** %9, align 8
  %204 = load i32*, i32** %15, align 8
  %205 = call i32 @svn_dirent_local_style(i8* %203, i32* %204)
  br label %211

206:                                              ; preds = %198
  %207 = load i8*, i8** %10, align 8
  %208 = load i8*, i8** %11, align 8
  %209 = load i32*, i32** %15, align 8
  %210 = call i32 @svn_path_url_add_component2(i8* %207, i8* %208, i32* %209)
  br label %211

211:                                              ; preds = %206, %202
  %212 = phi i32 [ %205, %202 ], [ %210, %206 ]
  %213 = call %struct.TYPE_16__* @svn_error_createf(i32 %189, %struct.TYPE_16__* %190, i32 %199, i32 %212)
  store %struct.TYPE_16__* %213, %struct.TYPE_16__** %8, align 8
  br label %290

214:                                              ; preds = %145
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %216 = load i32, i32* @SVN_ERR_RA_DAV_FORBIDDEN, align 4
  %217 = call i64 @svn_error_find_cause(%struct.TYPE_16__* %215, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %214
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @SVN_ERR_AUTHZ_UNWRITABLE, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %288

225:                                              ; preds = %219, %214
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %227, align 8
  %229 = icmp ne i32 (i32, %struct.TYPE_15__*, i32*)* %228, null
  br i1 %229, label %230, label %262

230:                                              ; preds = %225
  %231 = load i8*, i8** %9, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load i8*, i8** %9, align 8
  %235 = load i32, i32* @svn_wc_notify_failed_forbidden_by_server, align 4
  %236 = load i32*, i32** %15, align 8
  %237 = call %struct.TYPE_15__* @svn_wc_create_notify(i8* %234, i32 %235, i32* %236)
  store %struct.TYPE_15__* %237, %struct.TYPE_15__** %18, align 8
  br label %246

238:                                              ; preds = %230
  %239 = load i8*, i8** %10, align 8
  %240 = load i8*, i8** %11, align 8
  %241 = load i32*, i32** %15, align 8
  %242 = call i32 @svn_path_url_add_component2(i8* %239, i8* %240, i32* %241)
  %243 = load i32, i32* @svn_wc_notify_failed_forbidden_by_server, align 4
  %244 = load i32*, i32** %15, align 8
  %245 = call %struct.TYPE_15__* @svn_wc_create_notify_url(i32 %242, i32 %243, i32* %244)
  store %struct.TYPE_15__* %245, %struct.TYPE_15__** %18, align 8
  br label %246

246:                                              ; preds = %238, %233
  %247 = load i64, i64* %12, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  store i64 %247, i64* %249, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  store %struct.TYPE_16__* %250, %struct.TYPE_16__** %252, align 8
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %254, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %260 = load i32*, i32** %15, align 8
  %261 = call i32 %255(i32 %258, %struct.TYPE_15__* %259, i32* %260)
  br label %262

262:                                              ; preds = %246, %225
  %263 = load i32, i32* @SVN_ERR_CLIENT_FORBIDDEN_BY_SERVER, align 4
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %265 = load i64, i64* %12, align 8
  %266 = load i64, i64* @svn_node_dir, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %262
  %269 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %272

270:                                              ; preds = %262
  %271 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %272

272:                                              ; preds = %270, %268
  %273 = phi i32 [ %269, %268 ], [ %271, %270 ]
  %274 = load i8*, i8** %9, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = load i8*, i8** %9, align 8
  %278 = load i32*, i32** %15, align 8
  %279 = call i32 @svn_dirent_local_style(i8* %277, i32* %278)
  br label %285

280:                                              ; preds = %272
  %281 = load i8*, i8** %10, align 8
  %282 = load i8*, i8** %11, align 8
  %283 = load i32*, i32** %15, align 8
  %284 = call i32 @svn_path_url_add_component2(i8* %281, i8* %282, i32* %283)
  br label %285

285:                                              ; preds = %280, %276
  %286 = phi i32 [ %279, %276 ], [ %284, %280 ]
  %287 = call %struct.TYPE_16__* @svn_error_createf(i32 %263, %struct.TYPE_16__* %264, i32 %273, i32 %286)
  store %struct.TYPE_16__* %287, %struct.TYPE_16__** %8, align 8
  br label %290

288:                                              ; preds = %219
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %289, %struct.TYPE_16__** %8, align 8
  br label %290

290:                                              ; preds = %288, %285, %211, %125
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  ret %struct.TYPE_16__* %291
}

declare dso_local i64 @svn_error_find_cause(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_15__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_wc_create_notify_url(i32, i32, i32*) #1

declare dso_local i32 @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_error_createf(i32, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

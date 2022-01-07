; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i8*, i64 }
%struct.TYPE_25__ = type { i8**, i8**, i8**, i32*, i32* }
%struct.TYPE_26__ = type { i32*, %struct.TYPE_24__* }

@.str = private unnamed_addr constant [2 x i8] c"c\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"clb?l\00", align 1
@svn_authz_write = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_LOG = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@commit_done = common dso_local global i32 0, align 4
@authz_commit_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"r(?c)(?c)(?c)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_23__*, i8*)* @commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @commit(i32* %0, i32* %1, %struct.TYPE_23__* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_25__, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_26__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store i8* %3, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %9, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 1
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  store i32* %28, i32** %29, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %36 = call i32 (%struct.TYPE_23__*, i8*, i8**, ...) @svn_ra_svn__parse_tuple(%struct.TYPE_23__* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10)
  %37 = call i32 @SVN_ERR(i32 %36)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %14, align 8
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %15, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %16, align 8
  br label %43

39:                                               ; preds = %4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %41 = call i32 (%struct.TYPE_23__*, i8*, i8**, ...) @svn_ra_svn__parse_tuple(%struct.TYPE_23__* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, %struct.TYPE_23__** %14, i32* %15, %struct.TYPE_23__** %16)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %47 = load i32, i32* @svn_authz_write, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %49 = icmp ne %struct.TYPE_23__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %50, %43
  %56 = phi i1 [ false, %43 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @must_have_access(i32* %44, i32* %45, %struct.TYPE_24__* %46, i32 %47, i32* null, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %61 = icmp ne %struct.TYPE_23__* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @add_lock_tokens(%struct.TYPE_23__* %68, %struct.TYPE_24__* %69, i32* %70)
  %72 = call i32 @SVN_CMD_ERR(i32 %71)
  br label %73

73:                                               ; preds = %67, %62, %55
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %75 = icmp ne %struct.TYPE_23__* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @svn_ra_svn__parse_proplist(%struct.TYPE_23__* %77, i32* %78, i32** %17)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %90

81:                                               ; preds = %73
  %82 = load i32*, i32** %6, align 8
  %83 = call i32* @apr_hash_make(i32* %82)
  store i32* %83, i32** %17, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = load i32, i32* @SVN_PROP_REVISION_LOG, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = call i32* @svn_string_create(i8* %86, i32* %87)
  %89 = call i32 @svn_hash_sets(i32* %84, i32 %85, i32* %88)
  br label %90

90:                                               ; preds = %81, %76
  %91 = load i32*, i32** %17, align 8
  %92 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %90
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = call i32* @svn_string_create(i8* %104, i32* %105)
  br label %108

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %99
  %109 = phi i32* [ %106, %99 ], [ null, %107 ]
  %110 = call i32 @svn_hash_sets(i32* %91, i32 %92, i32* %109)
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 4
  store i32* %111, i32** %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 3
  store i32* %22, i32** %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  store i8** %11, i8*** %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 1
  store i8** %12, i8*** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 2
  store i8** %13, i8*** %116, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @svn_path_uri_decode(i32 %126, i32* %127)
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %17, align 8
  %137 = load i32, i32* @commit_done, align 4
  %138 = load i32, i32* @authz_commit_cb, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @svn_repos_get_commit_editor5(i32** %18, i8** %19, i32 %121, i32* null, i32 %128, i32 %135, i32* %136, i32 %137, %struct.TYPE_25__* %21, i32 %138, %struct.TYPE_26__* %23, i32* %139)
  %141 = call i32 @SVN_CMD_ERR(i32 %140)
  %142 = load i32*, i32** %5, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @svn_ra_svn__write_cmd_response(i32* %142, i32* %143, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %145 = call i32 @SVN_ERR(i32 %144)
  %146 = load i32*, i32** %5, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = load i32*, i32** %18, align 8
  %149 = load i8*, i8** %19, align 8
  %150 = load i32, i32* @FALSE, align 4
  %151 = call i32 @svn_ra_svn_drive_editor2(i32* %146, i32* %147, i32* %148, i8* %149, i32* %20, i32 %150)
  %152 = call i32 @SVN_ERR(i32 %151)
  %153 = load i32, i32* %20, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %228, label %155

155:                                              ; preds = %108
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %157 = load i32*, i32** %5, align 8
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* %22, align 4
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @svn_log__commit(i32 %159, i32* %160)
  %162 = call i32 @log_command(%struct.TYPE_24__* %156, i32* %157, i32* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  %163 = call i32 @SVN_ERR(i32 %162)
  %164 = load i32*, i32** %5, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %167 = call i32 @trivial_auth_request(i32* %164, i32* %165, %struct.TYPE_24__* %166)
  %168 = call i32 @SVN_ERR(i32 %167)
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %155
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %22, align 4
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @svn_fs_deltify_revision(i32 %180, i32 %181, i32* %182)
  %184 = call i32 @SVN_ERR(i32 %183)
  br label %185

185:                                              ; preds = %175, %155
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %185
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %190 = icmp ne %struct.TYPE_23__* %189, null
  br i1 %190, label %191, label %202

191:                                              ; preds = %188
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = call i32 @unlock_paths(%struct.TYPE_23__* %197, %struct.TYPE_24__* %198, i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  br label %202

202:                                              ; preds = %196, %191, %188, %185
  %203 = load i32*, i32** %5, align 8
  %204 = load i32*, i32** %6, align 8
  %205 = load i32, i32* %22, align 4
  %206 = load i8*, i8** %11, align 8
  %207 = load i8*, i8** %12, align 8
  %208 = load i8*, i8** %13, align 8
  %209 = call i32 @svn_ra_svn__write_tuple(i32* %203, i32* %204, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %205, i8* %206, i8* %207, i8* %208)
  %210 = call i32 @SVN_ERR(i32 %209)
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %227, label %217

217:                                              ; preds = %202
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %22, align 4
  %224 = load i32*, i32** %6, align 8
  %225 = call i32 @svn_fs_deltify_revision(i32 %222, i32 %223, i32* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  br label %227

227:                                              ; preds = %217, %202
  br label %228

228:                                              ; preds = %227, %108
  %229 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %229
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(%struct.TYPE_23__*, i8*, i8**, ...) #1

declare dso_local i32 @must_have_access(i32*, i32*, %struct.TYPE_24__*, i32, i32*, i32) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i32 @add_lock_tokens(%struct.TYPE_23__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @svn_ra_svn__parse_proplist(%struct.TYPE_23__*, i32*, i32**) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

declare dso_local i32* @svn_string_create(i8*, i32*) #1

declare dso_local i32 @svn_repos_get_commit_editor5(i32**, i8**, i32, i32*, i32, i32, i32*, i32, %struct.TYPE_25__*, i32, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @svn_path_uri_decode(i32, i32*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_response(i32*, i32*, i8*) #1

declare dso_local i32 @svn_ra_svn_drive_editor2(i32*, i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @log_command(%struct.TYPE_24__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_log__commit(i32, i32*) #1

declare dso_local i32 @trivial_auth_request(i32*, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @svn_fs_deltify_revision(i32, i32, i32*) #1

declare dso_local i32 @unlock_paths(%struct.TYPE_23__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @svn_ra_svn__write_tuple(i32*, i32*, i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

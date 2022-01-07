; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64 }
%struct.TYPE_36__ = type { %struct.TYPE_31__*, i32, i64, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_29__*, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_35__ = type { i8*, i32*, i8*, i32, i32, i8*, i32, i8*, i8*, %struct.TYPE_31__*, %struct.TYPE_36__* }
%struct.TYPE_33__ = type { i8*, i8*, i8*, %struct.TYPE_33__*, i8*, %struct.TYPE_30__, %struct.TYPE_35__*, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_37__ = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@svn_ra_serf__expect_empty_body = common dso_local global i8* null, align 8
@setup_copy_file_headers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_FS_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"File '%s' already exists\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_34__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_34__* (i8*, i8*, i8*, i32, i32*, i8**)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_34__* @add_file(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_36__*, align 8
  %15 = alloca %struct.TYPE_35__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_33__*, align 8
  %19 = alloca %struct.TYPE_37__, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_33__*, align 8
  %23 = alloca %struct.TYPE_34__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %25, %struct.TYPE_36__** %14, align 8
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %16, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32* @svn_pool_create(i32* %27)
  store i32* %28, i32** %17, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call %struct.TYPE_35__* @apr_pcalloc(i32* %29, i32 80)
  store %struct.TYPE_35__* %30, %struct.TYPE_35__** %15, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 10
  store %struct.TYPE_36__* %34, %struct.TYPE_36__** %36, align 8
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %38, align 8
  %40 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %40, i32 0, i32 9
  store %struct.TYPE_31__* %39, %struct.TYPE_31__** %41, align 8
  %42 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i8* @apr_pstrdup(i32* %44, i8* %45)
  %47 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %47, i32 0, i32 8
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %49, i32 0, i32 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @svn_relpath_basename(i8* %51, i32* null)
  %53 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @TRUE, align 8
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %59 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i8* @apr_pstrdup(i32* %63, i8* %64)
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @apr_hash_make(i32* %73)
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %84, align 8
  %86 = call i64 @USING_HTTPV2_COMMIT_SUPPORT(%struct.TYPE_31__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %6
  %89 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i8* @svn_path_url_add_component2(i32 %93, i8* %94, i32* %97)
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  br label %118

101:                                              ; preds = %6
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %103 = load i32*, i32** %17, align 8
  %104 = call %struct.TYPE_34__* @checkout_dir(%struct.TYPE_36__* %102, i32* %103)
  %105 = call i32 @SVN_ERR(%struct.TYPE_34__* %104)
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i8* @svn_path_url_add_component2(i32 %108, i8* %111, i32* %114)
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %101, %88
  br label %119

119:                                              ; preds = %140, %118
  %120 = load i8*, i8** %16, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i8*, i8** %16, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %122, %119
  %129 = phi i1 [ false, %119 ], [ %127, %122 ]
  br i1 %129, label %130, label %144

130:                                              ; preds = %128
  %131 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = call i64 @svn_hash_gets(i32 %135, i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %144

140:                                              ; preds = %130
  %141 = load i8*, i8** %16, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = call i8* @svn_relpath_dirname(i8* %141, i32* %142)
  store i8* %143, i8** %16, align 8
  br label %119

144:                                              ; preds = %139, %128
  %145 = load i8*, i8** %10, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %207

147:                                              ; preds = %144
  %148 = load i32*, i32** %17, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = call i64 @apr_uri_parse(i32* %148, i8* %149, %struct.TYPE_37__* %19)
  store i64 %150, i64* %21, align 8
  %151 = load i64, i64* %21, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i64, i64* %21, align 8
  %155 = call %struct.TYPE_34__* @svn_ra_serf__wrap_err(i64 %154, i32* null)
  store %struct.TYPE_34__* %155, %struct.TYPE_34__** %7, align 8
  br label %292

156:                                              ; preds = %147
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32*, i32** %17, align 8
  %166 = load i32*, i32** %17, align 8
  %167 = call %struct.TYPE_34__* @svn_ra_serf__get_stable_url(i8** %20, i32* null, %struct.TYPE_29__* %161, i32 %163, i32 %164, i32* %165, i32* %166)
  %168 = call i32 @SVN_ERR(%struct.TYPE_34__* %167)
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %172, align 8
  %174 = load i32*, i32** %17, align 8
  %175 = call %struct.TYPE_33__* @svn_ra_serf__create_handler(%struct.TYPE_29__* %173, i32* %174)
  store %struct.TYPE_33__* %175, %struct.TYPE_33__** %18, align 8
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %177, align 8
  %178 = load i8*, i8** %20, align 8
  %179 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load i8*, i8** @svn_ra_serf__expect_empty_body, align 8
  %182 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %182, i32 0, i32 4
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 3
  store %struct.TYPE_33__* %184, %struct.TYPE_33__** %186, align 8
  %187 = load i32, i32* @setup_copy_file_headers, align 4
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %188, i32 0, i32 7
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 6
  store %struct.TYPE_35__* %190, %struct.TYPE_35__** %192, align 8
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %194 = load i32*, i32** %17, align 8
  %195 = call %struct.TYPE_34__* @svn_ra_serf__context_run_one(%struct.TYPE_33__* %193, i32* %194)
  %196 = call i32 @SVN_ERR(%struct.TYPE_34__* %195)
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 201
  br i1 %201, label %202, label %206

202:                                              ; preds = %156
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %204 = call %struct.TYPE_34__* @svn_ra_serf__unexpected_status(%struct.TYPE_33__* %203)
  %205 = call %struct.TYPE_34__* @svn_error_trace(%struct.TYPE_34__* %204)
  store %struct.TYPE_34__* %205, %struct.TYPE_34__** %7, align 8
  br label %292

206:                                              ; preds = %156
  br label %285

207:                                              ; preds = %144
  %208 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %284

217:                                              ; preds = %212, %207
  %218 = load i8*, i8** %16, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = load i8*, i8** %16, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %284, label %226

226:                                              ; preds = %220, %217
  %227 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_31__*, %struct.TYPE_31__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %230, align 8
  %232 = load i32*, i32** %17, align 8
  %233 = call %struct.TYPE_33__* @svn_ra_serf__create_handler(%struct.TYPE_29__* %231, i32* %232)
  store %struct.TYPE_33__* %233, %struct.TYPE_33__** %22, align 8
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %235, align 8
  %236 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i8*, i8** %8, align 8
  %245 = load i32*, i32** %17, align 8
  %246 = call i8* @svn_path_url_add_component2(i32 %243, i8* %244, i32* %245)
  %247 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %248 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %247, i32 0, i32 1
  store i8* %246, i8** %248, align 8
  %249 = load i8*, i8** @svn_ra_serf__expect_empty_body, align 8
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 4
  store i8* %249, i8** %251, align 8
  %252 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %254 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i32 0, i32 3
  store %struct.TYPE_33__* %252, %struct.TYPE_33__** %254, align 8
  %255 = load i8*, i8** @TRUE, align 8
  %256 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %257 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %256, i32 0, i32 2
  store i8* %255, i8** %257, align 8
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %259 = load i32*, i32** %17, align 8
  %260 = call %struct.TYPE_34__* @svn_ra_serf__context_run_one(%struct.TYPE_33__* %258, i32* %259)
  store %struct.TYPE_34__* %260, %struct.TYPE_34__** %23, align 8
  %261 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %262 = icmp ne %struct.TYPE_34__* %261, null
  br i1 %262, label %263, label %272

263:                                              ; preds = %226
  %264 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %265 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %271 = call i32 @svn_error_clear(%struct.TYPE_34__* %270)
  br label %283

272:                                              ; preds = %263, %226
  %273 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %274 = icmp ne %struct.TYPE_34__* %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %277 = call %struct.TYPE_34__* @svn_error_trace(%struct.TYPE_34__* %276)
  store %struct.TYPE_34__* %277, %struct.TYPE_34__** %7, align 8
  br label %292

278:                                              ; preds = %272
  %279 = load i32, i32* @SVN_ERR_FS_ALREADY_EXISTS, align 4
  %280 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %281 = load i8*, i8** %8, align 8
  %282 = call %struct.TYPE_34__* @svn_error_createf(i32 %279, i32* null, i32 %280, i8* %281)
  store %struct.TYPE_34__* %282, %struct.TYPE_34__** %7, align 8
  br label %292

283:                                              ; preds = %269
  br label %284

284:                                              ; preds = %283, %220, %212
  br label %285

285:                                              ; preds = %284, %206
  %286 = load i32*, i32** %17, align 8
  %287 = call i32 @svn_pool_destroy(i32* %286)
  %288 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %289 = bitcast %struct.TYPE_35__* %288 to i8*
  %290 = load i8**, i8*** %13, align 8
  store i8* %289, i8** %290, align 8
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_34__* %291, %struct.TYPE_34__** %7, align 8
  br label %292

292:                                              ; preds = %285, %278, %275, %202, %153
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  ret %struct.TYPE_34__* %293
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_35__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_relpath_basename(i8*, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i64 @USING_HTTPV2_COMMIT_SUPPORT(%struct.TYPE_31__*) #1

declare dso_local i8* @svn_path_url_add_component2(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @checkout_dir(%struct.TYPE_36__*, i32*) #1

declare dso_local i64 @svn_hash_gets(i32, i8*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i64 @apr_uri_parse(i32*, i8*, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_34__* @svn_ra_serf__wrap_err(i64, i32*) #1

declare dso_local %struct.TYPE_34__* @svn_ra_serf__get_stable_url(i8**, i32*, %struct.TYPE_29__*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_33__* @svn_ra_serf__create_handler(%struct.TYPE_29__*, i32*) #1

declare dso_local %struct.TYPE_34__* @svn_ra_serf__context_run_one(%struct.TYPE_33__*, i32*) #1

declare dso_local %struct.TYPE_34__* @svn_error_trace(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @svn_ra_serf__unexpected_status(%struct.TYPE_33__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

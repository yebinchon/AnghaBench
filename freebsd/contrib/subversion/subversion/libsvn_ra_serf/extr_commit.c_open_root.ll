; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_open_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_open_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i8*, i8*, i8*, %struct.TYPE_30__*, i32*, i32*, i8*, i32, i8*, i32 }
%struct.TYPE_30__ = type { i8*, %struct.TYPE_23__, i8*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i8*, %struct.TYPE_24__, %struct.TYPE_25__*, i32, i8*, %struct.TYPE_29__*, %struct.TYPE_25__*, i32*, i32, i32*, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i8*, i8*, i32, i32*, i32* }
%struct.TYPE_28__ = type { i8*, i8*, i8*, i32*, i8*, %struct.TYPE_29__*, i8* }
%struct.TYPE_26__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"create-txn-with-props\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@SVN_SKEL_MIME_TYPE = common dso_local global i32 0, align 4
@create_txn_post_body = common dso_local global i32 0, align 4
@setup_post_headers = common dso_local global i32 0, align 4
@post_response_handler = common dso_local global i32 0, align 4
@SVN_ERR_RA_DAV_REQUEST_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"POST request did not return transaction information\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"MKACTIVITY\00", align 1
@svn_ra_serf__expect_empty_body = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i8**)* @open_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_root(i8* %0, i8* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_26__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %23, %struct.TYPE_29__** %10, align 8
  store i8* null, i8** %15, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @svn_pool_create(i32* %24)
  store i32* %25, i32** %16, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %33 = call i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_30__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %185

35:                                               ; preds = %4
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32* @svn_hash_gets(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i32* null, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %19, align 4
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %45, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = call %struct.TYPE_25__* @svn_ra_serf__create_handler(%struct.TYPE_30__* %46, i32* %47)
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %11, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  %51 = load i32, i32* @SVN_SKEL_MIME_TYPE, align 4
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 11
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @create_txn_post_body, align 4
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %35
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  br label %64

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32* [ %62, %59 ], [ null, %63 ]
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 9
  store i32* %65, i32** %67, align 8
  %68 = load i32, i32* @setup_post_headers, align 4
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 7
  store i32* null, i32** %72, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = call i8* @apr_pcalloc(i32* %80, i32 88)
  %82 = bitcast i8* %81 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %82, %struct.TYPE_25__** %17, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 6
  store %struct.TYPE_25__* %83, %struct.TYPE_25__** %85, align 8
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 5
  store %struct.TYPE_29__* %86, %struct.TYPE_29__** %88, align 8
  %89 = load i32, i32* @post_response_handler, align 4
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 2
  store %struct.TYPE_25__* %92, %struct.TYPE_25__** %94, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_25__* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 201
  br i1 %103, label %104, label %108

104:                                              ; preds = %64
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %106 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_25__* %105)
  %107 = call i32* @svn_error_trace(i32 %106)
  store i32* %107, i32** %5, align 8
  br label %380

108:                                              ; preds = %64
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %113, %108
  %119 = load i32, i32* @SVN_ERR_RA_DAV_REQUEST_FAILED, align 4
  %120 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %121 = call i32* @svn_error_createf(i32 %119, i32* null, i32 %120)
  store i32* %121, i32** %5, align 8
  br label %380

122:                                              ; preds = %113
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %130, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = call i32 @svn_ra_serf__get_relative_path(i8** %18, i32 %128, %struct.TYPE_30__* %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** %18, align 8
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = call i8* @svn_path_url_add_component2(i8* %137, i8* %138, i32* %141)
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = call i8* @apr_pcalloc(i32* %145, i32 56)
  %147 = bitcast i8* %146 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %147, %struct.TYPE_28__** %13, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 3
  store i32* %148, i32** %150, align 8
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 5
  store %struct.TYPE_29__* %151, %struct.TYPE_29__** %153, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %158, align 8
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %160, align 8
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = call i8* @apr_hash_make(i32* %163)
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 6
  store i8* %164, i8** %166, align 8
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @apr_pstrdup(i32* %169, i8* %172)
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 2
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* %19, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %122
  br label %183

179:                                              ; preds = %122
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  br label %183

183:                                              ; preds = %179, %178
  %184 = phi i8* [ null, %178 ], [ %182, %179 ]
  store i8* %184, i8** %15, align 8
  br label %311

185:                                              ; preds = %4
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** %20, align 8
  %191 = load i8*, i8** %20, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %201, label %193

193:                                              ; preds = %185
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %195, align 8
  %197 = load i32*, i32** %16, align 8
  %198 = load i32*, i32** %16, align 8
  %199 = call i32 @svn_ra_serf__v1_get_activity_collection(i8** %20, %struct.TYPE_30__* %196, i32* %197, i32* %198)
  %200 = call i32 @SVN_ERR(i32 %199)
  br label %201

201:                                              ; preds = %193, %185
  %202 = load i8*, i8** %20, align 8
  %203 = load i32*, i32** %16, align 8
  %204 = call i8* @svn_uuid_generate(i32* %203)
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = call i8* @svn_path_url_add_component2(i8* %202, i8* %204, i32* %207)
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 8
  store i8* %208, i8** %210, align 8
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_30__*, %struct.TYPE_30__** %212, align 8
  %214 = load i32*, i32** %16, align 8
  %215 = call %struct.TYPE_25__* @svn_ra_serf__create_handler(%struct.TYPE_30__* %213, i32* %214)
  store %struct.TYPE_25__* %215, %struct.TYPE_25__** %11, align 8
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %217, align 8
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 8
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 4
  store i8* %220, i8** %222, align 8
  %223 = load i32, i32* @svn_ra_serf__expect_empty_body, align 4
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 8
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 2
  store %struct.TYPE_25__* %226, %struct.TYPE_25__** %228, align 8
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %230 = load i32*, i32** %16, align 8
  %231 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_25__* %229, i32* %230)
  %232 = call i32 @SVN_ERR(i32 %231)
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 201
  br i1 %237, label %238, label %242

238:                                              ; preds = %201
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %240 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_25__* %239)
  %241 = call i32* @svn_error_trace(i32 %240)
  store i32* %241, i32** %5, align 8
  br label %380

242:                                              ; preds = %201
  %243 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %243, i32 0, i32 7
  %245 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %246, align 8
  %248 = load i32*, i32** %16, align 8
  %249 = call i32 @svn_ra_serf__discover_vcc(i32* %244, %struct.TYPE_30__* %247, i32* %248)
  %250 = call i32 @SVN_ERR(i32 %249)
  %251 = load i32*, i32** %8, align 8
  %252 = call i8* @apr_pcalloc(i32* %251, i32 56)
  %253 = bitcast i8* %252 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %253, %struct.TYPE_28__** %13, align 8
  %254 = load i32*, i32** %8, align 8
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 3
  store i32* %254, i32** %256, align 8
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 5
  store %struct.TYPE_29__* %257, %struct.TYPE_29__** %259, align 8
  %260 = load i8*, i8** %7, align 8
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 4
  store i8* %260, i8** %262, align 8
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %264, align 8
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %265, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %266, align 8
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %267, i32 0, i32 3
  %269 = load i32*, i32** %268, align 8
  %270 = call i8* @apr_hash_make(i32* %269)
  %271 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %271, i32 0, i32 6
  store i8* %270, i8** %272, align 8
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 5
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %278, align 8
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %283, i32 0, i32 4
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 6
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 3
  %291 = load i32*, i32** %290, align 8
  %292 = load i32*, i32** %16, align 8
  %293 = call i32 @get_version_url(i8** %274, %struct.TYPE_30__* %279, i8* %282, i8* %285, i8* %288, i32* %291, i32* %292)
  %294 = call i32 @SVN_ERR(i32 %293)
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 5
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %298, i32 0, i32 2
  %300 = load i8*, i8** %299, align 8
  %301 = call i8* @apr_pstrdup(i32* %297, i8* %300)
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 6
  store i8* %301, i8** %303, align 8
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %305 = load i32*, i32** %16, align 8
  %306 = call i32 @checkout_dir(%struct.TYPE_28__* %304, i32* %305)
  %307 = call i32 @SVN_ERR(i32 %306)
  %308 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %308, i32 0, i32 2
  %310 = load i8*, i8** %309, align 8
  store i8* %310, i8** %15, align 8
  br label %311

311:                                              ; preds = %242, %183
  %312 = load i8*, i8** %15, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %373

314:                                              ; preds = %311
  %315 = load i32*, i32** %16, align 8
  %316 = call i8* @apr_pcalloc(i32* %315, i32 40)
  %317 = bitcast i8* %316 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %317, %struct.TYPE_27__** %12, align 8
  %318 = load i32*, i32** %16, align 8
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %320 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %319, i32 0, i32 3
  store i32* %318, i32** %320, align 8
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %321, i32 0, i32 4
  store i32* null, i32** %322, align 8
  %323 = load i8*, i8** %15, align 8
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %325 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %324, i32 0, i32 0
  store i8* %323, i8** %325, align 8
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 3
  %328 = load i32*, i32** %327, align 8
  %329 = call i8* @apr_hash_make(i32* %328)
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %330, i32 0, i32 1
  store i8* %329, i8** %331, align 8
  %332 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %333 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %333, i32 0, i32 2
  store i32 %332, i32* %334, align 8
  %335 = load i32*, i32** %16, align 8
  %336 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %336, i32 0, i32 4
  %338 = load i32*, i32** %337, align 8
  %339 = call i32* @apr_hash_first(i32* %335, i32* %338)
  store i32* %339, i32** %14, align 8
  br label %340

340:                                              ; preds = %362, %314
  %341 = load i32*, i32** %14, align 8
  %342 = icmp ne i32* %341, null
  br i1 %342, label %343, label %365

343:                                              ; preds = %340
  %344 = load i32*, i32** %16, align 8
  %345 = call %struct.TYPE_26__* @apr_palloc(i32* %344, i32 8)
  store %struct.TYPE_26__* %345, %struct.TYPE_26__** %21, align 8
  %346 = load i32*, i32** %14, align 8
  %347 = call i32 @apr_hash_this_key(i32* %346)
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 0
  store i32 %347, i32* %349, align 4
  %350 = load i32*, i32** %14, align 8
  %351 = call i32 @apr_hash_this_val(i32* %350)
  %352 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %353 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %352, i32 0, i32 1
  store i32 %351, i32* %353, align 4
  %354 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %355 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %354, i32 0, i32 1
  %356 = load i8*, i8** %355, align 8
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %358 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %361 = call i32 @svn_hash_sets(i8* %356, i32 %359, %struct.TYPE_26__* %360)
  br label %362

362:                                              ; preds = %343
  %363 = load i32*, i32** %14, align 8
  %364 = call i32* @apr_hash_next(i32* %363)
  store i32* %364, i32** %14, align 8
  br label %340

365:                                              ; preds = %340
  %366 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %366, i32 0, i32 3
  %368 = load %struct.TYPE_30__*, %struct.TYPE_30__** %367, align 8
  %369 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %370 = load i32*, i32** %16, align 8
  %371 = call i32 @proppatch_resource(%struct.TYPE_30__* %368, %struct.TYPE_27__* %369, i32* %370)
  %372 = call i32 @SVN_ERR(i32 %371)
  br label %373

373:                                              ; preds = %365, %311
  %374 = load i32*, i32** %16, align 8
  %375 = call i32 @svn_pool_destroy(i32* %374)
  %376 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %377 = bitcast %struct.TYPE_28__* %376 to i8*
  %378 = load i8**, i8*** %9, align 8
  store i8* %377, i8** %378, align 8
  %379 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %379, i32** %5, align 8
  br label %380

380:                                              ; preds = %373, %238, %118, %104
  %381 = load i32*, i32** %5, align 8
  ret i32* %381
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_30__*) #1

declare dso_local i32* @svn_hash_gets(i32, i8*) #1

declare dso_local %struct.TYPE_25__* @svn_ra_serf__create_handler(%struct.TYPE_30__*, i32*) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_25__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_25__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_ra_serf__get_relative_path(i8**, i32, %struct.TYPE_30__*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i8* @apr_hash_make(i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_ra_serf__v1_get_activity_collection(i8**, %struct.TYPE_30__*, i32*, i32*) #1

declare dso_local i8* @svn_uuid_generate(i32*) #1

declare dso_local i32 @svn_ra_serf__discover_vcc(i32*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @get_version_url(i8**, %struct.TYPE_30__*, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @checkout_dir(%struct.TYPE_28__*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_hash_this_key(i32*) #1

declare dso_local i32 @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_hash_sets(i8*, i32, %struct.TYPE_26__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @proppatch_resource(%struct.TYPE_30__*, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

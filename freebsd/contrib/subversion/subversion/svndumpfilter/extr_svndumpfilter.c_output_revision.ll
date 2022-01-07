; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_output_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_output_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_baton_t = type { i64, %struct.TYPE_2__*, i32, i32*, i32, i64, i64, i8* }
%struct.TYPE_2__ = type { i64, i32, i32*, i32, i64, i32, i32, i32, i64, i32 }
%struct.revmap_t = type { i8*, i32 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"This is an empty revision for padding.\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Revision %ld committed as %ld.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Revision %ld skipped.\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.revision_baton_t*)* @output_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @output_revision(%struct.revision_baton_t* %0) #0 {
  %2 = alloca %struct.revision_baton_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.revmap_t*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.revmap_t*, align 8
  %12 = alloca i32*, align 8
  store %struct.revision_baton_t* %0, %struct.revision_baton_t** %2, align 8
  %13 = load i8*, i8** @FALSE, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %16 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = call i32* @apr_hash_pool_get(i32* %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @svn_pool_create(i32* %19)
  store i32* %20, i32** %5, align 8
  %21 = load i8*, i8** @TRUE, align 8
  %22 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %23 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %25 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %78, label %30

30:                                               ; preds = %1
  %31 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %32 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %78, label %35

35:                                               ; preds = %30
  %36 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %37 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %35
  %41 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %42 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %78, label %47

47:                                               ; preds = %40
  %48 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %49 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %47
  %55 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %56 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32* @apr_hash_make(i32* %58)
  %60 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %61 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  %62 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %63 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %68 = call i32 @svn_hash_gets(i32* %66, i32 %67)
  %69 = call i32 @svn_hash_sets(i32* %64, i32 %65, i32 %68)
  %70 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %71 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @SVN_PROP_REVISION_LOG, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @svn_string_create(i32 %74, i32* %75)
  %77 = call i32 @svn_hash_sets(i32* %72, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %54, %47, %40, %35, %30, %1
  %79 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %80 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %85 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83, %78
  %89 = load i8*, i8** @TRUE, align 8
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %3, align 4
  br label %117

91:                                               ; preds = %83
  %92 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %93 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %100 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %3, align 4
  br label %116

105:                                              ; preds = %91
  %106 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %107 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = load i8*, i8** @TRUE, align 8
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %105
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116, %88
  %118 = load i32, i32* %3, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %226

120:                                              ; preds = %117
  %121 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %122 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %127 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %130 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %133 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load i8*, i8** @FALSE, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @svn_repos__dump_revision_record(i32 %125, i32 %128, i32 %131, i32* %134, i8* %135, i32* %136)
  %138 = call i32 @SVN_ERR(i32 %137)
  %139 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %140 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %120
  %144 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %145 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @SVN_IS_VALID_REVNUM(i64 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %143
  %152 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %153 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %156 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i64 %154, i64* %158, align 8
  br label %159

159:                                              ; preds = %151, %143, %120
  %160 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %161 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %160, i32 0, i32 1
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %206

166:                                              ; preds = %159
  %167 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %168 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = call i32* @apr_hash_pool_get(i32* %171)
  store i32* %172, i32** %9, align 8
  %173 = load i32*, i32** %9, align 8
  %174 = call i8* @apr_palloc(i32* %173, i32 8)
  %175 = bitcast i8* %174 to i64*
  store i64* %175, i64** %7, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = call i8* @apr_palloc(i32* %176, i32 16)
  %178 = bitcast i8* %177 to %struct.revmap_t*
  store %struct.revmap_t* %178, %struct.revmap_t** %8, align 8
  %179 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %180 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64*, i64** %7, align 8
  store i64 %181, i64* %182, align 8
  %183 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %184 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.revmap_t*, %struct.revmap_t** %8, align 8
  %187 = getelementptr inbounds %struct.revmap_t, %struct.revmap_t* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  %188 = load i8*, i8** @FALSE, align 8
  %189 = load %struct.revmap_t*, %struct.revmap_t** %8, align 8
  %190 = getelementptr inbounds %struct.revmap_t, %struct.revmap_t* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  %191 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %192 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %191, i32 0, i32 1
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i64*, i64** %7, align 8
  %197 = load %struct.revmap_t*, %struct.revmap_t** %8, align 8
  %198 = call i32 @apr_hash_set(i32* %195, i64* %196, i32 8, %struct.revmap_t* %197)
  %199 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %200 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %203 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %202, i32 0, i32 1
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 3
  store i32 %201, i32* %205, align 8
  br label %206

206:                                              ; preds = %166, %159
  %207 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %208 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %207, i32 0, i32 1
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %225, label %213

213:                                              ; preds = %206
  %214 = load i32, i32* @stderr, align 4
  %215 = load i32*, i32** %5, align 8
  %216 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %217 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %218 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %221 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 (i32, i32*, i32, i64, ...) @svn_cmdline_fprintf(i32 %214, i32* %215, i32 %216, i64 %219, i32 %222)
  %224 = call i32 @SVN_ERR(i32 %223)
  br label %225

225:                                              ; preds = %213, %206
  br label %291

226:                                              ; preds = %117
  %227 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %228 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %227, i32 0, i32 1
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 8
  %233 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %234 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %233, i32 0, i32 1
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %274

239:                                              ; preds = %226
  %240 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %241 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %240, i32 0, i32 1
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = call i32* @apr_hash_pool_get(i32* %244)
  store i32* %245, i32** %12, align 8
  %246 = load i32*, i32** %12, align 8
  %247 = call i8* @apr_palloc(i32* %246, i32 8)
  %248 = bitcast i8* %247 to i64*
  store i64* %248, i64** %10, align 8
  %249 = load i32*, i32** %12, align 8
  %250 = call i8* @apr_palloc(i32* %249, i32 16)
  %251 = bitcast i8* %250 to %struct.revmap_t*
  store %struct.revmap_t* %251, %struct.revmap_t** %11, align 8
  %252 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %253 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64*, i64** %10, align 8
  store i64 %254, i64* %255, align 8
  %256 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %257 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %256, i32 0, i32 1
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.revmap_t*, %struct.revmap_t** %11, align 8
  %262 = getelementptr inbounds %struct.revmap_t, %struct.revmap_t* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 8
  %263 = load i8*, i8** @TRUE, align 8
  %264 = load %struct.revmap_t*, %struct.revmap_t** %11, align 8
  %265 = getelementptr inbounds %struct.revmap_t, %struct.revmap_t* %264, i32 0, i32 0
  store i8* %263, i8** %265, align 8
  %266 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %267 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %266, i32 0, i32 1
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = load i64*, i64** %10, align 8
  %272 = load %struct.revmap_t*, %struct.revmap_t** %11, align 8
  %273 = call i32 @apr_hash_set(i32* %270, i64* %271, i32 8, %struct.revmap_t* %272)
  br label %274

274:                                              ; preds = %239, %226
  %275 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %276 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %275, i32 0, i32 1
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %290, label %281

281:                                              ; preds = %274
  %282 = load i32, i32* @stderr, align 4
  %283 = load i32*, i32** %5, align 8
  %284 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %285 = load %struct.revision_baton_t*, %struct.revision_baton_t** %2, align 8
  %286 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = call i32 (i32, i32*, i32, i64, ...) @svn_cmdline_fprintf(i32 %282, i32* %283, i32 %284, i64 %287)
  %289 = call i32 @SVN_ERR(i32 %288)
  br label %290

290:                                              ; preds = %281, %274
  br label %291

291:                                              ; preds = %290, %225
  %292 = load i32*, i32** %5, align 8
  %293 = call i32 @svn_pool_destroy(i32* %292)
  %294 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %294
}

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_string_create(i32, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos__dump_revision_record(i32, i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_hash_set(i32*, i64*, i32, %struct.revmap_t*) #1

declare dso_local i32 @svn_cmdline_fprintf(i32, i32*, i32, i64, ...) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

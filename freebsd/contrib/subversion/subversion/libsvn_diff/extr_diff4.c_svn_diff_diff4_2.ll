; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff4.c_svn_diff_diff4_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff4.c_svn_diff_diff4_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 (i8*)*, i32 (i8*, i32*, i32*, i32*, i32)* }

@svn_diff_datasource_original = common dso_local global i32 0, align 4
@svn_diff_datasource_modified = common dso_local global i32 0, align 4
@svn_diff_datasource_latest = common dso_local global i32 0, align 4
@svn_diff_datasource_ancestor = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_diff__type_diff_modified = common dso_local global i64 0, align 8
@svn_diff__type_diff_latest = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_diff__type_conflict = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_diff_diff4_2(%struct.TYPE_10__** %0, i8* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32*], align 16
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32*], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32* %3, i32** %8, align 8
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %25 = load i32, i32* @svn_diff_datasource_original, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @svn_diff_datasource_modified, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @svn_diff_datasource_latest, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @svn_diff_datasource_ancestor, align 4
  store i32 %31, i32* %30, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %32, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @svn_pool_create(i32* %33)
  store i32* %34, i32** %19, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = call i32* @svn_pool_create(i32* %35)
  store i32* %36, i32** %20, align 8
  %37 = load i32*, i32** %20, align 8
  %38 = call i32* @svn_pool_create(i32* %37)
  store i32* %38, i32** %21, align 8
  %39 = load i32*, i32** %21, align 8
  %40 = call i32 @svn_diff__tree_create(i32** %9, i32* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32 (i8*, i32*, i32*, i32*, i32)*, i32 (i8*, i32*, i32*, i32*, i32)** %42, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %46 = call i32 %43(i8* %44, i32* %22, i32* %23, i32* %45, i32 4)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 0
  %49 = load i32*, i32** %9, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = load i32, i32* @svn_diff_datasource_original, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load i32*, i32** %20, align 8
  %55 = call i32 @svn_diff__get_tokens(i32** %48, i32* %49, i8* %50, %struct.TYPE_11__* %51, i32 %52, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 1
  %58 = load i32*, i32** %9, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = load i32, i32* @svn_diff_datasource_modified, align 4
  %62 = load i32, i32* %22, align 4
  %63 = load i32*, i32** %19, align 8
  %64 = call i32 @svn_diff__get_tokens(i32** %57, i32* %58, i8* %59, %struct.TYPE_11__* %60, i32 %61, i32 %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 2
  %67 = load i32*, i32** %9, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = load i32, i32* @svn_diff_datasource_latest, align 4
  %71 = load i32, i32* %22, align 4
  %72 = load i32*, i32** %19, align 8
  %73 = call i32 @svn_diff__get_tokens(i32** %66, i32* %67, i8* %68, %struct.TYPE_11__* %69, i32 %70, i32 %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 3
  %76 = load i32*, i32** %9, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = load i32, i32* @svn_diff_datasource_ancestor, align 4
  %80 = load i32, i32* %22, align 4
  %81 = load i32*, i32** %20, align 8
  %82 = call i32 @svn_diff__get_tokens(i32** %75, i32* %76, i8* %77, %struct.TYPE_11__* %78, i32 %79, i32 %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @svn_diff__get_node_count(i32* %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32 (i8*)*, i32 (i8*)** %87, align 8
  %89 = icmp ne i32 (i8*)* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32 (i8*)*, i32 (i8*)** %92, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 %93(i8* %94)
  br label %96

96:                                               ; preds = %90, %4
  %97 = load i32*, i32** %21, align 8
  %98 = call i32 @svn_pool_clear(i32* %97)
  %99 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 0
  %100 = load i32*, i32** %99, align 16
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %19, align 8
  %103 = call i32* @svn_diff__get_token_counts(i32* %100, i32 %101, i32* %102)
  %104 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  store i32* %103, i32** %104, align 16
  %105 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32*, i32** %19, align 8
  %109 = call i32* @svn_diff__get_token_counts(i32* %106, i32 %107, i32* %108)
  %110 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 1
  store i32* %109, i32** %110, align 8
  %111 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 2
  %112 = load i32*, i32** %111, align 16
  %113 = load i32, i32* %11, align 4
  %114 = load i32*, i32** %19, align 8
  %115 = call i32* @svn_diff__get_token_counts(i32* %112, i32 %113, i32* %114)
  %116 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 2
  store i32* %115, i32** %116, align 16
  %117 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32*, i32** %19, align 8
  %121 = call i32* @svn_diff__get_token_counts(i32* %118, i32 %119, i32* %120)
  %122 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 3
  store i32* %121, i32** %122, align 8
  %123 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 0
  %124 = load i32*, i32** %123, align 16
  %125 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 2
  %126 = load i32*, i32** %125, align 16
  %127 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  %128 = load i32*, i32** %127, align 16
  %129 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 2
  %130 = load i32*, i32** %129, align 16
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %22, align 4
  %133 = load i32, i32* %23, align 4
  %134 = load i32*, i32** %21, align 8
  %135 = call i32* @svn_diff__lcs(i32* %124, i32* %126, i32* %128, i32* %130, i32 %131, i32 %132, i32 %133, i32* %134)
  store i32* %135, i32** %14, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = load i32, i32* @TRUE, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = call %struct.TYPE_10__* @svn_diff__diff(i32* %136, i32 1, i32 1, i32 %137, i32* %138)
  store %struct.TYPE_10__* %139, %struct.TYPE_10__** %16, align 8
  %140 = load i32*, i32** %21, align 8
  %141 = call i32 @svn_pool_clear(i32* %140)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %142, %struct.TYPE_10__** %18, align 8
  br label %143

143:                                              ; preds = %181, %96
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %145 = icmp ne %struct.TYPE_10__* %144, null
  br i1 %145, label %146, label %185

146:                                              ; preds = %143
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 7
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @svn_diff__type_diff_modified, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %146
  %173 = load i64, i64* @svn_diff__type_diff_latest, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  br label %180

176:                                              ; preds = %146
  %177 = load i64, i64* @svn_diff__type_diff_modified, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %176, %172
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  store %struct.TYPE_10__* %184, %struct.TYPE_10__** %18, align 8
  br label %143

185:                                              ; preds = %143
  %186 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 3
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 2
  %189 = load i32*, i32** %188, align 16
  %190 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 3
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 2
  %193 = load i32*, i32** %192, align 16
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %22, align 4
  %196 = load i32, i32* %23, align 4
  %197 = load i32*, i32** %21, align 8
  %198 = call i32* @svn_diff__lcs(i32* %187, i32* %189, i32* %191, i32* %193, i32 %194, i32 %195, i32 %196, i32* %197)
  store i32* %198, i32** %15, align 8
  %199 = load i32*, i32** %15, align 8
  %200 = load i32, i32* @FALSE, align 4
  %201 = load i32*, i32** %21, align 8
  %202 = call %struct.TYPE_10__* @svn_diff__diff(i32* %199, i32 1, i32 1, i32 %200, i32* %201)
  store %struct.TYPE_10__* %202, %struct.TYPE_10__** %17, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %205 = call i32 @adjust_diff(%struct.TYPE_10__* %203, %struct.TYPE_10__* %204)
  %206 = load i32*, i32** %21, align 8
  %207 = call i32 @svn_pool_clear(i32* %206)
  %208 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 3
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 3
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %22, align 4
  %218 = load i32, i32* %23, align 4
  %219 = load i32*, i32** %21, align 8
  %220 = call i32* @svn_diff__lcs(i32* %209, i32* %211, i32* %213, i32* %215, i32 %216, i32 %217, i32 %218, i32* %219)
  store i32* %220, i32** %15, align 8
  %221 = load i32*, i32** %15, align 8
  %222 = load i32, i32* @FALSE, align 4
  %223 = load i32*, i32** %21, align 8
  %224 = call %struct.TYPE_10__* @svn_diff__diff(i32* %221, i32 1, i32 1, i32 %222, i32* %223)
  store %struct.TYPE_10__* %224, %struct.TYPE_10__** %17, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %227 = call i32 @adjust_diff(%struct.TYPE_10__* %225, %struct.TYPE_10__* %226)
  %228 = load i32*, i32** %20, align 8
  %229 = call i32 @svn_pool_destroy(i32* %228)
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %230, %struct.TYPE_10__** %18, align 8
  br label %231

231:                                              ; preds = %248, %185
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %233 = icmp ne %struct.TYPE_10__* %232, null
  br i1 %233, label %234, label %252

234:                                              ; preds = %231
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @svn_diff__type_conflict, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %234
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %242 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 1
  %243 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 2
  %244 = load i32, i32* %11, align 4
  %245 = load i32*, i32** %8, align 8
  %246 = call i32 @svn_diff__resolve_conflict(%struct.TYPE_10__* %241, i32** %242, i32** %243, i32 %244, i32* %245)
  br label %247

247:                                              ; preds = %240, %234
  br label %248

248:                                              ; preds = %247
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  store %struct.TYPE_10__* %251, %struct.TYPE_10__** %18, align 8
  br label %231

252:                                              ; preds = %231
  %253 = load i32*, i32** %19, align 8
  %254 = call i32 @svn_pool_destroy(i32* %253)
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %256 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %255, %struct.TYPE_10__** %256, align 8
  %257 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %257
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_diff__tree_create(i32**, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_diff__get_tokens(i32**, i32*, i8*, %struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @svn_diff__get_node_count(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_diff__get_token_counts(i32*, i32, i32*) #1

declare dso_local i32* @svn_diff__lcs(i32*, i32*, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_diff__diff(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @adjust_diff(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_diff__resolve_conflict(%struct.TYPE_10__*, i32**, i32**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

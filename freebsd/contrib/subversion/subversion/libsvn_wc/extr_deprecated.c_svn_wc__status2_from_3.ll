; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc__status2_from_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc__status2_from_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_17__ = type { i64, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_20__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_node_unknown = common dso_local global i32 0, align 4
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i64 0, align 8
@svn_wc_status_added = common dso_local global i64 0, align 8
@svn_wc_status_deleted = common dso_local global i64 0, align 8
@svn_wc_status_replaced = common dso_local global i64 0, align 8
@svn_wc_status_obstructed = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc_status_missing = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @svn_wc__status2_from_3(%struct.TYPE_18__** %0, %struct.TYPE_17__* %1, %struct.TYPE_19__* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %20 = icmp eq %struct.TYPE_17__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %22, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %7, align 8
  br label %316

24:                                               ; preds = %6
  %25 = load i32*, i32** %12, align 8
  %26 = call %struct.TYPE_18__* @apr_pcalloc(i32* %25, i32 80)
  %27 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %24
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @FALSE, align 4
  %38 = load i32, i32* @svn_node_unknown, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call %struct.TYPE_20__* @svn_wc__get_entry(i32** %14, i32 %35, i8* %36, i32 %37, i32 %38, i32* %39, i32* %40)
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %15, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %43 = icmp ne %struct.TYPE_20__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SVN_ERR_NODE_UNEXPECTED_KIND, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %52 = call i32 @svn_error_clear(%struct.TYPE_20__* %51)
  br label %56

53:                                               ; preds = %44, %32
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %55 = call i32 @SVN_ERR(%struct.TYPE_20__* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %24
  %58 = load i32*, i32** %14, align 8
  %59 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 15
  store i32* %58, i32** %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 17
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 14
  store i32 %64, i32* %67, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 16
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @svn_lock_dup(i32 %70, i32* %71)
  %73 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 13
  store i32 %72, i32* %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 14
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %57
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 15
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 14
  %86 = load i64, i64* %85, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @svn_path_url_add_component2(i32 %83, i64 %86, i32* %87)
  %89 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 12
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %80, %57
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 11
  store i32 %95, i32* %98, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 12
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 10
  store i32 %101, i32* %104, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 9
  store i32 %107, i32* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 8
  store i32 %113, i32* %116, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %92
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = call %struct.TYPE_20__* @svn_wc__get_tree_conflict(i32** %16, %struct.TYPE_19__* %122, i8* %123, i32* %124, i32* %125)
  %127 = call i32 @SVN_ERR(%struct.TYPE_20__* %126)
  %128 = load i32*, i32** %16, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @svn_wc__cd2_to_cd(i32* %128, i32* %129)
  %131 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 7
  store i32 %130, i32* %133, align 8
  br label %134

134:                                              ; preds = %121, %92
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 6
  store i32 %137, i32* %140, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  store i64 %143, i64* %146, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 2
  store i64 %155, i64* %158, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 5
  store i32 %161, i32* %164, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 130
  br i1 %168, label %174, label %169

169:                                              ; preds = %134
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 131
  br i1 %173, label %174, label %182

174:                                              ; preds = %169, %134
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  store i64 %178, i64* %181, align 8
  br label %182

182:                                              ; preds = %174, %169
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 130
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 131
  br i1 %191, label %192, label %199

192:                                              ; preds = %187, %182
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  store i64 %195, i64* %198, align 8
  br label %199

199:                                              ; preds = %192, %187
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @svn_wc_status_added, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  store i32 129, i32* %208, align 8
  br label %209

209:                                              ; preds = %205, %199
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  switch i32 %212, label %221 [
    i32 129, label %213
    i32 128, label %213
    i32 130, label %213
    i32 131, label %220
  ]

213:                                              ; preds = %209, %209, %209
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 3
  store i32 %216, i32* %219, align 8
  br label %225

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %209, %220
  %222 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 3
  store i32 129, i32* %224, align 8
  br label %225

225:                                              ; preds = %221, %213
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  switch i32 %228, label %260 [
    i32 129, label %229
    i32 128, label %229
    i32 130, label %229
    i32 131, label %259
  ]

229:                                              ; preds = %225, %225, %225
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @svn_wc_status_added, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %254

235:                                              ; preds = %229
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @svn_wc_status_deleted, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %254

241:                                              ; preds = %235
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @svn_wc_status_replaced, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %241
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 4
  store i32 %250, i32* %253, align 4
  br label %258

254:                                              ; preds = %241, %235, %229
  %255 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 4
  store i32 129, i32* %257, align 4
  br label %258

258:                                              ; preds = %254, %247
  br label %264

259:                                              ; preds = %225
  br label %260

260:                                              ; preds = %225, %259
  %261 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 4
  store i32 129, i32* %263, align 4
  br label %264

264:                                              ; preds = %260, %258
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 7
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %314

269:                                              ; preds = %264
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 6
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %314

274:                                              ; preds = %269
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @svn_wc_status_obstructed, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %314

280:                                              ; preds = %274
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 5
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @svn_node_file, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %292, label %286

286:                                              ; preds = %280
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @svn_wc_status_missing, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %314

292:                                              ; preds = %286, %280
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i8*, i8** %11, align 8
  %297 = load i32*, i32** %13, align 8
  %298 = call %struct.TYPE_20__* @svn_wc__internal_conflicted_p(i64* %17, i64* %18, i32* null, i32 %295, i8* %296, i32* %297)
  %299 = call i32 @SVN_ERR(%struct.TYPE_20__* %298)
  %300 = load i64, i64* %17, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %292
  %303 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 0
  store i64 131, i64* %305, align 8
  br label %306

306:                                              ; preds = %302, %292
  %307 = load i64, i64* %18, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 1
  store i32 131, i32* %312, align 8
  br label %313

313:                                              ; preds = %309, %306
  br label %314

314:                                              ; preds = %313, %286, %274, %269, %264
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %315, %struct.TYPE_20__** %7, align 8
  br label %316

316:                                              ; preds = %314, %21
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  ret %struct.TYPE_20__* %317
}

declare dso_local %struct.TYPE_18__* @apr_pcalloc(i32*, i32) #1

declare dso_local %struct.TYPE_20__* @svn_wc__get_entry(i32**, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_20__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_20__*) #1

declare dso_local i32 @svn_lock_dup(i32, i32*) #1

declare dso_local i32 @svn_path_url_add_component2(i32, i64, i32*) #1

declare dso_local %struct.TYPE_20__* @svn_wc__get_tree_conflict(i32**, %struct.TYPE_19__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__cd2_to_cd(i32*, i32*) #1

declare dso_local %struct.TYPE_20__* @svn_wc__internal_conflicted_p(i64*, i64*, i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

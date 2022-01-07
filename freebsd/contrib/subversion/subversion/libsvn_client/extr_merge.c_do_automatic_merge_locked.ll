; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_do_automatic_merge_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_do_automatic_merge_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__*, %struct.TYPE_16__*, i64, %struct.TYPE_18__*, i64, i64, i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_18__* }

@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [106 x i8] c"The required merge is reintegrate-like, and the record-only option cannot be used with this kind of merge\00", align 1
@svn_depth_unknown = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [100 x i8] c"The required merge is reintegrate-like, and the depth option cannot be used with this kind of merge\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"The required merge is reintegrate-like, and the force_delete option cannot be used with this kind of merge\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_21__*, i8*, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*)* @do_automatic_merge_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_automatic_merge_locked(i32** %0, %struct.TYPE_21__* %1, i8* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_19__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_20__, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca %struct.TYPE_20__*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  store i32** %0, i32*** %14, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %15, align 8
  store i8* %2, i8** %16, align 8
  store i64 %3, i64* %17, align 8
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %27, align 8
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %28, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %12
  %47 = load i64, i64* %27, align 8
  %48 = icmp ne i64 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %46, %12
  %51 = phi i1 [ false, %12 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i64, i64* %27, align 8
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %57, %50
  %62 = phi i1 [ false, %50 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i64, i64* %27, align 8
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %68, %61
  %73 = phi i1 [ false, %61 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %23, align 8
  %76 = load i32*, i32** %25, align 8
  %77 = load i32*, i32** %25, align 8
  %78 = call i32* @open_target_wc(%struct.TYPE_19__** %26, i8* %41, i32 %52, i32 %63, i32 %74, i32* %75, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32* %78)
  %80 = load i64, i64* %27, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %184

82:                                               ; preds = %72
  store i32* null, i32** %31, align 8
  store i32* null, i32** %32, align 8
  store i32* null, i32** %33, align 8
  %83 = load i64, i64* %20, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %87 = call i32 @_(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0))
  %88 = call i32* @svn_error_create(i32 %86, i32* null, i32 %87)
  store i32* %88, i32** %13, align 8
  br label %249

89:                                               ; preds = %82
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* @svn_depth_unknown, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %95 = call i32 @_(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  %96 = call i32* @svn_error_create(i32 %94, i32* null, i32 %95)
  store i32* %96, i32** %13, align 8
  br label %249

97:                                               ; preds = %89
  %98 = load i64, i64* %19, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %102 = call i32 @_(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0))
  %103 = call i32* @svn_error_create(i32 %101, i32* null, i32 %102)
  store i32* %103, i32** %13, align 8
  br label %249

104:                                              ; preds = %97
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %23, align 8
  %114 = load i32*, i32** %25, align 8
  %115 = call i32* @ensure_ra_session_url(i32** %31, i32 %109, i32 %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32* %115)
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %23, align 8
  %126 = load i32*, i32** %25, align 8
  %127 = call i32* @ensure_ra_session_url(i32** %32, i32 %121, i32 %124, i32* %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32* %127)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %23, align 8
  %137 = load i32*, i32** %25, align 8
  %138 = call i32* @ensure_ra_session_url(i32** %33, i32 %132, i32 %135, i32* %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32* %138)
  %140 = load i32*, i32** %32, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %142, align 8
  %144 = load i32*, i32** %33, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %146 = load i32*, i32** %23, align 8
  %147 = load i32*, i32** %25, align 8
  %148 = load i32*, i32** %25, align 8
  %149 = call i32* @find_reintegrate_merge(%struct.TYPE_20__** %34, i32* null, i32* %140, %struct.TYPE_22__* %143, i32* %144, %struct.TYPE_19__* %145, i32* %146, i32* %147, i32* %148)
  %150 = call i32 @SVN_ERR(i32* %149)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  store %struct.TYPE_18__* %153, %struct.TYPE_18__** %154, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  store %struct.TYPE_22__* %157, %struct.TYPE_22__** %158, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  store i32 %164, i32* %165, align 8
  %166 = load i32**, i32*** %14, align 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %168 = load i32*, i32** %31, align 8
  %169 = load i32*, i32** %32, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = load i32, i32* @TRUE, align 4
  %174 = load i64, i64* %17, align 8
  %175 = load i64, i64* @FALSE, align 8
  %176 = load i64, i64* %19, align 8
  %177 = load i64, i64* %20, align 8
  %178 = load i64, i64* %21, align 8
  %179 = load i32*, i32** %22, align 8
  %180 = load i32*, i32** %23, align 8
  %181 = load i32*, i32** %24, align 8
  %182 = load i32*, i32** %25, align 8
  %183 = call i32* @merge_cousins_and_supplement_mergeinfo(i32** %166, i64* %28, %struct.TYPE_19__* %167, i32* %168, i32* %169, %struct.TYPE_20__* %30, %struct.TYPE_16__* %172, i32 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i32* %179, i32* %180, i32* %181, i32* %182)
  store i32* %183, i32** %29, align 8
  br label %238

184:                                              ; preds = %72
  store i32* null, i32** %36, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %23, align 8
  %194 = load i32*, i32** %25, align 8
  %195 = call i32* @ensure_ra_session_url(i32** %36, i32 %189, i32 %192, i32* %193, i32* %194)
  %196 = call i32 @SVN_ERR(i32* %195)
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %198, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @TRUE, align 4
  %211 = load i32*, i32** %25, align 8
  %212 = call i32 @svn_rangelist__initialize(i32 %204, i32 %209, i32 %210, i32* %211)
  %213 = load i32*, i32** %36, align 8
  %214 = load i32*, i32** %23, align 8
  %215 = load i32*, i32** %25, align 8
  %216 = load i32*, i32** %25, align 8
  %217 = call i32* @normalize_merge_sources_internal(i32** %35, %struct.TYPE_22__* %199, i32 %212, i32* %213, i32* %214, i32* %215, i32* %216)
  %218 = call i32 @SVN_ERR(i32* %217)
  %219 = load i32**, i32*** %14, align 8
  %220 = load i32*, i32** %35, align 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %222 = load i32*, i32** %36, align 8
  %223 = load i32, i32* @TRUE, align 4
  %224 = load i32, i32* @TRUE, align 4
  %225 = load i64, i64* @FALSE, align 8
  %226 = load i64, i64* %18, align 8
  %227 = load i64, i64* %19, align 8
  %228 = load i64, i64* %21, align 8
  %229 = load i64, i64* %20, align 8
  %230 = load i64, i64* @FALSE, align 8
  %231 = load i64, i64* @FALSE, align 8
  %232 = load i64, i64* %17, align 8
  %233 = load i32*, i32** %22, align 8
  %234 = load i32*, i32** %23, align 8
  %235 = load i32*, i32** %24, align 8
  %236 = load i32*, i32** %25, align 8
  %237 = call i32* @do_merge(i32* null, i32* null, i32** %219, i64* %28, i32* %220, %struct.TYPE_19__* %221, i32* %222, i32 %223, i32 %224, i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i32* null, i64 %230, i64 %231, i64 %232, i32* %233, i32* %234, i32* %235, i32* %236)
  store i32* %237, i32** %29, align 8
  br label %238

238:                                              ; preds = %184, %104
  %239 = load i64, i64* %28, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load i8*, i8** %16, align 8
  %243 = load i32*, i32** %25, align 8
  %244 = call i32 @svn_io_sleep_for_timestamps(i8* %242, i32* %243)
  br label %245

245:                                              ; preds = %241, %238
  %246 = load i32*, i32** %29, align 8
  %247 = call i32 @SVN_ERR(i32* %246)
  %248 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %248, i32** %13, align 8
  br label %249

249:                                              ; preds = %245, %100, %93, %85
  %250 = load i32*, i32** %13, align 8
  ret i32* %250
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @open_target_wc(%struct.TYPE_19__**, i8*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @ensure_ra_session_url(i32**, i32, i32, i32*, i32*) #1

declare dso_local i32* @find_reintegrate_merge(%struct.TYPE_20__**, i32*, i32*, %struct.TYPE_22__*, i32*, %struct.TYPE_19__*, i32*, i32*, i32*) #1

declare dso_local i32* @merge_cousins_and_supplement_mergeinfo(i32**, i64*, %struct.TYPE_19__*, i32*, i32*, %struct.TYPE_20__*, %struct.TYPE_16__*, i32, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @normalize_merge_sources_internal(i32**, %struct.TYPE_22__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_rangelist__initialize(i32, i32, i32, i32*) #1

declare dso_local i32* @do_merge(i32*, i32*, i32**, i64*, i32*, %struct.TYPE_19__*, i32*, i32, i32, i64, i64, i64, i64, i64, i32*, i64, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_stats_mutexes_reset_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_stats_mutexes_reset_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__*, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@config_stats = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ctl_mtx = common dso_local global i32 0, align 4
@have_background_thread = common dso_local global i64 0, align 8
@background_thread_lock = common dso_local global i32 0, align 4
@config_prof = common dso_local global i64 0, align 8
@opt_prof = common dso_local global i64 0, align 8
@bt2gctx_mtx = common dso_local global i32 0, align 4
@NBINS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)* @stats_mutexes_reset_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_mutexes_reset_ctl(i32* %0, i64* %1, i64 %2, i8* %3, i64* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %22 = load i32, i32* @config_stats, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOENT, align 4
  store i32 %25, i32* %8, align 4
  br label %230

26:                                               ; preds = %7
  %27 = load i32*, i32** %9, align 8
  %28 = call i32* @tsd_tsdn(i32* %27)
  store i32* %28, i32** %16, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %29, i32* @ctl_mtx)
  %31 = load i32*, i32** %16, align 8
  %32 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %31, i32* @ctl_mtx)
  %33 = load i32*, i32** %16, align 8
  %34 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %33, i32* @ctl_mtx)
  %35 = load i64, i64* @have_background_thread, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %38, i32* @background_thread_lock)
  %40 = load i32*, i32** %16, align 8
  %41 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %40, i32* @background_thread_lock)
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %42, i32* @background_thread_lock)
  br label %44

44:                                               ; preds = %37, %26
  %45 = load i64, i64* @config_prof, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i64, i64* @opt_prof, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32*, i32** %16, align 8
  %52 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %51, i32* @bt2gctx_mtx)
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %53, i32* @bt2gctx_mtx)
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %55, i32* @bt2gctx_mtx)
  br label %57

57:                                               ; preds = %50, %47, %44
  %58 = call i32 (...) @narenas_total_get()
  store i32 %58, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %59

59:                                               ; preds = %226, %57
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %229

63:                                               ; preds = %59
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call %struct.TYPE_17__* @arena_get(i32* %64, i32 %65, i32 0)
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %19, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %68 = icmp ne %struct.TYPE_17__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %226

70:                                               ; preds = %63
  %71 = load i32*, i32** %16, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 9
  %74 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %71, i32* %73)
  %75 = load i32*, i32** %16, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 9
  %78 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %75, i32* %77)
  %79 = load i32*, i32** %16, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 9
  %82 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %79, i32* %81)
  %83 = load i32*, i32** %16, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 8
  %86 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %83, i32* %85)
  %87 = load i32*, i32** %16, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 8
  %90 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %87, i32* %89)
  %91 = load i32*, i32** %16, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 8
  %94 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %91, i32* %93)
  %95 = load i32*, i32** %16, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %95, i32* %98)
  %100 = load i32*, i32** %16, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %100, i32* %103)
  %105 = load i32*, i32** %16, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %105, i32* %108)
  %110 = load i32*, i32** %16, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %110, i32* %113)
  %115 = load i32*, i32** %16, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %115, i32* %118)
  %120 = load i32*, i32** %16, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %120, i32* %123)
  %125 = load i32*, i32** %16, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %125, i32* %128)
  %130 = load i32*, i32** %16, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %130, i32* %133)
  %135 = load i32*, i32** %16, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %135, i32* %138)
  %140 = load i32*, i32** %16, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %140, i32* %143)
  %145 = load i32*, i32** %16, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %145, i32* %148)
  %150 = load i32*, i32** %16, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %150, i32* %153)
  %155 = load i32*, i32** %16, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %155, i32* %158)
  %160 = load i32*, i32** %16, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %160, i32* %163)
  %165 = load i32*, i32** %16, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %165, i32* %168)
  %170 = load i32*, i32** %16, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  %173 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %170, i32* %172)
  %174 = load i32*, i32** %16, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 2
  %177 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %174, i32* %176)
  %178 = load i32*, i32** %16, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  %181 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %178, i32* %180)
  %182 = load i32*, i32** %16, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %182, i32* %186)
  %188 = load i32*, i32** %16, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %188, i32* %192)
  %194 = load i32*, i32** %16, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %194, i32* %198)
  store i64 0, i64* %20, align 8
  br label %200

200:                                              ; preds = %222, %70
  %201 = load i64, i64* %20, align 8
  %202 = load i64, i64* @NBINS, align 8
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %225

204:                                              ; preds = %200
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = load i64, i64* %20, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i64 %208
  store %struct.TYPE_16__* %209, %struct.TYPE_16__** %21, align 8
  %210 = load i32*, i32** %16, align 8
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %210, i32* %212)
  %214 = load i32*, i32** %16, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %214, i32* %216)
  %218 = load i32*, i32** %16, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %218, i32* %220)
  br label %222

222:                                              ; preds = %204
  %223 = load i64, i64* %20, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %20, align 8
  br label %200

225:                                              ; preds = %200
  br label %226

226:                                              ; preds = %225, %69
  %227 = load i32, i32* %18, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %18, align 4
  br label %59

229:                                              ; preds = %59
  store i32 0, i32* %8, align 4
  br label %230

230:                                              ; preds = %229, %24
  %231 = load i32, i32* %8, align 4
  ret i32 %231
}

declare dso_local i32* @tsd_tsdn(i32*) #1

declare dso_local i32 @malloc_mutex_lock(...) #1

declare dso_local i32 @malloc_mutex_prof_data_reset(...) #1

declare dso_local i32 @malloc_mutex_unlock(...) #1

declare dso_local i32 @narenas_total_get(...) #1

declare dso_local %struct.TYPE_17__* @arena_get(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
